using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modalPopUpEXample1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPopUp_Click(object sender, EventArgs e)
        {
            string a = "Hola vengo desde una Base de Datos";

            txtNombres0.Text = a;

            btnPopUp_ModalPopupExtender.Show();
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            btnPopUp_ModalPopupExtender.Hide();
        }
    }
}
