<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="AddUserType.aspx.cs" Inherits="HopeIsSteady.HopeSteady.AddUserType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  	<div class="login-wrap">
	  <div class="login-html">
         <h1>Add New User Type</h1> 
        <div class="login-form">
           <div class="group">
				<label for="user" class="label"> User Type Name</label>
			    <telerik:RadTextBox ID="txtUserTypeName" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>
           <div class="group">
			  <telerik:RadButton ID="RadBtnSave" runat="server" CssClass="button"  Text="Save" OnClick="RadBtnSave_Click"></telerik:RadButton>
			</div>
         </div>
      </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
