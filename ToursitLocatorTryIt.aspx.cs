using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TouristSpotLocator
{
    public partial class ToursitLocatorTryIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/FindNearestTouristSpots/";
            url += service1_input2.Text;
            url += "/";
            url += DropDownList1.SelectedValue;

            //service1_outputbox.Text = url.ToString();
            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {
                        //service1_outputbox.Text = "here";
                        service1_outputbox.Text += s.ToString();

                    }
            }

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void service2_btn(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/findNearestTransportStation/";
            url += service2_input1.Text;


            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {
                        
                        service2_outputbox.Text+=s.ToString();
                       
                    }
            }
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/CreateCreditCard/";
            url += creditcard_inputbox.Text;
            string output = "";


            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {

                        output += s.ToString();

                    }
            }
            creditcard_output.Text = output.Split(',')[0];

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/CheckValidTransaction?creditcardnumber=";
            url += TextBox1.Text;
            url+= "&amount=";
            url += Convert.ToDecimal(TextBox2.Text);

            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {

                        service2_output.Text += s.ToString();

                    }
            }

        }

        /*protected void Button23_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/DepositAmount?creditcardnumber=";
            url += service3_input1.Text;
            url += "&amount=";
            url += Convert.ToDouble(service3_input2.Text);

            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {

                        service3_output1.Text += s.ToString();

                    }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/checkBonusPoints/";
            url += service4_input.Text;



            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {

                        service4_output.Text += s.ToString();

                    }
            }
        }*/

        protected void Button5_Click(object sender, EventArgs e)
        {
            var url = "http://webstrar30.fulton.asu.edu/page3/Service1.svc/checkvalidcreditcard/";
            url += service5_input1.Text;



            System.Xml.XmlTextReader xmlreader = new System.Xml.XmlTextReader(url);

            while (xmlreader.Read())
            {
                if (xmlreader.NodeType == System.Xml.XmlNodeType.Text)

                    foreach (var s in xmlreader.Value)
                    {

                        service5_output.Text += s.ToString();

                    }
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void top10_btn_Click(object sender, EventArgs e)
        {
            RequiredServiceRef.requiredserClient serviceClient = new RequiredServiceRef.requiredserClient();
            top10_output.Text= string.Join(",", serviceClient.Top10Words(top10_input1.Text.ToString()));


        }

        protected void req_btn_Click(object sender, EventArgs e)
        {
            RequiredServiceRef.requiredser serviceclient = new RequiredServiceRef.requiredserClient();
            reqservice_2.Text = serviceclient.WordFilter(reqservice_1.Text);
        }
    }
}