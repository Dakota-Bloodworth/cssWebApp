<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Senddata.aspx.cs" Inherits="cssWebApp.Senddata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #000000;
        }
    </style>
</head>
<body style="height: 72px">
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><em><strong>Enter a color:</strong></em></span>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Color" />
    </form>
</body>
</html>
