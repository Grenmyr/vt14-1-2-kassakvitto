<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Davids Snygga Kalkylator
    </title>
    <link href="Content/site.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="SubmitButton">
        
        <h1>Kassakvitto</h1>
        <%-- Presentation av alla meddelanden --%>
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="errorMessage"/>

        <%-- Inmatningsfält --%>
        <div>  
            <asp:TextBox ID="TextBox" runat="server" ></asp:TextBox>
               <%-- 3 kontroller som skriver felmeddelande till validationSummary --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*"  ErrorMessage="Ni kan ej lämna fältet tomt" Display="Dynamic" ControlToValidate="TextBox"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" Text="*"  ErrorMessage="Köpesumma måste vara ett positivt tal." ControlToValidate="TextBox" Display="Dynamic" Operator="GreaterThan" ValueToCompare="0" Type="Double"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2"  runat="server" Text="*"  ErrorMessage="Kan ej tolkas som ett tal" Type="Double" ControlToValidate="TextBox" Display="Dynamic" Operator="DataTypeCheck"></asp:CompareValidator>
            <p><asp:Button ID="SubmitButton" runat="server" Text="Beräkna Rabbatt"  OnClick="SubmitButton_Click" /></p>
        </div>
        <asp:Panel ID="ReciepPanel" runat="server" Visible="false" CssClass="labelBox">
            <h1>Rabbatberäkning</h1>           
                <%--<p><asp:Label ID="Subtotal" runat="server" Text="Total" CssClass="labelMessage"></asp:Label></p>--%>
                <div ><asp:Literal ID="Subtotal" runat="server">Summa {0:c}</asp:Literal></div>
                <div><asp:Literal ID="DiscountRate" runat="server" Text="Rabattsats" >Rabbatsats {0:p0}</asp:Literal></div>
                <div ><asp:Literal ID="MoneyOff" runat="server" Text="Rabatt" >Rabatt {0:c}</asp:Literal></div>     
                <div><asp:Literal ID="Total" runat="server" Text="Att betala" >Att betala {0:c}</asp:Literal></div>
        </asp:Panel>
    </form>

</body>
</html>
