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
    <form id="form1" runat="server">
        <div class="overlay"></div>

        <div class="container">

            <!--Header-->
            <uc1:Header runat="server" ID="Header" />
            <!--End Header-->

            <!--Card-->
            <div class="card">
                <!--3 Main Tabs-->
                <div class="tabs">
                    <div class="tab">
                        <label for="tab-1"><i class="fa-solid fa-table-columns"></i>Tab 1</label>
                        <input id="tab-1" name="tabs" type="radio" checked="checked" />
                        <div>
                            <div class="accordion">
                                <input type="checkbox" name="check1" id="check1" checked="checked" />
                                <label class="accordion-label" for="check1"><i class="fa-solid fa-border-top-left"></i>Group 1</label>
                                <div class="accordion-content">
                                    <div class="form-group">
                                        <label for="revision">Revision</label>
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
                            <div class="accordion">
                                <input type="checkbox" name="check2" id="check2" />
                                <label class="accordion-label" for="check2"><i class="fa-solid fa-border-top-left"></i>Group 2</label>
                                <div class="accordion-content">
                                    <div class="form-group">
                                        <label class="form-remember">
                                            <input type="checkbox" />Remember Me
                                        </label>
                                        <a class="form-recovery" href="#">Forgot Password?</a>
                                    </div>
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
                <!--End 3 Main Tabs-->

                <!--Form Submit Button-->
                <div class="form-group">
                    <button type="submit" style="margin: -20px 20px 0;">Submit</button>
                </div>
                <!--End Form Submit Button-->
            </div>
            <!--End Card-->

            <!--Footer-->
            <uc1:Footer runat="server" ID="Footer" />
            <!--End Footer-->
        </div>
    </form>

    <script src="Assets/Scripts/Default.js"></script>
</body>
</html>
