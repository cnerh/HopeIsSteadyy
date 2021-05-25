<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Signature.aspx.cs" Inherits="HopeIsSteady.Signature" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/Scripts/jquery-3.4.1.min.js"></script>
    <script src="scripts/Scripts/flashcanvas.js"></script>
    <script src="scripts/Scripts/jSignature.min.js"></script>
    <script src="scripts/Scripts/jSignature.min.noconflict.js"></script>
   
             <script type="text/javascript">
                 $(document).ready(function () {
                     $("#signature").jSignature({ width: 650, height: 250 });
                 });
                 function GetData() {
                     var $sigdiv = $("#signature");
                     var datapair = $sigdiv.jSignature("getData", "svgbase64")
                     var image = document.getElementById("Image1");
                     image.src = "data:" + datapair[0] + "," + datapair[1]
                 }
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div id="signature"></div>
          <input id="Button2" type="button" value="GetData" onclick="GetData()" />
        <hr />
        <asp:Image ID="Image1" runat="server" />

        <asp:HiddenField ID="HiddenField1" runat="server" Value=""/> 
        <asp:Button ID="Button1" runat="server" Text="Save to Database"  OnClick="Button1_Click"/>
        <asp:Button ID="Button3" runat="server" Text="Send Email" OnClick="Button3_Click"/>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
