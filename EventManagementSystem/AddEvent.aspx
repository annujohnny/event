<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="EventManagementSystem.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>  
     <div id="con"><img id="img1"src="/Images/icon4.png" /></div>
    <div class="container"  >
        <br />
     <table>
         <tr>
             <td> 
                  <asp:Label ID="Label1" runat="server" Text="ADD EVENT" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006699"></asp:Label>
                  <br />
                  <br />
            </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label2" runat="server" Text="Event Name" ForeColor="#006699"></asp:Label>
                 <br />
                 <br />
             </td>
             <td>
                 <asp:TextBox ID="Eventname" runat="server" BackColor="#99CCFF" Font-Size="Medium" Width="200px"></asp:TextBox>
                 <br />
                 <br />
             </td>
             <td>
                  <asp:Label ID="Emptymessage" runat="server" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006699" Visible="False"></asp:Label>
                  <br />
                  <br />
            </td>

          </tr>
         <tr>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Decsription" ForeColor="#006699"></asp:Label>
                 <br />
                 <br />
             </td>
             <td>
                 

                 <asp:TextBox ID="Description" runat="server" BackColor="#99CCFF" TextMode="MultiLine" Font-Size="Medium" Width="200px" ></asp:TextBox>
                 <br />
                 <br />
                 

             </td>
         
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label4" runat="server" Text="Date" ForeColor="#006699"></asp:Label>
                 <br />
                 <br />
             </td>
             <td>
                 <asp:TextBox ID="Date" runat="server" BackColor="#99CCFF" TextMode="Date"  Width="200px"></asp:TextBox>
                 <br />
                 <br />
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="Venue" ForeColor="#006699"></asp:Label>
                 <br />
                 <br />
             </td>
             <td>
                 <asp:TextBox ID="Venue" runat="server" BackColor="#99CCFF" Font-Size="Medium" Width="200px"></asp:TextBox>
                 <br />
                 <br />
             </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label6" runat="server" Text="Contact Person" ForeColor="#006699"></asp:Label>
                 <br />
                 <br />
             </td>
             <td>
                 <asp:TextBox ID="Contact" runat="server" BackColor="#99CCFF" Font-Size="Medium" Width="200px"></asp:TextBox>
                 <br />
                 <br />
             </td>
         </tr>
         <tr>
             <td>
                  &nbsp;

             </td>
             <td>
                 <asp:Button ID="AddButton" runat="server" OnClick="Button1_Click" Text="Add Event" BackColor="#99CCFF" BorderColor="#006666" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#000099" />
             </td>
             <td>
                 <asp:Label ID="EventCreated"  runat="server" Visible="False" ForeColor="#006699" Font-Size="XX-Large"></asp:Label>
             </td>
             
         </tr>
         

     </table>
       
   </div>

</asp:Content>
