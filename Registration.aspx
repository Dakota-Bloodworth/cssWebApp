<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="cssWebApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 181px;
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
                <td class="auto-style2"><em><strong>Enter your First Name:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Last Name:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Age:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Email:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Phone Number:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>Enter your Gender:</strong></em></td>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rbtnGender" Text="Male" />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rbtnGender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><em><strong>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style3" OnClick="btnSubmit_Click" Text="Submit" Width="244px" />
                    </strong></em></td>
                <td><em><strong>
                    <asp:Button ID="btnNext" runat="server" CssClass="auto-style3" OnClick="btnNext_Click" Text="Next" Width="244px" />
                    </strong></em></td>
            </tr>
        </table>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
