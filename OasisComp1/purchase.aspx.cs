using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OasisComp1
{
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            
          /*  decimal postagePackingCost = 3.95m;
            decimal Itemprice = 10.00m;
            int quantityofItems = int.Parse(ddlamount.SelectedValue);
            decimal subtotal = (quantityofItems * Itemprice);
            decimal total = subtotal + postagePackingCost;

            //Paypal Authentication
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //Get APIContext
            var apiContext = new APIContext(accessToken);

            var itemtype = new Item();
            itemtype.name = "Razer Naga 2014";
            itemtype.currency = "SGD";
            itemtype.price = Itemprice.ToString();
            itemtype.sku = "PEPCO5027m15"; //the stock code for this item
            //itemtype.quantity = ddlamount.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of items is ready";
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { itemtype }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://localhost:2506/Cancel.aspx";
            redirectUrls.return_url = "http://localhost:2506/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if(link.rel.ToLower().TrimEnd().Equals("approval_url"))
                {
                    //sends users to correct link
                    Response.Redirect(link.href);
                }
            }

    */
        }
    }
}