<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Webform_With_StoreProcedure._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   

    

   

    <table class="w-100" style="height: 456px">
        <tr>
            <td style="font-size: x-large; font-weight: bold">Crud Operation Using WebForm And StoreProcedure<br />
                <table class="w-100">
                    <tr>
                        <td style="width: 376px">Product ID</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">Item Name</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">Specification</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">Unit</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="30px" Width="246px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Pics</asp:ListItem>
                                <asp:ListItem>KG</asp:ListItem>
                                <asp:ListItem>DZ</asp:ListItem>
                                <asp:ListItem>Litre</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">Status</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Running</asp:ListItem>
                                <asp:ListItem>Unused</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">Creation Date</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 376px">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Save" Width="118px" />
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" Width="1471px">
                    <HeaderStyle BackColor="#006699" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>

   

    

   

</asp:Content>
