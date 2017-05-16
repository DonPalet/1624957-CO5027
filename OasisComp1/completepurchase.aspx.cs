using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OasisComp1
{
    public partial class completepurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                //create payment object
                var payment = new Payment()
                {
                    id = paymentId
                };
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };

                //execute payment
                var executedPayment = payment.Execute(apiContext, paymentExecution);

                //inform user
                litInformation.Text = "<p> Order has completed </p>";
                btnCPurchase.Visible = false;
            }

            


        }
    }
}