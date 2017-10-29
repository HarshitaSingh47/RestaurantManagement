<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <form id="form1" runat="server">
    <div class="headingsmall" runat ="server"> LOGIN TO ADMIN ACCOUNT </div>
        <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br />

        <asp:Panel  runat="server" background="white">
    <div class="textmedium" runat="server">
        Username <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb1" ErrorMessage="Please Enter UserName" ></asp:RequiredFieldValidator>

        <br />
        <br />
        Password <asp:TextBox id="tb2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb2" ErrorMessage="Please Enter Password" ></asp:RequiredFieldValidator>
        
        <br />
        <br />
        <asp:Button id="b1" runat="server" Text="    Sign In    " OnClick="signin"/>
        <br /><br />
        <asp:Label id="label1" runat="server" Text=" "></asp:Label>
    </div>

        </asp:Panel>
    </form>

</asp:Content>
