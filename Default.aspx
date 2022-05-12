<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc1" TagName="Header" %>



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
    <form id="form1" runat="server" onsubmit="return false">
        <div class="overlay"></div>

        <div class="container">

            <!--Header-->
            <uc1:Header runat="server" ID="Header" />
            <!--End Header-->

            <!--Card-->
            <div class="card">
                <!--3 Main Tabs-->
                <div class="tabs">
                    <!--Tab 1-->
                    <div class="tab">
                        <label for="tab-1"><i class="fa-solid fa-table-columns"></i>Tab 1</label>
                        <input id="tab-1" name="tabs" type="radio" checked="checked" />
                        <div>
                            <!--Group 1-->
                            <div class="accordion">
                                <input type="checkbox" name="check1" id="check1" checked="checked" />
                                <label class="accordion-label" for="check1"><i class="fa-solid fa-border-top-left"></i>Group 1</label>
                                <div class="accordion-content">
                                    <div class="form-group">
                                        <label for="revision"><i class="fa-solid fa-asterisk"></i>Revision</label>
                                        <input id="revision" type="text" name="revision" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <input id="description" type="text" name="description" />
                                    </div>
                                    <div class="form-group">
                                        <label for="effectivity_begin">Effictivity Negin</label>
                                        <input id="effectivity_begin" type="text" name="effectivity_begin" />
                                    </div>
                                    <div class="form-group">
                                        <label for="testField1">TestField1</label>
                                        <select id="testField1" name="testField1">
                                            <option>Type 1</option>
                                            <option>Type 2</option>
                                            <option>Type 3</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="testField2">TestField2</label>
                                        <input id="testField2" type="text" name="testField2" />
                                    </div>
                                    <div class="form-group">
                                        <label for="testField3">TestField3</label>
                                        <input id="testField3" type="text" name="testField3" />
                                    </div>
                                    <div class="form-group">
                                        <label for="number">Number</label>
                                        <input id="number" type="text" name="number" />
                                    </div>
                                </div>
                            </div>
                            <!--End Group 1-->

                            <!--Group 2-->
                            <div class="accordion">
                                <input type="checkbox" name="check2" id="check2" />
                                <label class="accordion-label" for="check2"><i class="fa-solid fa-border-top-left"></i>Group 2</label>
                                <div class="accordion-content">
                                    <div class="form-group center m-0">
                                        <a id="testField4" class="hyperlink" href="https://www.revzonesolutions.com/" target="_blank">www.revzonesolutions.com</a>
                                    </div>
                                </div>
                            </div>
                            <!--End Group 2-->

                            <!--Group 3-->
                            <div class="accordion">
                                <input type="checkbox" name="check3" id="check3" />
                                <label class="accordion-label" for="check3"><i class="fa-solid fa-border-top-left"></i>Group 3</label>
                                <div class="accordion-content">
                                    <div class="form-group center">
                                        Date:
                                        <asp:Label ID="testField6" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <!--End Group 3-->
                        </div>
                    </div>
                    <!--End Tab 1-->

                    <!--Tab 2-->
                    <div class="tab">
                        <label for="tab-2"><i class="fa-solid fa-table-columns"></i>Tab 2</label>
                        <input id="tab-2" name="tabs" type="radio" />
                        <div>
                            <div class="form-group">
                                <label for="testField7">TestField7</label>
                                <input id="testField7" type="text" name="testField7" />
                            </div>
                        </div>
                    </div>
                    <!--End Tab 2-->

                    <!--Tab 3-->
                    <div class="tab">
                        <label for="tab-3"><i class="fa-solid fa-table-columns"></i>Tab 3</label>
                        <input id="tab-3" name="tabs" type="radio" />
                        <div>
                            <div class="form-group">
                                <label for="testField8">TestField8</label>
                                <input id="testField8" type="text" name="testField8" />
                            </div>
                            <div class="form-group">
                                <label for="testField9">TestField9</label>
                                <select id="testField9" name="testField1">
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--End Tab 3-->
                </div>
                <!--End 3 Main Tabs-->

                <!--Form Submit Button-->
                <div class="form-group">
                    <button type="submit" onclick="validateForm()" style="margin: 0 20px;">Save</button>
                </div>
                <!--End Form Submit Button-->
            </div>
            <!--End Card-->

            <!--Footer-->
            <uc1:Footer runat="server" ID="Footer" />
            <!--End Footer-->
        </div>
    </form>

    <script src="Assets/Libraries/sweetalert2@11.js"></script>
    <script src="Assets/Scripts/Default.js"></script>
</body>
</html>
