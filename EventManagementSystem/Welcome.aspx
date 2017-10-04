<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="EventManagementSystem.Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
    function ConfirmUpdate()
    {
      var x = confirm("Are you sure you want to update?");
      if (x)
          return true;
      else
        return false;
    }
</script>
      <div id="coni" ><img id="img2"src="/Images/icon2.png" /></div>
     <div class="container">
      <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="#006699" Text="Upcomming Events"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BorderStyle="Solid" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006699" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" DataKeyNames="EventId" EnablePersistedSelection="True" > 
                <Columns>
                    <asp:BoundField DataField="EventId" HeaderText="EventId" InsertVisible="False" ReadOnly="True" SortExpression="EventId" Visible="False" />
                    <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName"/>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:TemplateField HeaderText="EventDate" SortExpression="EventDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EventDate","{0:yyyy/MM/dd}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EventDate", "{0:yyyy/MM/dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="EventVenue" HeaderText="EventVenue" SortExpression="EventVenue" />     
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="ConfirmUpdate()"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataRowStyle Height="0px" Width="0px" />
             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString4 %>" SelectCommand="SELECT [EventId], [EventName], [Description], [EventDate], [EventVenue], [Contact] FROM [EventDetails] WHERE (([UserId] = @UserId) AND ([EventDate] &gt;= @EventDate))">
                <SelectParameters>
                    <asp:SessionParameter Name="UserId" SessionField="id" Type="Int32" />
                    <asp:SessionParameter DbType="Date" Name="EventDate" SessionField="date" />
                </SelectParameters>
         </asp:SqlDataSource>
         
         <br />
         .<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
      <asp:Label ID="Label2" runat="server" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#006699" Text="Add New Event"></asp:Label>
&nbsp;
      <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageUrl="~/Images/addicon.png" PostBackUrl="~/AddEvent.aspx" Width="39px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
          <asp:Label ID="Label3" runat="server" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="#006699" Text="Events Done"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" BorderStyle="Solid" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006699" OnRowDeleting="GridView2_RowDeleting1"  DataKeyNames="EventId" EnablePersistedSelection="True"> 
                <Columns>
                    <asp:BoundField DataField="EventId" HeaderText="EventId" InsertVisible="False" ReadOnly="True" SortExpression="EventId" Visible="False" />
                    <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName"/>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" DataFormatString="{0:yyyy/MM/dd}" />
                    <asp:BoundField DataField="EventVenue" HeaderText="EventVenue" SortExpression="EventVenue" />     
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:CommandField ShowDeleteButton="True"  />
                </Columns>
                <EmptyDataRowStyle Height="0px" Width="0px" />
             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EventConnectionString4 %>" SelectCommand="SELECT [EventId], [EventName], [Description], [EventDate], [EventVenue], [Contact] FROM [EventDetails] WHERE (([UserId] = @UserId) AND ([EventDate] &lt; @EventDate))">
                <SelectParameters>
                    <asp:SessionParameter Name="UserId" SessionField="id" Type="Int32" />
                    <asp:SessionParameter DbType="Date" Name="EventDate" SessionField="date" />
                </SelectParameters>
         </asp:SqlDataSource>
         
         <br />
   </div>       
</asp:Content>
