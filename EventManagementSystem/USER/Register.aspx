<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EventManagementSystem.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #form1 {
            width: 500px;
            margin-right: 100px;
          
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="con"><img id="img1"src="/Images/icon1.png" width="200px"/></div>
    <div class="container">
        <table>
            <tr>
                <td>
                    <br />
                    <br/>
                </td>
            </tr>ot
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Font-Size="XX-Large" Font-Underline="True" ForeColor="#006699" Text="Register"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="userlabel" runat="server" Text="UserName" ForeColor="#006699"></asp:Label>
                    <br />
                    <br />
                </td>

                <td>
                    <asp:TextBox ID="UserRegister" runat="server" AutoPostBack="True" OnTextChanged="UserRegister_TextChanged" BackColor="#99CCFF" ></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserRegister" ErrorMessage="Enter User Name" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                      <asp:Label ID="MessageDuplicate" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                     <br />
                     <br />
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Label ID="passwordlabel" runat="server" Text="Password" ForeColor="#006699"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="PasswordRegister" runat="server" TextMode="Password" BackColor="#99CCFF"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Username and Password cannot be same" ControlToCompare="UserRegister" ControlToValidate="PasswordRegister" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Cpass" runat="server" Text="Confirm Password" ForeColor="#006699"></asp:Label>
                     <br />
                     <br />
                </td>
                <td>
                     <asp:TextBox ID="CpasswordRegister" runat="server" TextMode="Password" BackColor="#99CCFF"></asp:TextBox>
                     <br />
                     <br />
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordRegister" ControlToValidate="CpasswordRegister" ErrorMessage="Password do not match!..Retype the password" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                     <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" BackColor="#99CCFF" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#3333CC" />
                </td>
                <td>
                      <asp:Label ID="MessageCreated" runat="server" Visible="False" ForeColor="#006699"></asp:Label>
                </td>
            </tr>
        </table>
    
   </div>
</asp:Content>
