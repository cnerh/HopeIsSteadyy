<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HopeIsSteady.HopeSteady.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/Style.css" rel="stylesheet" />

    <style>
       .center {
  display: block;
  margin-left: auto;
  margin-right: auto;

}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="center" >HopeSteady Innovation Team</h1>
<%--       <div class="Home-html" >--%>
       <asp:UpdatePanel ID="UpdatePanel1" class="center" runat="server">  
           <ContentTemplate >  
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>  
        <asp:Image ID="Image1" CssClass="center" width="1100px" Height="500px" runat="server" />  
         </ContentTemplate>       
   </asp:UpdatePanel> 
  <%--  </div>--%>
</asp:Content>