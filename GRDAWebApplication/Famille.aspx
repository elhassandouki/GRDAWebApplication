<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Famille.aspx.cs" Inherits="GRDAWebApplication.Famille" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <hgroup class="title">
        <h1 class="title-style">Liste des Familles</h1>
    </hgroup>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Code_Famille" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:BoundField DataField="Code_Famille" HeaderText="Code Famille" InsertVisible="False" ReadOnly="True" SortExpression="Code_Famille" />
                <asp:BoundField DataField="Libelle_Famille" HeaderText="Libelle Famille" SortExpression="Libelle_Famille" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GRDAConnectionString %>" DeleteCommand="DELETE FROM [Famille] WHERE [Code_Famille] = @Code_Famille" InsertCommand="INSERT INTO [Famille] ([Libelle_Famille]) VALUES (@Libelle_Famille)" SelectCommand="SELECT * FROM [Famille]" UpdateCommand="UPDATE [Famille] SET [Libelle_Famille] = @Libelle_Famille WHERE [Code_Famille] = @Code_Famille">
            <DeleteParameters>
                <asp:Parameter Name="Code_Famille" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Libelle_Famille" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Libelle_Famille" Type="String" />
                <asp:Parameter Name="Code_Famille" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Nouveaux Famille" NavigateUrl="~/AjouterFamille.aspx"></asp:HyperLink>
        </p>
    </div>
</asp:Content>
