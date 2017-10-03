<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EventManagementSystem.Contact" %>
<%@ MasterType VirtualPath="~/Sites.Master" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="con"><img id="img4"src="/Images/email3.jpg" width="200px"/></div>
    <div class="container">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Font-Size="XX-Large" Font-Underline="True" ForeColor="#006699" Text="Contact"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="namelabel" runat="server" ForeColor="#006699" Text="Your Name:"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="Name" runat="server"  BackColor="#99CCFF" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="emaillabel" runat="server" ForeColor="#006699" Text="Your Email:"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="Email" runat="server"  BackColor="#99CCFF" Font-Size="Small" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Subjectlabel" runat="server" ForeColor="#006699" Text="Subject:"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="Subject" runat="server" BackColor="#99CCFF" TextMode="MultiLine" Font-Size="Medium" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="feedbacklabel" runat="server" ForeColor="#006699" Text="Query/Feedback:"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="Query" runat="server" BackColor="#99CCFF" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                     <asp:Button ID="Sendmail" runat="server" Text="Send Mail" BackColor="#99CCFF" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#3333CC" OnClick="Sendmail_Click" />
                </td>
                <td>
                      <asp:Label ID="MailSend" runat="server" Visible="False" ForeColor="#006699"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
