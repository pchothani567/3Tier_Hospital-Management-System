using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Xml.Linq;

namespace Project_Hospital
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateRssFeed();
            }

            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME USER " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }

        public void PopulateRssFeed()
        {
            // Use a working RSS feed URL from 
            string RssFeedUrl = "https://health.economictimes.indiatimes.com/rss/hospitals";
            List<Feeds> feeds = new List<Feeds>();

            try
            {
                XDocument xDoc = XDocument.Load(RssFeedUrl);

                var items = from x in xDoc.Descendants("item")
                            select new Feeds
                            {
                                Title = (string)x.Element("title"),
                                Link = (string)x.Element("link"),
                                PublishDate = (string)x.Element("pubDate"),
                                Description = (string)x.Element("description")
                            };

                feeds = items.ToList();

                gvRss.DataSource = feeds;
                gvRss.DataBind();
            }
            catch (Exception ex)
            {
                // Display a user-friendly error message
                lblError.Text = "Failed to load news. Please try again later.";

                // Optionally log the actual error (e.g., to file or event log)
                System.Diagnostics.Debug.WriteLine("RSS Feed Error: " + ex.Message);
            }
        }
    }

    public class Feeds
    {
        public string Title { get; set; }
        public string Link { get; set; }
        public string PublishDate { get; set; }
        public string Description { get; set; }
    }
}
