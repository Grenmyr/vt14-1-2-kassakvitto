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
                Receip rec = new Receip(double.Parse(TextBox.Text));
                Total.Text = string.Format("Att betala {0:c}", rec.Total);
                MoneyOff.Text = string.Format("Rabatt{0:c}", rec.MoneyOff);
                DiscountRate.Text = string.Format("Rabattsats {0:p0}", rec.DiscountRate);
                Subtotal.Text = string.Format("Summa {0:c}", rec.Subtotal);
            }
        }
    }
}