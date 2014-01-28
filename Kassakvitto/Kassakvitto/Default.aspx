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
    <form id="form1" runat="server" defaultbutton="SubmitButton">
        <h1>Kassakvitto</h1>
        <div>
            <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="errorMessage" ErrorMessage="Du måste fylla i korrekt köpesumma" Display="Dynamic" ControlToValidate="TextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Köpesumma måste vara ett positivt tal." ControlToValidate="TextBox" Display="Dynamic" Operator="GreaterThan" ValueToCompare="0" Type="String"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Kan ej tolkas som ett tal" Type="Double" ControlToValidate="TextBox" Display="Dynamic" Operator="DataTypeCheck"></asp:CompareValidator>
            <p><asp:Button ID="SubmitButton" runat="server" Text="Beräkna Rabbatt" OnClick="SubmitButton_Click" /></p>
        </div>
        <asp:Panel ID="ReciepPanel" runat="server">
            <h1>RabbatBeräkning</h1>           
                <p><asp:Label ID="Subtotal" runat="server" Text="Total"></asp:Label></p>
                <p><asp:Label ID="DiscountRate" runat="server" Text="Rabattsats"></asp:Label></p>
                <p><asp:Label ID="MoneyOff" runat="server" Text="Rabatt"></asp:Label></p>        
                <p><asp:Label ID="Total" runat="server" Text="Att betala"></asp:Label></p>
        </asp:Panel>
    </form>

</body>
</html>
