<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="HopeSteady.HopeSteady.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script src="../scripts/scripts.js"></script>
        <link href="../styles/Style.css" rel="stylesheet" />
    <link href="../styles/ServiceListView.css" rel="stylesheet" />
    <link href="../styles/listView.css" rel="stylesheet" />
 <style>
    img {
      display: block;
      margin-left: auto;
      margin-right: auto;
       max-width: initial; 
        max-width: 175px; overflow: hidden;
    }
   
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<img src="../images/welcome-back-butterflies.gif" />--%>
<img src="../images/welcome.png" />
    <telerik:RadFormDecorator RenderMode="Lightweight" ID="RadFormDecorator1" runat="server" DecoratedControls="All" DecorationZoneID="demo-container" EnableRoundedCorners="true" />
     <div class="demo-container size-wide" id="demo-container">
         
  <div class="demo-container">
      <div class="login-html">
          
<div class="demoWrapper">
    
           <telerik:RadListView ID="RadListView1" runat="server" RenderMode="Lightweight"  OnNeedDataSource="DataSourceListView"  OnItemCommand="ListviewCommand"
                            ItemPlaceholderID="CustomersContainer" DataKeyNames="BlogId"  AllowPaging="True"
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
                                           
                                          
                                        </tr>
                                    </table>
                                </fieldset>
                            </LayoutTemplate>
                            <ItemTemplate>
                                
                                <!--The widths/heights of the fieldset/outer tables in the item/edit/insert templates should match to avoid wrapping or visual discrepancies
                             in the tiles layout-->
                                <fieldset  class="fieldset itemFieldset">
                                    <legend>  <%# Eval("Title") %></legend>
                                    <table >
                                        <tr >
                                                   <td >
                                                       <%# Eval("Content") %>       
                                                    </tr>
                                        <tr class="rlvl">
                                            <td>
                                                <table class="itemTable">
                                                    <tr>
                                                        <td>
                                                       
                                                     
                                                            <table class="innerItemTable">
                                                                <tr>
                                                                    
                                                                    <td class="itemCellInfo">
                                                                        <telerik:RadLabel ID="RadLabel1" runat="server"  Width="370px" Height="90px" Rows="5" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"><%#Eval("CommentContent")%></telerik:RadLabel>      
                                                                       <%-- <telerik:RadTextbox ID="txtDescription" BorderStyle="None" runat="server" DisplayText='<%#Eval("ServiceDescription")%>' CssClass="input"  Width="390px" Height="90px" Rows="5" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"></telerik:RadTextbox><br />
                                                                       --%> 
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button CommandName="Likes" ID="Button1" runat="server" Text="Like" />
                                                                        <asp:Label runat="server" Text='<%#Eval("Likes")%>'></asp:Label>
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

                  
                   <
             
                     </div>
            
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
                  </div>
             </div>
             
                 
           
       
         </div>

     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  </td>                                    
                                                                      
</asp:Content>
