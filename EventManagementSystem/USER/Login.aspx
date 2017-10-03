<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EventManagementSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>  
    <div id="con"><img id="img1"src="/Images/icon1.png" width="200px"/></div>
    <div id="logindiv" class="container">
        <table>
            <tr>
                <td>
                    <br />
                    <br/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="XX-Large" Font-Underline="True" ForeColor="#006699" Text="LOGIN" Font-Names="Comic Sans MS"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="UserName" runat="server" Text="UserName" ForeColor="#006699"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                     <asp:TextBox ID="UserLogin" runat="server" ValidateRequestMode="Disabled" BackColor="#99CCFF" ></asp:TextBox>
                     <br />
                     <br />
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserLogin" ErrorMessage="Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     <br />
                     <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Password" runat="server" Text="Password" ForeColor="#006699"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="PasswordLogin" runat="server" TextMode="Password" BackColor="#99CCFF"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="PasswordLogin" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#99CCFF" BorderColor="#006666" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#000099" />
                </td>
                <td>
                    <asp:Label ID="Message" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>

        </div>
</asp:Content>

