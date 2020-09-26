using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class AddCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DetailsView1.FindControl("CalendarCheckIn").Visible = false;
                DetailsView1.FindControl("CalendarCheckOut").Visible = false;
            }


        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("FileUpload1") as FileUpload;
            e.Values["Picture"] = fu.FileBytes;
        }



        protected void CalendarCheckIn_SelectionChanged(object sender, EventArgs e)
        {
            TextBox t2 = DetailsView1.FindControl("TextBox2") as TextBox;
            Calendar c1 = DetailsView1.FindControl("CalendarCheckIn") as Calendar;
            t2.Text = c1.SelectedDate.ToShortDateString();
            DetailsView1.FindControl("CalendarCheckIn").Visible = false;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (DetailsView1.FindControl("CalendarCheckIn").Visible)
            {
                DetailsView1.FindControl("CalendarCheckIn").Visible = false;
            }
            else
            {
                DetailsView1.FindControl("CalendarCheckIn").Visible = true;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (DetailsView1.FindControl("CalendarCheckOut").Visible)
            {
                DetailsView1.FindControl("CalendarCheckOut").Visible = false;
            }
            else
            {
                DetailsView1.FindControl("CalendarCheckOut").Visible = true;
            }
        }

        protected void CalendarCheckOut_SelectionChanged(object sender, EventArgs e)
        {
            TextBox t7 = DetailsView1.FindControl("TextBox7") as TextBox;
            Calendar c2 = DetailsView1.FindControl("CalendarCheckOut") as Calendar;
            t7.Text = c2.SelectedDate.ToShortDateString();
            DetailsView1.FindControl("CalendarCheckOut").Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DetailsView1.FindControl("CalendarCheckIn").Visible = false;
            DetailsView1.FindControl("CalendarCheckOut").Visible = false;

        }
    }
}