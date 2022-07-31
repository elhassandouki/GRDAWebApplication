<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjouterFamille.aspx.cs" Inherits="GRDAWebApplication.AjouterFamille" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <hgroup class="title">
        <h1 class="title-style">Ajouter nouvelle famille</h1>
    </hgroup>
    <div style="font-family: Arial;color: #808080">
        <table>
            <tr>
                <td>Libelle Famille</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtLibelle" runat="server" Width="189px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Button ID="btnAjouter" runat="server" OnClick="btnAjouter_Click" Text="Ajouter"
                        Width="196px" Height="27px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Libelle Famille est obligatoire."
                        ControlToValidate="txtLibelle" Display="Dynamic" ForeColor="Red" Font-Bold="true">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
