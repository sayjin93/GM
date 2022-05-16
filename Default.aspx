<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc1" TagName="Header" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>GM</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="Assets/Images/favicon.ico" />

    <!--Import Google Font Roboto-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" />

    <!--Import FontAwesome Libray-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" crossorigin="anonymous" />

    <!--Custom Styles-->
    <link rel="stylesheet" href="Assets/Styles/Default.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!--Background Overlay-->
        <div class="overlay"></div>
        <!--END Background Overlay-->

        <div class="container">

            <!--Header-->
            <uc1:Header runat="server" ID="Header" />
            <!--END Header-->

            <!--Image to Download-->
            <div class="img2Down">
                <img src="Assets/Images/toDownload.png" height="140" alt="Screenshot" />
                <button id="downloadImage" type="submit">Download Image</button>
            </div>
            <!-- END Image to Download-->

            <!--Card-->
            <div class="card">
                <!--3 Main Tabs-->
                <div id="tabs" class="tabs">
                    <!-- filled from js-->
                </div>
                <!--END 3 Main Tabs-->

                <!--Form Submit Button-->
                <div class="form-group">
                    <button type="submit" onclick="validateForm(event)" style="margin: 0 20px;">Save</button>
                </div>
                <!--END Form Submit Button-->
            </div>
            <!--END Card-->

            <!--Footer-->
            <uc1:Footer runat="server" ID="Footer" />
            <!--END Footer-->

        </div>
        <!--END Container-->
    </form>

    <!-- Page JS Plugins + Page JS Code -->
    <script src="Assets/Libraries/sweetalert2@11.js"></script>
    <script src="Assets/Scripts/Default.js"></script>
</body>
</html>
