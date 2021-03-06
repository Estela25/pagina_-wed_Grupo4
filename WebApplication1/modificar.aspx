<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modificar.aspx.cs" Inherits="WebApplication1.modificar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .mi{
            border: 3px double #848484;
        }
        .ma{ 
            background: white; 
            border: 1px double #DDD; 
            border-radius: 5px; 
            box-shadow: 0 0 5px #333; 
            color: #666; 
            outline: none; 
            height:25px; 
            width: 275px; 
        } 
        .auto-style1 {
            width: 106px;
            height: 22px;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>
    <br />
    <div>

        <table  style="width: 100%">
             <tr >
                <td class="mi" style="width: 106px">ID</td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server" class="ma" Font-Size="Medium" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td class="mi" style="width: 106px">Nombre</td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" class="ma" Font-Size="Medium" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
               
                <td style="width: 106px">Dui</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td style="width: 106px">Nit</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
               
                <td class="auto-style1">Correo</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td style="width: 106px">Puesto</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Gerente</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                
                <td style="width: 106px">Salario</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="153px" Height="22px"></asp:TextBox>
                </td>
            </tr>
        </table>

    </div>
    <div style="text-align: center">

        <asp:Button ID="Button1" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button1_Click" Text="Insertar" Width="86px" />
        <asp:Button ID="Button2" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button2_Click" Text="Modificar" Width="86px" />

        <asp:Button ID="Button3" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('¿Estas Seguro de Eliminar este Empleado?')" Text="Eliminar" Width="86px" />

        <asp:Button ID="Button4" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button4_Click" Text="Buscar" Width="86px" />

    </div>
    <p>

 <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_empleado" DataSourceID="SqlDataSource1" style="font-size: small" Width="373px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" ReadOnly="True" SortExpression="id_empleado" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="diu" HeaderText="diu" SortExpression="diu" />
                <asp:BoundField DataField="nit" HeaderText="nit" SortExpression="nit" />
                <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                <asp:BoundField DataField="puesto" HeaderText="puesto" SortExpression="puesto" />
                <asp:BoundField DataField="salario" HeaderText="salario" SortExpression="salario" />
            </Columns>
        </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:academicaConnectionString10 %>" SelectCommand="SELECT * FROM [empleados]"></asp:SqlDataSource>
     </p>
</asp:Content>
