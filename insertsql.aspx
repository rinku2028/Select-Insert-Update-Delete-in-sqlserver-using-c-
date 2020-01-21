<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertsql.aspx.cs" Inherits="gridview.insertsql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
            <tr>
                <td class="auto-style3">Part Number</td>
               
                <td><asp:TextBox ID="txtpartnum" runat="server"></asp:TextBox></td>
               
            </tr>
            <tr>
                <td class="auto-style3">Particulars</td>
                <td>
                    <asp:TextBox ID="txtparticulars" runat="server"></asp:TextBox>
               
            </tr>
            <tr>
                <td class="auto-style3">Quantity</td>
                <td><asp:TextBox ID="txtqunatity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style3">Unit Price</td>
                <td><asp:TextBox ID="txtunitprice" runat="server" OnTextChanged="txtunitprice_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style3">Total Price</td>
                <td><asp:TextBox ID="txttotalprice" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style3">Order Date</td>
               <td class="auto-style1"><asp:TextBox ID="txtdate" runat="server" OnTextChanged="txtdate_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
              <td class="auto-style2"> <asp:Button ID="btnsave" runat="server" Text="SAVE" OnClick="btnsave_Click"/> <asp:Button ID="btnValidate" runat="server" Text="ValidateDate" OnClick="btnValidate_Click" />
            <tr>
                 <td class="auto-style3"><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
