<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EventManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <%--<br />--%>
    <div id="logindiv" style="width: 349px">
<asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="XX-Large" Font-Underline="True" ForeColor="#006699" Text="LOGIN" Font-Names="Comic Sans MS"></asp:Label>
<br />
<br />
<br />
<br />

    <asp:Label ID="UserName" runat="server" Text="UserName" ForeColor="#006699"></asp:Label>
        &nbsp;&nbsp;
    <asp:TextBox ID="UserLogin" runat="server" ValidateRequestMode="Disabled" BackColor="#99CCFF" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserLogin" ErrorMessage="Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
    <br />
    <asp:Label ID="Password" runat="server" Text="Password" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="PasswordLogin" runat="server" TextMode="Password" BackColor="#99CCFF"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="PasswordLogin" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#99CCFF" BorderColor="#006666" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#000099" />
        <br />
        <asp:Label ID="Message" runat="server" Visible="False"></asp:Label>
    <br />
&nbsp;
        </div>
</asp:Content>
<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
