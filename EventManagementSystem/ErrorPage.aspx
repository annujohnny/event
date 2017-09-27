<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="EventManagementSystem.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="ERROR"></asp:Label>
    </p>
        <p>
            &nbsp;</p>
        <p>
        Error Occured!!! To Rertry Click&nbsp; <asp:Button ID="Retry" runat="server" Text="Retry To Login" BackColor="#00CCFF" ForeColor="Blue" OnClick="Retry_Click" />
    </p>
    </div>
    </form>
</body>
</html>
