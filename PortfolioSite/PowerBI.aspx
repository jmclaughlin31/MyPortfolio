<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PowerBI.aspx.cs" Inherits="PortfolioSite.PowerBI" %>

<!DOCTYPE html>
<html>
	<head runat="server">
		<title>Data Visualisations by Jody Mc Laughlin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="~/scripts/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="~/scripts/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="~/scripts/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="~/scripts/css/ie9.css" /><![endif]-->
        <link href="~/scripts/powerbi.css" rel="stylesheet" />
   
    </head>
	<body>
        
		<div id="page-wrapper">
            
			<!-- Header -->
				<div id="header">

					<!-- Logo -->
                   
						<h1><a href="Default.aspx" id="logo">Data Visualisations <em>by Jody Mc Laughlin</em></a></h1>

					<!-- Nav -->
						<nav id="nav" class="">
							<ul>
								<li><a href="Home.aspx">Home</a></li>
								<li class="current"><a href="PowerBI.aspx">PowerBI</a></li>
								<li><a href="DataWarehousing.aspx">Data Warehousing</a></li>
								<li><a href="AppsAndCloud.aspx">App & Cloud Development</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
			<form runat="server" >	
           
			<!-- Highlights -->
            <section class="wrapper style2" style="padding-top:2em;">
                <div class="container">
                    <header>
                        <h2 style="text-align:center">Interact with Embedded PowerBI reports to get fasters Insights!</h2>

                    </header>
                    <div id="pbi-report" powerbi-access-token="<%= accessToken.ToString() %>" powerbi-embed-url="https://embedded.powerbi.com/appTokenReportEmbed?reportId=2e52bb57-3aa6-4224-b069-aea9e8414e7a" powerbi-type="report" style="height:85vh"></div>

                </div>
            </section>


            <section class="wrapper style1" style="padding-top:2em;">
                <div class="container">
                    <header>
                        <h2 style="text-align:center">Exploring PowerBI</h2>

                    </header>
                    <div class="row 200%">
                        <section class="6u 12u(narrower)">
                            <div class="box post">
                                <a href="#" class="image left"><img src="images/bi_power.png" alt="" /></a>
                                <div class="inner">
                                    <h3>Powering up with PowerBI</h3>
                                    <p>Looking to get the most out of your data? I can integrate the latest technologies to help your business exploit the value of its data.</p>
                                </div>
                                </div>
                        </section>
                        <section class="6u 12u(narrower)">
                            <div class="box">
                                <h3>Server Side Processing</h3>
                                <p>With my expertise in SAAS Deployments using Azure for App and SQL Server Deployments, I can build solutions to scale inline with your businesses requirements.</p>
                            </div>
                        </section>
                    </div>
                </div>
            </section>

            
            <!-- CTA -->
            <section id="cta" class="wrapper style3">
                <div class="container">
                    <header>
                        <h2>Get in touch today!</h2>
                        <a href="#" class="button">Click Here</a>
                    </header>
                </div>
            </section>

	
			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="3u 6u(narrower) 12u$(mobilep)">
								<h3>Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Mattis et quis rutrum</a></li>
									<li><a href="#">Suspendisse amet varius</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum accumsan dolor</a></li>
									<li><a href="#">Mattis rutrum accumsan</a></li>
									<li><a href="#">Suspendisse varius nibh</a></li>
									<li><a href="#">Sed et dapibus mattis</a></li>
								</ul>
							</section>
							<section class="3u 6u$(narrower) 12u$(mobilep)">
								<h3>More Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Duis neque nisi dapibus</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum accumsan sed</a></li>
									<li><a href="#">Mattis et sed accumsan</a></li>
									<li><a href="#">Duis neque nisi sed</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum amet varius</a></li>
								</ul>
							</section>
							<section class="6u 12u(narrower)">
								<h3>Get In Touch</h3>
								<form>
									<div class="row 50%">
										<div class="6u 12u(mobilep)">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="6u 12u(mobilep)">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<li><input type="submit" class="button alt" value="Send Message" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="https://github.com/jmclaughlin31" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="https://ie.linkedin.com/in/jody-mc-laughlin-67b67959" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Data Visualisations By Jody Mc Laughlin. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>
</form>
		</div>

		<!-- Scripts -->
			<script src="scripts/js/jquery.min.js"></script>
			<script src="scripts/js/jquery.dropotron.min.js"></script>
			<script src="scripts/js/skel.min.js"></script>
			<script src="scripts/js/util.js"></script>
			<!--[if lte IE 8]><script src="~/scripts/js/respond.min.js"></script><![endif]-->
			<script src="scripts/js/main.js"></script>
            

    <!-- Javascript Libs -->
    <script type="text/javascript" src="scripts/js/jquery.min.js"></script>
    <script type="text/javascript" src="scripts/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="scripts/js/Chart.min.js"></script>
    <script type="text/javascript" src="scripts/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="scripts/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="scripts/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="scripts/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="scripts/js/select2.full.min.js"></script>
    <script type="text/javascript" src="scripts/js/es6-promise.auto.min.js"></script>
    <script type="text/javascript" src="scripts/js/ace/ace.js"></script>
    <script type="text/javascript" src="scripts/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="scripts/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="/js/app.js"></script>
    <script src="scripts/powerbi.js"></script>

    
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

	</body>
</html>
