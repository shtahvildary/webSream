<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body style="background-image: url(Src/VideoWall.jpg); ">
          <h2 ورود به سیستم />
        <div class="container bg-white "  id="login">
            <form>
                <div class="form-group row" >
                    <label for="inputEmail3" class="col-sm-2 col-form-label">نام کاربری</label>
                    <div class="col-sm-10">
                    <asp:TextBox ID="tbxUN" runat="server" class="form-control" placeholder="نام کاربری"></asp:TextBox>
                             </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">کلمه عبور</label>
                <div class="col-sm-10">
                      <asp:TextBox ID="tbxPW" runat="server" type="password" class="form-control"  placeholder="کلمه عبور"></asp:TextBox>
                </div>
            </div>
                  <div class="form-group row">
                <div class="col-sm-12">
                    <asp:Button ID="btnLogin" runat="server" type="submit" class="btn btn-primary btn-lg" style="float: left" OnClick="btnLogin_Click" Text="ورود"/>
                    <asp:Label ID="lblMsg" runat="server" Text="" class="alert alert-primary" role="alert"></asp:Label>
                </div>
            </div>
        </form>                               
                    
    </div>
    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>
</body>

</asp:Content>


