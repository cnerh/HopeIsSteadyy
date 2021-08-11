<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="HopeIsSteady.HopeSteady.Logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="../scripts/scripts.js"></script>
    <link href="../styles/Style.css" rel="stylesheet" />
    
    <title>

    </title>
      <style type="text/css">
          .auto-style1 {
              background-repeat: no-repeat;
              background-position: center;
          }
      </style>
</head>
<body>
    <form id="form1" runat="server">
		<br /><br />
		<br /><br />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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

    <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"/>Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
			       <telerik:RadTextBox ID="txtUsername" Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
				  <telerik:RadTextBox ID="txtPassword"  Width="100%" runat="server" Cssclass="input"   data-type="password"></telerik:RadTextBox>

				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" />
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
					                <telerik:RadLabel ID="lblMsg" runat="server"></telerik:RadLabel>

				</div>
				<div class="group">
						  <telerik:RadButton ID="btnLogin" runat="server" CssClass="button"  Text="Login" OnClick="btnLogin_Click"></telerik:RadButton>

				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					  <asp:HiddenField ID="hfHopeSteadyUserId" runat="server"></asp:HiddenField>
					<label for="user" class="label">First Name</label>
			       <telerik:RadTextBox ID="txtFirstName"  Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Surname</label>
			       <telerik:RadTextBox ID="txtSurName"  Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
				</div>
				<%--<div class="group">
					<label for="pass" class="label">ID Number</label>
			       <telerik:RadTextBox ID="txtIDNO" Width="100%" onkeyup="sum();" Cssclass="input" runat="server"></telerik:RadTextBox>
					<telerik:RadTextBox ID="txterror" Cssclass="input" runat="server"></telerik:RadTextBox> 
				</div>--%>
				
				<div class="group">
					<label for="pass" class="label">User Type</label>
				  <asp:DropDownList ID="ddUserType" runat="server" Width="100%" Cssclass="input"  ForeColor="Black"></asp:DropDownList>
				</div>
				<div class="group">
					<label for="pass" class="label">Username</label>
			       <telerik:RadTextBox ID="txtUserNamecreate"  Width="100%" Cssclass="input" runat="server"></telerik:RadTextBox>
				</div>

				<div class="group">
					<label for="pass" class="label">Password</label>
			       <telerik:RadTextBox  ID="txtPasswordCreate"  Width="100%" data-type="password" Cssclass="input" runat="server"></telerik:RadTextBox>
				</div>

                <telerik:RadLabel ID="lblErrorMessage" runat="server"></telerik:RadLabel>

				<div class="group">
						  <telerik:RadButton ID="btnSave"  runat="server" CssClass="button"  Text="SignUp" OnClick="btnSave_Click1"></telerik:RadButton>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</asp:Panel>
		 <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" Transparency="70" runat ="server">
             
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </telerik:RadAjaxLoadingPanel>
    </form>
</body>
</html>
