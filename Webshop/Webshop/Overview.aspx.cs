using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dorflaedali.Models;
using Dorflaedali.Persistency;

namespace Webshop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductsPersistency persistency = new ProductsPersistency();
            IReadOnlyCollection<Product> products = persistency.GetAll();

            items.DataSource = products;
            items.DataBind();
        }
    }
}