<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Produit.aspx.cs" Inherits="GRDAWebApplication.Produit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <hgroup class="title">
        <h1 class="title-style">Liste des produit</h1>
    </hgroup>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ref" ForeColor="Gray" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:Button ID="Button3" runat="server" CommandArgument='<%# Bind("Ref") %>' Text="Enregistrer" CommandName="Enregistrer" />
                        <asp:Button ID="Button4" runat="server" Text="Annuler" CommandName="Annuler" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Bind("Ref") %>' CommandName="Modifier" Text="Modifier" />
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Bind("Ref") %>' CommandName="Supprimer" Text="Supprimer" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ref" InsertVisible="False" SortExpression="Ref">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ref") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ref") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDesignation" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Unite" SortExpression="Unite">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUnite" runat="server" Text='<%# Bind("Unite") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUnite" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Unite") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prix_Unitaire" SortExpression="Prix_Unitaire">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPrixUnitaire" runat="server" Text='<%# Bind("Prix_Unitaire") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrixUnitaire" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Prix_Unitaire") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Code_Famille" SortExpression="Code_Famille">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCodeFamille" runat="server" DataSourceID="SqlDataSource1" DataTextField="EFP" DataValueField="Code_EFP" SelectedValue ='<%# Bind("Code_Famille") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GRDAConnectionString %>" SelectCommand="SELECT * FROM [EFP]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Code_Famille") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <br />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Nouveaux produit" NavigateUrl="~/AJouterProduit.aspx" ></asp:HyperLink>
        </p>
    </div>
</asp:Content>
