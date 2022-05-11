<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GM</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" crossorigin="anonymous" />

    <link rel="stylesheet" href="Assets/Styles/Default.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlay"></div>

        <div class="container">

            <!--Logo-->
            <div class="logo">
                <img src="Assets/Images/logo.svg" alt="General Motors Logo" />
            </div>
            <!--End Logo-->

            <!--Card-->
            <div class="card">
                <div class="tabs">
                    <div class="tab">
                        <label for="tab-1"><i class="fa-solid fa-table-columns"></i>Tab 1</label>
                        <input id="tab-1" name="tabs" type="radio" checked="checked" />
                        <div>
                            <div class="accordion">
                                <input type="checkbox" name="check1" id="check1" checked />
                                <label class="accordion-label" for="check1"><i class="fa-solid fa-border-top-left"></i>Group 1</label>
                                <div class="accordion-content">
                                    <p>Hey there, you are watching codiesbugs &#128522;</p>
                                </div>
                            </div>
                            <div class="accordion">
                                <input type="checkbox" name="check2" id="check2" />
                                <label class="accordion-label" for="check2"><i class="fa-solid fa-border-top-left"></i>Group 2</label>
                                <div class="accordion-content">
                                    <p>I hope you are enjoing the video, don't forget to give your feedback in comment section</p>
                                </div>
                            </div>
                            <div class="accordion">
                                <input type="checkbox" name="check3" id="check3" />
                                <label class="accordion-label" for="check3"><i class="fa-solid fa-border-top-left"></i>Group 3</label>
                                <div class="accordion-content">
                                    <p>If you liked then don't forget to subscribe the channel for latest videos. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab">
                        <label for="tab-2"><i class="fa-solid fa-table-columns"></i>Tab 2</label>
                        <input id="tab-2" name="tabs" type="radio" />
                        <div>
                            <h4>Tab Two</h4>
                            <p>Quisque sit amet turpis leo. Maecenas sed dolor mi. Pellentesque varius elit in neque ornare commodo ac non tellus. Mauris id iaculis quam. Donec eu felis quam. Morbi tristique lorem eget iaculis consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean at tellus eget risus tempus ultrices. Nam condimentum nisi enim, scelerisque faucibus lectus sodales at.</p>
                        </div>
                    </div>
                    <div class="tab">
                        <label for="tab-3"><i class="fa-solid fa-table-columns"></i>Tab 3</label>
                        <input id="tab-3" name="tabs" type="radio" />
                        <div>
                            <h4>Tab Three</h4>
                            <p>Quisque sit amet turpis leo. Maecenas sed dolor mi. Pellentesque varius elit in neque ornare commodo ac non tellus. Mauris id iaculis quam. Donec eu felis quam. Morbi tristique lorem eget iaculis consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean at tellus eget risus tempus ultrices. Nam condimentum nisi enim, scelerisque faucibus lectus sodales at.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Card-->

            <div class="footer">
                <p>
                    ©
                    <script>document.write(new Date().getFullYear())</script>
                    GM. Crafted with <i class="fa-solid fa-heart"></i>by JK
                </p>
            </div>
        </div>
    </form>

    <script src="Assets/Scripts/Default.js"></script>
</body>
</html>
