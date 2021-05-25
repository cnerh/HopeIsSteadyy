<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="HopeIsSteady.HopeSteady.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Registered Users</h1>
    <telerik:RadAjaxManager ID="RadAjaxManager2" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="RadGrid1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
     </telerik:RadAjaxManager>
    <div class="login-html">
    <telerik:RadAjaxLoadingPanel   ID="RadAjaxLoadingPanel1" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadGrid ID="RadGrid1" runat="server"  OnItemCommand="RadGridview_ItemCommand" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"  DataSourceID="dsUser" ShowGroupPanel="True" CellSpacing="-1" GridLines="Both">
    <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
       <ClientSettings AllowDragToGroup="True">
            <Selecting AllowRowSelect="True" />
            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
        </ClientSettings>

        <MasterTableView AutoGenerateColumns="False" DataKeyNames="HopeSteadyUserId" DataSourceID="dsUser">
            <Columns>
                <telerik:GridBoundColumn DataField="UserFirstName" FilterControlAltText="Filter UserFirstName column" HeaderText="FirstName" SortExpression="UserFirstName" UniqueName="UserFirstName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="UserSurname" FilterControlAltText="Filter UserSurname column" HeaderText="Surname" SortExpression="UserSurname" UniqueName="UserSurname">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="UserType" FilterControlAltText="Filter UserType column" HeaderText="UserType" SortExpression="UserType" UniqueName="UserType">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="UserName" FilterControlAltText="Filter UserName column" HeaderText="UserName" SortExpression="UserName" UniqueName="UserName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="UserPassword" FilterControlAltText="Filter UserPassword column" HeaderText="Password" SortExpression="UserPassword" UniqueName="UserPassword">
                </telerik:GridBoundColumn>                           
                <telerik:GridBoundColumn DataField="DateCreated" DataType="System.DateTime" FilterControlAltText="Filter DateCreated column" HeaderText="DateCreated" SortExpression="DateCreated" UniqueName="DateCreated">
                </telerik:GridBoundColumn>
                 <telerik:GridButtonColumn CommandName="Delete" Text="Delete" ConfirmText="Are you sure you want to delete the User" UniqueName="DeleteColumn" HeaderText="">
                 <HeaderStyle Width="70px" />
                 </telerik:GridButtonColumn>                
            </Columns>
        </MasterTableView>
    </telerik:RadGrid>
  <asp:SqlDataSource ID="dsUser" runat="server" ConnectionString="<%$ ConnectionStrings:HopeSteadyConnectionString %>" SelectCommand="spUserRead" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
