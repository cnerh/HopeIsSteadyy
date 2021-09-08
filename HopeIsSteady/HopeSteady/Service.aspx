<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="HopeIsSteady.HopeSteady.Service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../scripts/scripts.js"></script>
        <link href="../styles/Style.css" rel="stylesheet" />
    <link href="../styles/ServiceListView.css" rel="stylesheet" />
    <link href="../styles/listView.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadFormDecorator RenderMode="Lightweight" ID="RadFormDecorator1" runat="server" DecoratedControls="All" DecorationZoneID="demo-container" EnableRoundedCorners="true" />
    <div class="demo-container size-wide" id="demo-container">
         <div class="demo-container">
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="ListViewPanel1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ListViewPanel1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="CheckBoxList1">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="CheckBoxList1"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ListViewPanel1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
            <ClientEvents OnRequestStart="RequestStart"></ClientEvents>
        </telerik:RadAjaxManager>
          <div class="login-html">
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
        </telerik:RadAjaxLoadingPanel>
       
        <table>
            <tr>
                <td>
                    <h1>Avalable Services</h1>
                          <div class="demoWrapper">
                               <asp:Panel ID="ListViewPanel1" runat="server">
                        <telerik:RadListView ID="RadListView1" DataSourceID="dsService" runat="server" RenderMode="Lightweight"
                            ItemPlaceholderID="CustomersContainer" DataKeyNames="ServiceId"  AllowPaging="true"
                    PageSize="2" >
                           
                            <LayoutTemplate>
                                <fieldset id="FiledSet1" class="listView2">
                                 
<%--                                    <div class="RadListView RadListView_<%# Container.Skin %>">--%>
                                        <asp:PlaceHolder ID="CustomersContainer" runat="server"></asp:PlaceHolder>
                           <div class="clear"></div>
                            <div class="pagerWrapper">
                                <div class="demoPager">
                                    <table class="commandTable">
                                        <tr>
                                           
                                           <%-- <td class="sortCell">
                                                <asp:Label ID="lblSort1" runat="server" AssociatedControlID="ddListSort" Text="Sort by:"
                                                    CssClass="sortLabel"></asp:Label>
                                                <telerik:RadComboBox RenderMode="Lightweight" ID="ddListSort" Width="185px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddListSort_SelectedIndexChanged" CausesValidation="false">
                                                    <Items>
                                                        <telerik:RadComboBoxItem Text="-Select field to sort-" Value=""></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="Company name" Value="CompanyName"></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="Contact name" Value="ContactName"></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="Title" Value="ContactTitle"></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="City" Value="City"></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="Country" Value="Country"></telerik:RadComboBoxItem>
                                                        <telerik:RadComboBoxItem Text="Clear sort" Value="ClearSort"></telerik:RadComboBoxItem>
                                                    </Items>
                                                </telerik:RadComboBox>
                                                <asp:RadioButtonList RepeatLayout="Flow" RepeatDirection="Horizontal" ID="rblSort"
                                                    runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblSort_SelectedIndexChanged">
                                                    <asp:ListItem Text="Ascending" Value="ASC" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text="Descending" Value="DESC"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>--%>
                                        </tr>
                                    </table>
                                </fieldset>
                            </LayoutTemplate>
                            <ItemTemplate>
                                
                                <!--The widths/heights of the fieldset/outer tables in the item/edit/insert templates should match to avoid wrapping or visual discrepancies
                             in the tiles layout-->
                                <fieldset  class="fieldset itemFieldset">
                                    <legend>  <%# Eval("ServiceName") %></legend>
                                    <table >
                                        <tr >
                                            
                                                        <td >
                                                            <telerik:RadBinaryImage ID="RadBinaryImage1" runat="server" AlternateText= '<%#Eval("ServiceName")%>'
                                                                ToolTip='<%#Eval("ServiceName")%>' Width="400px" Height="200px" ResizeMode="Fill" DataValue='<%# Eval("ServicePicture") == DBNull.Value? new System.Byte[0]: Eval("ServicePicture") %>'></telerik:RadBinaryImage>
                                                        </td>
                                                       
                                                    </tr>
                                        <tr class="rlvl">
                                            <td>
                                                <table class="itemTable">
                                                    <tr>
                                                        <td>
                                                       
                                                     
                                                            <table class="innerItemTable">
                                                                <tr>
                                                                    
                                                                    <td class="itemCellInfo">
                                                                        <telerik:RadLabel ID="RadLabel1" runat="server"  Width="370px" Height="90px" Rows="5" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"><%#Eval("ServiceDescription")%></telerik:RadLabel>      
                                                                       <%-- <telerik:RadTextbox ID="txtDescription" BorderStyle="None" runat="server" DisplayText='<%#Eval("ServiceDescription")%>' CssClass="input"  Width="390px" Height="90px" Rows="5" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"></telerik:RadTextbox><br />
                                                                       --%> 
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="Button1" runat="server" Text='<%#Eval("ServiceName")%>' />
                                                                    </td>
                                                                </tr>
                                                         
                                                                </tr>
                                                               
                                                            </table>
                                                        </td>
                                        </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            
                                        </tr>
                                    </table>
                                </fieldset>
                                   
                            </ItemTemplate>
                           
                          
                            <EmptyDataTemplate>
                                <fieldset class="noRecordsFieldset">
                                    <legend>Customers</legend>No records for customers available.
                                </fieldset>
                            </EmptyDataTemplate>
                        </telerik:RadListView>
                        <asp:SqlDataSource ID="dsService" runat="server" ConnectionString="<%$ ConnectionStrings:HopeSteadyConnectionString %>" SelectCommand="spServiceRead" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </asp:Panel>
                            </div>
                </td>
            </tr>
        </table>
               <telerik:RadDataPager RenderMode="Lightweight" ID="RadDataPager1" runat="server" PagedControlID="RadListView1" PageSize="3"
                                                    CssClass="pagerStyle">
                                                    <Fields>
                                                        <telerik:RadDataPagerButtonField FieldType="FirstPrev"></telerik:RadDataPagerButtonField>
                                                        <telerik:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="4"></telerik:RadDataPagerButtonField>
                                                        <telerik:RadDataPagerButtonField FieldType="NextLast"></telerik:RadDataPagerButtonField>
                                                        <telerik:RadDataPagerPageSizeField PageSizeComboWidth="60" PageSizeText="Page size: "></telerik:RadDataPagerPageSizeField>
                                                        <telerik:RadDataPagerGoToPageField CurrentPageText="Page: " TotalPageText="of" SubmitButtonText="Go"></telerik:RadDataPagerGoToPageField>
                                                    </Fields>
                                                </telerik:RadDataPager>
        <br />
       </div>
    </div>
    </div>
</asp:Content>

