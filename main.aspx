<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script>
        function changeSrc(url) {
            var player = document.getElementById("embed-player");
            player.setAttribute("src", url);
        }
    </script>

    <nav style="z-index: 10" class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">پخش زنده شبکه های سیما</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                            لیست شبکه ها<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" id="myList" runat="server">
                            <asp:Literal runat="server" ID="litDropDown"></asp:Literal>
                        </ul>
                    </div>
                </ul>
                <a href="#" class="nav-link disabled">
                    <script language="javascript" src="Src/js/date.js"></script>
                </a>
            </div>
            </div>
    </nav>

    <div id="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="embed-responsive embed-responsive-16by9">
                        <object classid="clsid:9BE31822-FDAD-461B-AD51-BE1D1C159921" codebase="http://download.videolan.org/pub/videolan/vlc/last/win32/axvlc.cab" id="vlc" class="img-fluid" alt="Responsive image">
                            <embed class="embed-responsive-item" id="embed-player" type="application/x-vlc-plugin" pluginspage="http://www.videolan.org" name="vlc" height="100%" src="<%=VlcSrc%>" />
                            <param name="autostart" value="true" />
                            <param name="allowfullscreen" value="false" />
                        </object>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


