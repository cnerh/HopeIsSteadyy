<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign.aspx.cs" Inherits="HopeIsSteady.Sign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/Scripts/jquery-3.4.1.min.js"></script>
    <script src="scripts/Scripts/flashcanvas.js"></script>
    <script src="scripts/Scripts/jSignature.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#signature").jSignature({ width: 650, height: 250 });
        });
        function Reset() {
            var $sigdiv = $("#signature");
            //      $sigdiv.jSignature();
            $sigdiv.jSignature("reset")
        }
        function GetData() {
            var $sigdiv = $("#signature");
            var datapair = $sigdiv.jSignature("getData", "svgbase64")
            var image = document.getElementById("Image1");

            image.src = "data:" + datapair[0] + "," + datapair[1]
            var hiddenfield = $("#HiddenField1");
            hiddenfield.val("data:" + datapair[0] + "," + datapair[1]);

        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
       
          <div>
   <div id="signature"></div>
          <input id="Button2" type="button" value="GetData" onclick="GetData()" />
        <hr />
        <asp:Image ID="Image1" runat="server" />
        <asp:HiddenField ID="HiddenField1" runat="server" Value=""/> 
        <asp:Button ID="Button1" runat="server" Text="Save to Database"  OnClick="Button1_Click"/>
        <asp:Button ID="Button3" runat="server" Text="Send Email" OnClick="Button3_Click"/>
        </div>
    </form>
</body>
</html>
