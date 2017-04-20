﻿<%@ Page Title="" Language="C#" MasterPageFile="~/maestraLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaVisualizacion.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Forms</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/datepicker3.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

   
    </head>

    <body>

        <div class="row" style="align-content:center;">
            <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading"></div>
                    <div class="panel-body">
                        <form role="form" id="multiple-events">
                            <fieldset>
                                <legend>Acceso&nbsp;&nbsp;&nbsp;
                                    </legend>
                                <div class="form-group ">
                                    <asp:TextBox ID="rut" name="rut" class="input_rut form-control col-lg-4" onfocus="lastfocus = this;" autofocus="autofocus"  runat="server"></asp:TextBox>
                                  <%--  <input type="test" id="rut" name="rut" class="input_rut form-control col-lg-4" onfocus="lastfocus = this;" autofocus="autofocus" />--%>
                                </div>
                                <div class="form-group">
                                    <center>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </center>
                                    <asp:TextBox ID="pass" name="pass" runat="server" class="form-control" placeholder="Contraeña" type="password" onfocus="lastfocus = this;"></asp:TextBox>
                                   <%-- <input class="form-control" placeholder="Contraeña" name="password" type="password" onfocus="lastfocus = this;">--%>
                                </div>
                                <div style="align-items:center;">
                                    <center>
      <table <%--border="0" width="100%" cellspacing="1" cellpadding="0" height="100%"--%>>
<tr>
<td align="center" style="padding-right: 40px;"><table align="right">
<tr>
<td><input onclick="clave('7', 'campo');" type="button" value="7" name="7" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('8', 'campo');" type="button" value="8" name="8" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('9', 'campo');" type="button" value="9" name="9" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
</tr>
<tr>
<td><input onclick="clave('4', 'campo');" type="button" value="4" name="4" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('5', 'campo');" type="button" value="5" name="5" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('6', 'campo');" type="button" value="6" name="6" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
</tr>
<tr>
<td><input onclick="clave('1', 'campo'); QuitarFoco();" type="button" value="1" name="1" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('2', 'campo');" type="button" value="2" name="2" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
<td><input onclick="clave('3', 'campo');" type="button" value="3" name="3" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
</tr>

 <tr>
        <td><input onclick="clave('k', 'campo');" type="button" value="K" name="k" id="boton" style="height: 40px; width: 40px" class="btn btn-primary"></td>
        <td><input onclick="clave('0', 'campo');" type="button" value="0" name="0" id="boton" style="height: 40px; width: 40px"  ></td>
        <td><input type="reset" value="DEL" name="DEL" id="boton" style="height: 40px; width: 40px"></td>
    </tr>


   
</table>
    </center>
                                </div>
                            </fieldset>
                        
                        <form>
                        
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.col-->
        </div>
        <!-- /.row -->
   


        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/chart.min.js"></script>
        <script src="js/chart-data.js"></script>
        <script src="js/easypiechart.js"></script>
        <script src="js/easypiechart-data.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        
        <script>
            function clave(numero) {
                lastfocus.value += numero;
                document.formulario.campo.focus();
                return;
            }
        </script>

    </body>

    </html>



                    </div>




    </div>
    <center>
    <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="alert-danger" OnClick="Button1_Click" />
        </center>      





</asp:Content>
