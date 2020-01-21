<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simpleorder.aspx.cs" Inherits="gridview.simpleorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnview" runat="server" Text="View" OnClick="btnview_Click" />
        <asp:GridView ID="gdview" runat="server"></asp:GridView>
        <div>

        </div>
    </form>
</body>
</html>
