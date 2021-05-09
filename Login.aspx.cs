using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Taikhoan(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (Text_tk.Text == "admin")
        {
            args.IsValid = true;
        }
    }

    protected void Matkhau(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (Text_mk.Text == "123456")
        {
            args.IsValid = true;
        }
    }
    protected void Btn_Login_Click(object sender, EventArgs e)
    {
        if (Text_tk.Text == "admin" && Text_mk.Text == "123456")
        {
            Response.Redirect("Trang Chủ.aspx?");
        }
    }
}