<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminListen.aspx.cs" Inherits="adminListen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Admin Listen</h1>

    <asp:Repeater ID="RepeaterListe" runat="server" DataSourceID="SqlDataSourceHesteListe">
        <ItemTemplate>

            <p>
                #<%# Eval("Id") %> <%# Eval("DatoTilmeldt", "{0:D}") %><br />
                <strong><%# Eval("Navn") %></strong><br />
                <%# Eval("Email") %> <%# Eval("Telefon") %>
            </p>

        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceHesteListe" 
        ConnectionString='<%$ ConnectionStrings:DatabaseConnectionString1 %>' 
        SelectCommand="SELECT * FROM [abonnent]"></asp:SqlDataSource>
</asp:Content>

