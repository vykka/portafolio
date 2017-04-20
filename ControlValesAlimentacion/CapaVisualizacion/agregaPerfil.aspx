<%@ Page Title="" Language="C#" MasterPageFile="~/maestraAdministrador.Master" AutoEventWireup="true" CodeBehind="agregaPerfil.aspx.cs" Inherits="CapaVisualizacion.agregaPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript" src="js/jquery.js"></script>
     <script src="js/alertifyjs/alertify.min.js"></script>
     <script src="js/modernizr-custom.js"></script>
     <link rel="stylesheet" type="text/css" href="css/stiloPopUp.css">
        
<form id="form1" runat="server">
      <!--AREA DONDE SE CREA EL CONTENIDO DEL POPUP -->
       <div id="popup" style="display: none;">
          <div class="content-popup">
              <div class="close"><a href="#" id="close"><img src="images/close.png"/></a></div>
              <div>
                 <center>
                     <h2>Agregar Perfil</h2>
                 <table border="0" style="align-content:center;">
                     <tr>
                         <td>
                             <asp:TextBox ID="nombrePerfil" runat="server" CssClass="form-control" placeholder="Nombre Perfil" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nombre de perfil es requerido" Display="Dynamic" ControlToValidate="nombrePerfil" CssClass="alert-danger" ValidationGroup="btn"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <br />
                             <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Selected="True" Value="0">--Seleccione--</asp:ListItem>
                                    <asp:ListItem Value="normal">Normal</asp:ListItem>
                                    <asp:ListItem Value="conPrivilegios">Con Privilegios</asp:ListItem>
                                    <asp:ListItem Value="cajero">Cajero</asp:ListItem>
                                    <asp:ListItem Value="administrador">Administrador</asp:ListItem>

                             </asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" InitialValue="0" ErrorMessage="El tipo de usuario es requerido" Display="Dynamic"  ControlToValidate="DropDownList1"  CssClass="alert-danger" ValidationGroup="btn"></asp:RequiredFieldValidator>
                            
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <center>
                                 <br />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Agregar" CssClass="btn btn-danger" ValidationGroup="btn" />
                         </center>
                          </td>
                     </tr>
                    </table>
                     </center>
              </div>
          </div>
      </div>

<div id="Content">
     <center>
                <br />
                <br />
                <br />
                <br />
                
                <p>
                  <a id="open" >
                    <span class="glyphicon glyphicon-plus"></span>
                        Agregar Perfil
                  </a>
                </p> 
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDPERFIL" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="IDPERFIL" HeaderText="IDPERFIL" ReadOnly="True" SortExpression="IDPERFIL" />
                  <asp:BoundField DataField="P_CARGO" HeaderText="P_CARGO" SortExpression="P_CARGO" />
                  <asp:BoundField DataField="P_ESTADO" HeaderText="P_ESTADO" SortExpression="P_ESTADO" />
                  <asp:BoundField DataField="P_DESCRIPCION" HeaderText="P_DESCRIPCION" SortExpression="P_DESCRIPCION" />
              </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
              </asp:GridView>
                
    </center>
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="UPDATE &quot;PERFIL&quot; SET &quot;P_ESTADO&quot; = 0 WHERE &quot;IDPERFIL&quot; = :IDPERFIL" InsertCommand="INSERT INTO &quot;PERFIL&quot; (&quot;IDPERFIL&quot;, &quot;P_CARGO&quot;, &quot;P_ESTADO&quot;, &quot;P_TIPOUSUARIO&quot;) VALUES (:IDPERFIL, :P_CARGO, :P_ESTADO, :P_TIPOUSUARIO)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;IDPERFIL&quot;, &quot;P_CARGO&quot;, &quot;P_ESTADO&quot;, &quot;P_DESCRIPCION&quot; FROM &quot;PERFIL&quot; where &quot;P_ESTADO&quot; = 1" UpdateCommand="UPDATE &quot;PERFIL&quot; SET &quot;P_CARGO&quot; = :P_CARGO, &quot;P_ESTADO&quot; = :P_ESTADO, &quot;P_TIPOUSUARIO&quot; = :P_TIPOUSUARIO WHERE &quot;IDPERFIL&quot; = :IDPERFIL">
            <DeleteParameters>
                <asp:Parameter Name="IDPERFIL" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDPERFIL" Type="Decimal" />
                <asp:Parameter Name="P_CARGO" Type="String" />
                <asp:Parameter Name="P_ESTADO" Type="String" />
                <asp:Parameter Name="P_TIPOUSUARIO" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="P_CARGO" Type="String" />
                <asp:Parameter Name="P_ESTADO" Type="String" />
                <asp:Parameter Name="P_TIPOUSUARIO" Type="String" />
                <asp:Parameter Name="IDPERFIL" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
    </form>

    <script type="text/javascript">
        $(document).ready(function(){
          $('#open').click(function(){
                $('#popup').fadeIn('slow');
                $('.popup-overlay').fadeIn('slow');
                $('.popup-overlay').height($(window).height());
                return false;
            });
            
            $('#close').click(function(){
                $('#popup').fadeOut('slow');
                $('.popup-overlay').fadeOut('slow');
                return false;
            });

         /*   $("#Button1").on("click",function(e){
              e.preventDefault();//evita que la pagina se recargue 

              var nombrePerfil = $("#nombrePerfil").val();
              if (nombrePerfil.trim()=="") {
                warning("Debe ingresar el nombre del perfil");
                ingresarError("No se ingreso nombre de perfil");
              }
            )};
*/
        });
    </script>

</asp:Content>
