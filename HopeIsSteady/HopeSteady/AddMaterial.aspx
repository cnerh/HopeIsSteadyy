<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="AddMaterial.aspx.cs" Inherits="HopeIsSteady.HopeSteady.AddMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-wrap">
	  <div class="login-html">
         <h1>Add Material</h1> 
        <div class="login-form">
           <div class="group">
				<label for="user" class="label"> Material Name</label>
			    <telerik:RadTextBox ID="txtMaterialName" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>W
            <div class="group">
				<label for="user" class="label"> Material Price</label>
			    <telerik:RadTextBox ID="txtMateriaPrice" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>
            <div class="group">
				<label for="user" class="label"> Material  Per Cost</label>
			    <telerik:RadTextBox ID="txtMaterialPerCost" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>
			<div class="group">
				<label for="pass" class="label">Service Name</label>
				<asp:DropDownList ID="ddService" runat="server" Width="100%" Cssclass="input"  ForeColor="Black"></asp:DropDownList>
                <telerik:RadLabel ID="lblErrorMessage" runat="server"></telerik:RadLabel>


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
