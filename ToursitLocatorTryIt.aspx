<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToursitLocatorTryIt.aspx.cs" Inherits="TouristSpotLocator.ToursitLocatorTryIt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            width: 719px;
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Label ID="Label1" runat="server" Text="Elective 1:: Tourist Spot Finder Service" Font-Bold="true" Font-Size="X-Large"
        CssClass="StrongText"></asp:Label>
             <br />
             <br />
             </div>
         
        <asp:Label ID="Label2" runat="server" Text="Service 1: Find Nearest TouristSpots" Font-Bold="true" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service helps you find tourist spots by providing a zipcode in string format and also providing interest field using a dropdown.Output 
         is a list of places,rating and their address seprated by ::.<br />
         <br />
         Service url: http://webstrar30.fulton.asu.edu/page3/Service1.svc/FindNearestTouristSpots/{zipcode}/{interest}<br />
        <br />
         Your ZipCode is :
        <asp:TextBox ID="service1_input2" runat="server" Width="423px"></asp:TextBox>
         <br />
         <br />
         Select Type of Toursit Spot:
         <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="222px">
             <asp:ListItem>amusement_park</asp:ListItem>
             <asp:ListItem>art_gallery</asp:ListItem>
             <asp:ListItem>casino</asp:ListItem>
             <asp:ListItem>movie_theater</asp:ListItem>
             <asp:ListItem>museum</asp:ListItem>
             <asp:ListItem>night_club</asp:ListItem>
             <asp:ListItem>park</asp:ListItem>
             <asp:ListItem>shopping_mall</asp:ListItem>
             <asp:ListItem>stadium</asp:ListItem>
             <asp:ListItem>zoo</asp:ListItem>
         </asp:DropDownList>
        <br />
        <br />
         <asp:Button ID="Button1" runat="server" Text="Find Spots" OnClick="Button1_Click" Width="109px" />
         <br />
         <br />
         Closest Spots:<br />
         <br />
         <asp:TextBox ID="service1_outputbox" runat="server" Height="29px" Width="805px" style="margin-left: 0px"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="Label56" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
         <br />
         Operation : List<string> FindNearestTouristSpots(string startingPoint,string zipcode,string interest);<br />
         Input Parameters: 3 String inputs,1 zipcode and one from dropdown&nbsp;&nbsp; <br />
        Output Return Type: List of places value : 1 output<br />
         <br />
         <br />
         <br />
        <div>
        </div>
         <br />
        <asp:Label ID="Label4" runat="server" Text="Service 2: Find Nearest Transport" Font-Bold="true" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service helps you find nearest road transport either bus or train stations by providing your zipcode.It provides a list of transport stations,ratings and their address.<br />
         <br />
         Service Url:&nbsp; http://webstrar30.fulton.asu.edu/page3/Service1.svc/findNearestTransportStation/{zipcode}<br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Enter location"></asp:Label>
&nbsp;:
        <asp:TextBox ID="service2_input1" runat="server" Height="19px" style="margin-top: 7px" Width="317px"></asp:TextBox>
&nbsp;&nbsp;
         <br />
         <br />
        <asp:Button ID="service_btn" runat="server" Height="37px" OnClick="service2_btn" Text="Find Transport" Width="154px" />
         <br />
         <br />
         Your Closest Transport Stations is at:<br />
         <br />
         <asp:TextBox ID="service2_outputbox" runat="server" Height="30px" Width="796px"></asp:TextBox>
        <br />
        <br />
        <br />

         <asp:Label ID="Label3" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
             <br />
         Operation : List<string> findNearestTransportStation(string storeName, string zipcode);<br />
        Input Parameters: String input : 1 inputs, one zipcode<br />
        Output Return Type: List of strings : 1 output<br />
         <br />
         <br />
         <br />
        <br />
        <br />
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Label ID="Label6" runat="server" Text="Elective 2: Bank Service Application" Font-Bold="true" Font-Size="X-Large"
        CssClass="StrongText"></asp:Label>
            <br />
            <br />
            </div>
        <div>
            <br />
        </div>
        <asp:Label ID="Label7" runat="server" Text="Service 1: Create CreditCard" Font-Bold="true" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service creates a new credit card for a user using his userId and stores it in it&#39;s system.<br />
         <br />
         Service Url :http://webstrar30.fulton.asu.edu/page3/Service1.svc/CreateCreditCard/{creditcardnumber}<br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Enter User ID ( 4 digits only )"></asp:Label>
&nbsp;:
        <asp:TextBox ID="creditcard_inputbox" runat="server" Height="19px" style="margin-top: 7px" Width="317px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button21_Click" Text="Get Card" Width="121px" />
        <br />
        <br />
        Your Credit Card is loaded with $1000 and bonus point of 100 .Card Number : <asp:TextBox ID="creditcard_output" runat="server" Width="423px"></asp:TextBox>
        <br />
        <br />
        <br />
               <asp:Label ID="Label13" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
        <br />
        Operation : string CreateCreditCard(string userid);<br />
        Input Parameters: String input : 1 input of length 4<br />
        Output Return Type: String value : 1 output<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                     <asp:Label ID="Label12" runat="server" Text="Service 2: Check Credit Card is Valid" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service is used to check if a credit card is valid and active.<br />
         <br />
         Service Url :http://webstrar30.fulton.asu.edu/page3/Service1.svc/checkvalidcreditcard/{creditcard}<br />
        <br />
        Enter Credit Card Number:
        <asp:TextBox ID="service5_input1" runat="server" Width="419px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" Text="Valid CreditCard " Width="175px" OnClick="Button5_Click" />
        <br />
        <br />
        Result:<asp:TextBox ID="service5_output" runat="server" Width="707px" style="margin-left: 21px"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label17" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
             <br />
        Operation :Boolean checkvalidcreditcard(string creditcard);<br />
        Input Parameters: String :Credit Card Number  : 1 parameters<br />
        Output Parameters: bool:True or False<br />
         <br />
         <asp:Label ID="Label57" runat="server"></asp:Label>
         <br />
         <br />
             <div style="margin-left: auto; margin-right: auto; text-align: center;">
             <br />
             <br />
             </div>
       <asp:Label ID="Label9" runat="server" Text="Service 3: Verify Valid Transaction" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service takes in credit card number checks its validity and verifies if the user has sufficient balance to proceed with this transaction.<br />
         <br />
         Service Url :http://webstrar30.fulton.asu.edu/page3/Service1.svc/CheckValidTransaction?creditcardnumber={creditcardnumber}&amp;amount={amount}<br />
        <br />
        Enter Credit Card Number:
        <asp:TextBox ID="TextBox1" runat="server" Width="419px"></asp:TextBox>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Enter Amount :<asp:TextBox ID="TextBox2" runat="server" Width="295px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Verify" Width="175px" OnClick="Button2_Click" />
        <br />
        <br />
        Result:<asp:TextBox ID="service2_output" runat="server" Width="707px" style="margin-left: 21px"></asp:TextBox>
        <br />
        <br />
          <asp:Label ID="Label14" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
             <br />
        Operation :bool CheckValidTransaction(string creditcardnumber, double amount);<br />
        Input Parameters: String :Credit Card Number , double Amount : 2 parameters<br />
        Output Parameters: Bool<br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Text="Required 1:: Required Services" Font-Bold="True" Font-Size="X-Large"
        CssClass="StrongText"></asp:Label>
        <br />
        <br />
        <br />
         <%--<asp:Label ID="Label10" runat="server" Text="Service 3: Deposit Amount" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service helps customers deposit amount to their account by providing credit card details and amount to be deposited.<br />
         <br />
         Service Url: http://webstrar30.fulton.asu.edu/page3/Service1.svc/DepositAmount?creditcardnumber={creditcardnumber}&amp;amount={amount}<br />
        <br />
        Enter Credit Card Number:
        <asp:TextBox ID="service3_input1" runat="server" Width="419px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Enter Amount :<asp:TextBox ID="service3_input2" runat="server"  Width="295px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Deposit" Width="175px" OnClick="Button23_Click" />
        <br />
        <br />
        Your current Balance is:<asp:TextBox ID="service3_output1" runat="server" Width="707px" style="margin-left: 21px"></asp:TextBox>
        <br />
        <br />
          <asp:Label ID="Label15" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
             <br />
        Operation :double DepositAmount(string creditcardnumber, double amount);<br />
        Input Parameters: String :Credit Card Number , double Amount : 2 parameters<br />
        Output Parameters: double :Current balance<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Service 4: Check Bonus Points" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service helps to retrieve bonus points for a user by taking his credit card details.For new users the deafult value is 100.<br />
         <br />
         Service Url: http://webstrar30.fulton.asu.edu/page3/Service1.svc/checkBonusPoints/{creditcardnumber}<br />
        <br />
        Enter Credit Card Number:
        <asp:TextBox ID="service4_input" runat="server" Width="419px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Check Bonus" Width="175px" OnClick="Button4_Click" />
        <br />
        <br />
        Your current Bonus is:<asp:TextBox ID="service4_output" runat="server" Width="707px" style="margin-left: 21px"></asp:TextBox>
        <br />
        <br />
          <asp:Label ID="Label16" runat="server" Text="Functional Parameters:" Font-Bold="true" Font-Size="Medium"
        CssClass="StrongText"></asp:Label>
             <br />
        Operation :double checkBonusPoints(string creditcardnumber);<br />
        Input Parameters: String :Credit Card Number  : 1 parameters<br />
        Output Parameters: double :Current Bonus<br />
        <br />
        <br />
        <br />
        <br />
        <br/>
        <br/>--%>

         
        <asp:Label ID="Label19" runat="server" Text="Service 1: Top 10 words in Web Content" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        This service helps you to find top 10 repeated words in a given web page by omitting all tags and attribute values.<br />
         <br />
         Service Url: http://webstrar30.fulton.asu.edu/page4/requiredser.svc<br />
        <br />
         Enter Url :
        <asp:TextBox ID="top10_input1" runat="server" Width="423px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="top10_btn" runat="server" OnClick="top10_btn_Click" Text="Find 10 words" />
         <br />
         <br />
         Result :<asp:TextBox ID="top10_output" runat="server" Width="933px"></asp:TextBox>
         <br />
         <br />
         Functional Parameters:<br />
         Opearation: string[] Top10Words(string url);<br />
         Input : String - a url<br />
         Output: A list of 10 strings :: words<br />
         <br />
         <br />
         <br />
             <asp:Label ID="Label20" runat="server" Text="Service 2: Remove Stopping words from string" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
         This service helps you to remove stop words that are predefined from a given string and outputs another string without stop words.<br />
         <br />
         Service Url : http://webstrar30.fulton.asu.edu/page4/requiredser.svc<br />
        <br />
         Enter Url :
        <asp:TextBox ID="reqservice_1" runat="server" Width="423px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="reqservice2_btn" runat="server" OnClick="req_btn_Click" Text="Get String" />
         <br />
         <br />
         Result :<asp:TextBox ID="reqservice_2" runat="server" Width="933px"></asp:TextBox>
         <br />
         <br />
         Functional Parameters:<br />
         Operation: string WordFilter(string str);<br />
         Input: String separated by space.<br />
         Output: A string without stop words<br />
    </form>
</body>
</html>
