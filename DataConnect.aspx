<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataConnect.aspx.cs" Inherits="cssWebApp.DataConnect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 206px;
        }
        .auto-style2 {
            width: 249px;
        }
        .auto-style3 {
            font-style: italic;
            font-weight: bold;
        }
    </style>
</head>
<body style="height: 209px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><em><strong>Enter your Employee id:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Employee Name:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Designation:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Location:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Employee Salary:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style3" OnClick="btnSubmit_Click" Text="Submit" Width="244px" />
                    </strong></em></td>
                <td><em><strong>
                    <asp:Button ID="btnNext" runat="server" CssClass="auto-style3" OnClick="btnNext_Click" Text="Reset" Width="244px" />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="View" Width="244px" />
                    </strong></em></td>
            </tr>
        </table>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
