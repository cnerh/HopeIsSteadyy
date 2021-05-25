<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="AddBlog.aspx.cs" Inherits="HopeIsSteady.HopeSteady.AddBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../styles/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-wrap">
	  <div class="login-html">
         <h1>Add New Blog</h1> 
        <div class="login-form">
           <div class="group">
				<label for="user" class="label"> Title</label>
			    <telerik:RadTextBox ID="txtTitle" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
			</div>
            <div class="group">
				<label for="user" class="label"> Content</label>
                <telerik:RadTextBox ID="txtContent" runat="server"  CssClass="input"  Width="400px" Height="400px" Rows="15" SelectionOnFocus="CaretToBeginning" TextMode="MultiLine"></telerik:RadTextBox><br />
			</div>
           <div class="group">
                   <telerik:RadButton ID="btnPost" runat="server" CssClass="button"  Text="Post" OnClick="btnPost_Click"></telerik:RadButton>
			</div>
         </div>
      </div>
    </div>
   
    <telerik:RadTextBox ID="txtCommentContent" runat="server"></telerik:RadTextBox><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
