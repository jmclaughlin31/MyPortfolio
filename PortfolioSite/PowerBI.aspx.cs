
using System;
using System.Configuration;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.PowerBI.Api.V1;
using Microsoft.PowerBI.Security;
using Microsoft.Rest;

namespace PortfolioSite
{
    public partial class PowerBI : System.Web.UI.Page
    {
        private readonly string workspaceCollection = ConfigurationManager.AppSettings["powerbi:WorkspaceCollection"];
        private readonly string workspaceId = ConfigurationManager.AppSettings["powerbi:WorkspaceId"];
        private readonly string reportId = ConfigurationManager.AppSettings["powerbi:ReportID"];
        private readonly string AccessKey = ConfigurationManager.AppSettings["powerbi:AccessKey"];
        private readonly string apiUrl = ConfigurationManager.AppSettings["powerbi:ApiUrl"];

        public string accessToken { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
    
            var embedToken = PowerBIToken.CreateReportEmbedToken(this.workspaceCollection, this.workspaceId, reportId.ToString());
            accessToken = embedToken.Generate(this.AccessKey);
           
        }

    }        
    
}
