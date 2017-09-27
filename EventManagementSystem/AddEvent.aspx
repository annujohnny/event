<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="EventManagementSystem.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <div  style="width: 396px" >
  
       
    <asp:Label ID="Label1" runat="server" Text="ADD EVENT" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006699"></asp:Label>
        
        
            
        <br />
        <br />
        
        
            
<asp:Label ID="Label2" runat="server" Text="Event Name" ForeColor="#006699"></asp:Label>
             

                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             

                
<asp:TextBox ID="Eventname" runat="server" BackColor="#99CCFF" Font-Size="Medium"></asp:TextBox>
              
      
                 

             
          
        <br />
        <br />
              
      
                 

             
          
<asp:Label ID="Label3" runat="server" Text="Decsription" ForeColor="#006699"></asp:Label>
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
<asp:TextBox ID="Description" runat="server" TextMode="MultiLine" BackColor="#99CCFF" Font-Size="Medium" Height="24px" Width="146px"></asp:TextBox>


           
<br />
<br />
<asp:Label ID="Label4" runat="server" Text="Date" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="Date" runat="server" BackColor="#99CCFF" TextMode="DateTime" Font-Size="Medium"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label5" runat="server" Text="Venue" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="Venue" runat="server" BackColor="#99CCFF" Font-Size="Medium"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label6" runat="server" Text="Contact Person" ForeColor="#006699"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="Contact" runat="server" BackColor="#99CCFF" Font-Size="Medium"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="AddButton" runat="server" OnClick="Button1_Click" Text="Add Event" BackColor="#99CCFF" BorderColor="#006666" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#000099" />
&nbsp;<br />
<asp:Label ID="EventCreated"  runat="server" Visible="False" ForeColor="#006699" Font-Size="XX-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
</div>

</asp:Content>
