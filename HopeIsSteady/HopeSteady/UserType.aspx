<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="UserType.aspx.cs" Inherits="HopeIsSteady.HopeSteady.UserType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Registered UserTypes </h1>
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
    <telerik:RadGrid ID="RadGrid1" runat="server"  OnItemCommand="RadGridview_ItemCommand" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True"  DataSourceID="dsUserType" ShowGroupPanel="True" CellSpacing="-1" GridLines="Both">
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
        <ClientSettings AllowDragToGroup="True">
            <Selecting AllowRowSelect="True" />
            <Scrolling AllowScroll="True" UseStaticHeaders="True" />
        </ClientSettings>

<MasterTableView DataSourceID="dsUserType" AutoGenerateColumns="False" DataKeyNames="UserTypeId">
    <Columns>
        <telerik:GridBoundColumn DataField="UserTypeId" DataType="System.Int32" FilterControlAltText="Filter UserTypeId column" HeaderText="UserTypeId" ReadOnly="True" SortExpression="UserTypeId" UniqueName="UserTypeId">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="UserTypeName" FilterControlAltText="Filter UserTypeName column" HeaderText="UserTypeName" SortExpression="UserTypeName" UniqueName="UserTypeName">
        </telerik:GridBoundColumn>
         <telerik:GridButtonColumn CommandName="Delete" Text="Delete" ConfirmText="Are you sure you want to delete the User Type" UniqueName="DeleteColumn" HeaderText=""> <HeaderStyle Width="70px" />
        </telerik:GridButtonColumn>
    </Columns>
        </MasterTableView>
        </telerik:RadGrid>
        <asp:SqlDataSource ID="dsUserType" runat="server" ConnectionString="<%$ ConnectionStrings:HopeSteadyConnectionString %>" SelectCommand="spUserTypeRead" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
