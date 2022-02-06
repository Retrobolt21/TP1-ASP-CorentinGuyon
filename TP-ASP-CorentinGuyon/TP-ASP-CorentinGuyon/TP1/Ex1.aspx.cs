using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_ASP_CorentinGuyon.TP1
{
    public partial class Ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void afficher_DateJour(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToString();
        }
        protected void Selection_Change(Object sender, EventArgs e)
        {
            DateChoisieCalendrier.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}