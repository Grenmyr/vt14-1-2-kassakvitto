<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Min Snygga Kalkylator
    </title>
    <link href="Content/site.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Kassakvitto</h1>
        <div>
            <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="errorMessage" ErrorMessage="Du måste fylla i korrekt köpesumma" Display="Dynamic" ControlToValidate="TextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Köpesumma måste vara ett positivt tal." ControlToValidate="TextBox" Display="Dynamic"></asp:CompareValidator>
            <p><asp:Button ID="SubmitButton" runat="server" Text="Beräkna Rabbatt" OnClick="SubmitButton_Click" /></p>
        </div>
        <asp:Panel ID="ReciepPanel" runat="server">
            <h1>Rabbat Beräkning</h1>           
                <p><asp:Label ID="PreDiscountLabel" runat="server" Text="Total"></asp:Label></p>
                <p><asp:Label ID="DiscountLabel" runat="server" Text="Rabattsats"></asp:Label></p>
                <p><asp:Label ID="DiscountSumLabel" runat="server" Text="Rabatt"></asp:Label></p>        
                <p><asp:Label ID="NewSumLabel" runat="server" Text="Att betala"></asp:Label></p>
        </asp:Panel>
    </form>

</body>
</html>
