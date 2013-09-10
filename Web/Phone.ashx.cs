using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web
{
    /// <summary>
    /// Phone 的摘要说明
    /// </summary>
    public class Phone : IHttpHandler
    {
        private class PhoneItem
        {
            public long id { get; set; }
            public string name { get; set; }
            public string snippet { get; set; }
            public int age { get; set; }
            public string imageUrl { get { return "Images/img.jpg"; } }
            public bool stopProduction { get; set; }
            public DateTime date { get { return DateTime.Now; } }
        }

        public void ProcessRequest(HttpContext context)
        {
            IList<PhoneItem> list = new List<PhoneItem> { 
                new PhoneItem() { id = 1, name = "From JSON Nexus S", snippet = "Fast just got faster with Nexus S.", age = 0, stopProduction = false }, 
                new PhoneItem() { id = 2, name = "From JSON Motorola XOOM™ with Wi-Fi", snippet = "The Next, Next Generation tablet.", age = 1, stopProduction = true }, 
                new PhoneItem() { id = 3, name = "From JSON MOTOROLA XOOM™", snippet = "The Next, Next Generation tablet.", age = 2, stopProduction = true },
                new PhoneItem() { id = 4, name = "Motorola DEFY\u2122 with MOTOBLUR\u2122", snippet = "Motorola DEFY\u2122 with MOTOBLUR\u2122", age = 3, stopProduction = true }
            };

            string json = string.Empty;
            System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();

            string strid = context.Request["id"];
            long id = 0;
            if (!string.IsNullOrEmpty(strid) && long.TryParse(strid, out id))
            {
                json = jss.Serialize(list.Where(x => x.id == id).FirstOrDefault());
            }
            else
            {
                json = jss.Serialize(list);
            }

            context.Response.ContentType = "application/json";
            context.Response.Write(json);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}