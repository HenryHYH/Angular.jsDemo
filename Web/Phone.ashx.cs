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
            public string name { get; set; }
            public string snippet { get; set; }
            public int age { get; set; }
            public string imageUrl { get { return "Images/img.jpg"; } }
        }

        public void ProcessRequest(HttpContext context)
        {
            IList<PhoneItem> list = new List<PhoneItem> { 
                new PhoneItem() { name = "From JSON Nexus S", snippet = "Fast just got faster with Nexus S.", age = 0 }, 
                new PhoneItem() { name = "From JSON Motorola XOOM™ with Wi-Fi", snippet = "The Next, Next Generation tablet.", age = 1 }, 
                new PhoneItem() { name = "From JSON MOTOROLA XOOM™", snippet = "The Next, Next Generation tablet.", age = 2 },
                new PhoneItem() { name = "Motorola DEFY\u2122 with MOTOBLUR\u2122", snippet = "Motorola DEFY\u2122 with MOTOBLUR\u2122", age = 3 }
            };

            System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();

            context.Response.ContentType = "application/json";
            context.Response.Write(jss.Serialize(list));
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