<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="AddService.aspx.cs" Inherits="HopeIsSteady.HopeSteady.AddService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="login-wrap">
	  <div class="login-html">
         <h2>Add New Service</h2> 
        <div class="login-form">
           <div class="group">
				<label for="user" class="label"> Service Name</label>
			    <telerik:RadTextBox ID="txtServiceName" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>
            <div class="group">
				<label for="user" class="label"> Service Description</label>
                <telerik:RadTextBox ID="txtDescription" runat="server"  CssClass="input"  Width="400px" Height="250px" Rows="5" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"></telerik:RadTextBox><br />
			</div>
                <div class="group">
				<label for="user" class="label"> Service Image</label>
            <asp:FileUpload ID="FileUpload1" CssClass="input" runat="server" />
			</div>
           <div class="group">
               <asp:Button ID="btnUpload" runat="server" class="button" Text="Upload" OnClick="Upload" />

			</div>
         </div>
      </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:FileUpload ID="FileUpload2" runat="server" />
<%--<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />--%>
</asp:Content>
