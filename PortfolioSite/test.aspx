<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="PortfolioSite.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="/Content/powerbi.css" rel="stylesheet" />
    <link href="/Content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="pbi-report" powerbi-access-token="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2ZXIiOiIwLjIuMCIsInR5cGUiOiJlbWJlZCIsIndjbiI6Ik5vcnRod2luZHNQb3dlckJJIiwid2lkIjoiNTM1YjI0M2YtNGVkOS00OGQ5LWExYzctYTc2N2IwMDQ2ZDVlIiwicmlkIjoiMmU1MmJiNTctM2FhNi00MjI0LWIwNjktYWVhOWU4NDE0ZTdhIiwiaXNzIjoiUG93ZXJCSVNESyIsImF1ZCI6Imh0dHBzOi8vYW5hbHlzaXMud2luZG93cy5uZXQvcG93ZXJiaS9hcGkiLCJleHAiOjE0ODY1NjEyMDYsIm5iZiI6MTQ4NjU1NzYwNn0.5Sv27YZVu_CxbdUkwWypQREttSLyRaZ1UL5R9t1g8Fo" powerbi-embed-url="https://embedded.powerbi.com/appTokenReportEmbed?reportId=2e52bb57-3aa6-4224-b069-aea9e8414e7a" powerbi-type="report" style="height:85vh"></div>
    </form>

    <!-- Javascript Libs -->
    <script type="text/javascript" src="/lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="/lib/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="/lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="/lib/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/lib/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="/lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="/lib/js/es6-promise.auto.min.js"></script>
    <script type="text/javascript" src="/lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="/lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="/lib/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="/js/app.js"></script>
    <script src="/Scripts/powerbi.js"></script>
    
    <script>
        $(function () {
            // For complete list of embed configuration see the following wiki page
            // https://github.com/Microsoft/PowerBI-JavaScript/wiki/Embed-Configuration-Details
            var reportConfig = {
                settings: {
                    filterPaneEnabled: false
                }
            };
            var reportElement = document.getElementById('pbi-report');
            var pageName = document.getElementById('page-name');

            // Embed report
            // https://microsoft.github.io/PowerBI-JavaScript/classes/_src_service_.service.html#embed
            var report = powerbi.embed(reportElement, reportConfig);

            var pages = [];
            var pageIndex = 0;
            var currentPage = null;

            // For a complete guide to event handling see the following wiki page
            // https://github.com/Microsoft/PowerBI-JavaScript/wiki/Handling-Events
            report.on('loaded',
                function () {
                    // Get report pages
                    // https://microsoft.github.io/PowerBI-JavaScript/classes/_src_report_.report.html#getpages
                    report.getPages()
                        .then(function (reportPages) {
                            pages = reportPages;
                        });
                });

            // Handling pageChanged event
            // https://microsoft.github.io/PowerBI-JavaScript/classes/_src_report_.report.html#on
            report.on('pageChanged',
                function (e) {
                    currentPage = e.detail.newPage;
                    pageName.innerText = e.detail.newPage.displayName;

                    if (pages.length === 0) {
                        return;
                    }

                    pageIndex = pages.findIndex(function (el) {
                        return el.name === e.detail.newPage.name;
                    });
                });

            // For a complete guide to page navigation see the following wiki page
            // https://github.com/Microsoft/PowerBI-JavaScript/wiki/Page-Navigation
            function changePage(direction) {
                var nextPageIndex = pageIndex + direction;
                if (nextPageIndex < 0) nextPageIndex = pages.length - 1;
                if (nextPageIndex >= pages.length) nextPageIndex = 0;

                pages[nextPageIndex].setActive();
            }

            // For a complete guide to setting filters see the following wiki page
            // https://github.com/Microsoft/PowerBI-JavaScript/wiki/Filters
            function addFilter() {
                var target = $('#filter-target').val();
                var table = $('#filter-table').val();
                var column = $('#filter-column').val();
                var value = $('#filter-value').val();

                var basicFilter = {
                    $schema: "http://powerbi.com/product/schema#basic",
                    target: {
                        table: table,
                        column: column
                    },
                    operator: 'In',
                    values: [value]
                };

                var filterTarget = target === 'page' ? currentPage : report;
                // Get existing filters and append a new filter
                // https://microsoft.github.io/PowerBI-JavaScript/interfaces/_src_ifilterable_.ifilterable.html#getfilters
                filterTarget.getFilters().then(function (allTargetFilters) {
                    allTargetFilters.push(basicFilter);

                    // Set filters
                    // https://microsoft.github.io/PowerBI-JavaScript/interfaces/_src_ifilterable_.ifilterable.html#setfilters
                    filterTarget.setFilters(allTargetFilters);
                });


                $('#filter-form')[0].reset();
            }

            function clearFilters() {
                // Remove report filters
                // https://microsoft.github.io/PowerBI-JavaScript/classes/_src_report_.report.html#removefilters
                report.removeFilters();
                pages.forEach(function (page) {
                    // Remove page filters
                    // https://microsoft.github.io/PowerBI-JavaScript/classes/_src_page_.page.html#removefilters
                    page.removeFilters();
                });
            }

            // For a full list of configurable settings see the following wiki page
            // https://github.com/Microsoft/PowerBI-JavaScript/wiki/Settings
            function updateSetting(e, settingName) {
                var settings = {};
                settings[settingName] = e.target.checked;
                report.updateSettings(settings);
            }

            $('#pbi-prev-page').on('click', function () { changePage(-1); });
            $('#pbi-next-page').on('click', function () { changePage(1); });

            $('#setting-shownav').on('change', function (e) { updateSetting(e, 'navContentPaneEnabled'); });
            $('#setting-showfilterpane').on('change', function (e) { updateSetting(e, 'filterPaneEnabled'); });

            $('#filter-add').on('click', function () { addFilter(); });
            $('#filter-clear').on('click', function () { clearFilters(); });
        });
    </script>


<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"a15620a998484ff2a3ad2f7615b0d1dd"}
</script>
<script type="text/javascript" src="http://localhost:31648/2311ee8bf2b54f06ad575a521716b338/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>
