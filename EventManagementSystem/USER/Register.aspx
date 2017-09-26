<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EventManagementSystem.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            width: 500px;
            margin-right: 100px;
            /*width: 1130px;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" Font-Underline="True" ForeColor="#006699" Text="Register"></asp:Label>
</p>
        <p>
    <asp:Label ID="userlabel" runat="server" Text="UserName" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="UserRegister" runat="server" AutoPostBack="True" OnTextChanged="UserRegister_TextChanged" BackColor="#99CCFF" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserRegister" ErrorMessage="Enter User Name" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>

        <asp:Label ID="MessageDuplicate" runat="server" ForeColor="Red" Visible="False"></asp:Label>
</p>
        <p>
    <asp:Label ID="passwordlabel" runat="server" Text="Password" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="PasswordRegister" runat="server" TextMode="Password" BackColor="#99CCFF"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Cpass" runat="server" Text="Confirm Password" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="CpasswordRegister" runat="server" TextMode="Password" ValidationGroup="pass" BackColor="#99CCFF"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordRegister" ControlToValidate="CpasswordRegister" ErrorMessage="Password do not match!..Retype the password" ValidationGroup="pass" ForeColor="Red"></asp:CompareValidator>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" BackColor="#99CCFF" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#3333CC" />
&nbsp;</p>
    <p>
        <asp:Label ID="MessageCreated" runat="server" Visible="False"></asp:Label>
</p>
</form>
    <br />
</asp:Content>
