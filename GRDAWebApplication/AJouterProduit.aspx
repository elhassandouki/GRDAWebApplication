<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjouterProduit.aspx.cs" Inherits="GRDAWebApplication.AjouterProduit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <hgroup class="title">
        <h1 class="title-style">Ajouter nouveaux Produit</h1>
    </hgroup>
    <div style="font-family: Arial;color: #808080">
        <table>
            <tr>
                <td>Designation</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtDésig" runat="server" Width="189px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtDésig" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Unite</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUnité" runat="server" Width="189px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtUnité" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Prix Unitaire</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPU" runat="server" Width="189px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtPU" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Code Famille</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DDLcodeF" runat="server" DataSourceID="SqlDataSource1" DataTextField="EFP" DataValueField="Code_EFP"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GRDAConnectionString %>" SelectCommand="SELECT * FROM [EFP]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Button ID="btnAjouter" runat="server" OnClick="btnAjouter_Click" Text="Ajouter"
                        Width="196px" Height="32px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
