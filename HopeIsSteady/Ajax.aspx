<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="HopeIsSteady.Ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--<link href="styles/ServiceListView.css" rel="stylesheet" />--%>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <div class="demo-container size-medium">
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="Panel1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="Panel1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                         <telerik:AjaxUpdatedControl ControlID="ConfigurationPanel1" LoadingPanelID="RadAjaxLoadingPanel2"></telerik:AjaxUpdatedControl>
 
                        </UpdatedControls>
                </telerik:AjaxSetting>
              
            </AjaxSettings>
        </telerik:RadAjaxManager>
 
        <asp:Panel ID="Panel1" runat="server" Height="380px" CssClass="background1">
            <telerik:RadButton RenderMode="Lightweight" ID="Button2" runat="server" Text="Click to see the loading image" OnClick="Button2_Click"></telerik:RadButton>            
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceId" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="ServiceId" HeaderText="ServiceId" InsertVisible="False" ReadOnly="True" SortExpression="ServiceId" />
                     <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                 </Columns>
             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HopeSteadyConnectionString %>" SelectCommand="spServiceRead" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </asp:Panel>    
        
         
         <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
            </telerik:RadAjaxLoadingPanel>
         <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel2" runat="server" Transparency="70">
              
        </telerik:RadAjaxLoadingPanel>
    </div>
   
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
