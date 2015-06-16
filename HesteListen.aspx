<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HesteListen.aspx.cs" Inherits="HesteListen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>HesteMailListen</h1>
    <p>
       Her kan du tilmelde dig til at modtage vores nyhedsbrev. Bare rolig, det er ikke i drift, så du bliver ikke spammet :-)
         </p>
    <p>
        <asp:Label ID="LabelNavn" runat="server" Text="Navn:" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxNavn" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNavn" runat="server"
            ErrorMessage="Vær venlig at skrive dit navn"
            ControlToValidate="TextBoxNavn"
            ForeColor="Red">*</asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="LabelEmail" runat="server" Text="Email:" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
            ErrorMessage="Vær venlig at skrive din email"
            ControlToValidate="TextBoxEmail"
            Display="Dynamic"
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
            ErrorMessage="Vær venlig at skrive en velformet emailadresse"
            ControlToValidate="TextBoxEmail"
            Display="Dynamic"
            ForeColor="Red"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            *
        </asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="LabelTelefon" runat="server" Text="Telefon:" CssClass="label"></asp:Label>
        <asp:TextBox ID="TextBoxTelefon" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatortelefon" runat="server"
            ErrorMessage="Vær venlig at skrive dit telefonnummer"
            ControlToValidate="TextBoxTelefon"
            Display="Dynamic"
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTelefon" runat="server"
            ErrorMessage="Vær venlig at skrive et velformet teleonnummer"
            ControlToValidate="TextBoxTelefon"
            Display="Dynamic"
            ForeColor="Red"
            ValidationExpression="(?:(?:\+|00)\d{1,3}\s*)?(?:\d{2}\s*){4}" >
            *
        </asp:RegularExpressionValidator>
    </p>

    <asp:Button ID="ButtonTilmeld" runat="server" Text="Tilmeld" OnClick="ButtonTilmeld_Click" />
    <asp:ValidationSummary ID="ValidationSummaryHesteListen" runat="server" 
        ForeColor="Red" />
    <asp:Label ID="LabelRespons" runat="server" Text=""></asp:Label>
   
    
     <hr />
    
    
    <asp:Panel ID="PanelSlet" runat="server">
        <p>
            <asp:Label ID="LabelEmailSlet" runat="server" Text="Email:" CssClass="label"></asp:Label>
            <asp:TextBox ID="TextBoxEmailSlet" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailSlet" runat="server"
                ErrorMessage="Vær venlig at skrive din email"
                ControlToValidate="TextBoxEmailSlet"
                Display="Dynamic"
                ForeColor="Red"
                ValidationGroup="afmeld">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailSlet" runat="server"
                ErrorMessage="Vær venlig at skrive en velformet emailadresse"
                ControlToValidate="TextBoxEmailSlet"
                Display="Dynamic"
                ForeColor="Red"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="afmeld">*</asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button ID="ButtonAfmeld" runat="server" ValidationGroup="afmeld" Text="Afmeld" OnClick="ButtonAfmeld_Click" />
            <asp:ValidationSummary ID="ValidationSummaryAfmeld" ValidationGroup="afmeld" runat="server" ForeColor="Red" />
            <asp:Label ID="LabelResponsAfmeld" runat="server" Text=""></asp:Label>
        </p>
    </asp:Panel>

</asp:Content>

