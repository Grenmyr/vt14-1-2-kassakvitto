using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kassakvitto.Model;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox.Focus();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Jobbar mot mina validatorer och endast om valid data körs det innanför if satsen. 
            if (IsValid) {       
                // skapar hantag mot mitt affärslager skickar in min indata, och efter det hämtar jag ut data ifrån mina egenskapers fält och presenterar dem.
                Receip reciep = new Receip(double.Parse(TextBox.Text));
                Total.Text = string.Format(Total.Text, reciep.Total);
                MoneyOff.Text = string.Format(MoneyOff.Text, reciep.MoneyOff);
                DiscountRate.Text = string.Format(DiscountRate.Text, reciep.DiscountRate);
                Subtotal.Text = string.Format(Subtotal.Text, reciep.Subtotal);
                // Hanerar min panel som kapslar in alla mina literals med data.
                ReciepPanel.Visible = true;
            }
        }
    }
}