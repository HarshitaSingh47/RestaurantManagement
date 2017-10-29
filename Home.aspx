<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default3" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">


    <!-- Stylesheets -->
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!-- Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
	<!-- Scripts -->
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="js/menu_toggle.js"></script>
	<script type="text/javascript" src="script.js"></script>
	<title>Elephante - Hollywoo's Favorite Pizzeria</title>




<form id="form1" runat="server">

   

 <div id="mainbox">
    
<div class="card" runat="server">
  <img src="bg5.jpg" alt="" />
  <h1><asp:Label ID="label1" runat="server" Text=" "></asp:Label></h1>
    <p>PRICE : 
   <asp:Label ID="price1" runat="server" Text=" "></asp:Label></p>
    <p>Quantity Sold :
        <asp:Label ID="quant1" runat="server" Text=" "></asp:Label>
    </p>
  

</div>
<div class="card">
  <img src="bg5.jpg" alt="" />
<h1> <asp:Label ID="label2" runat="server" Text=" "></asp:Label></h1>
  <p>PRICE : 
   <asp:Label ID="price2" runat="server" Text=" "></asp:Label></p>
    <p>Quantity Sold :
        <asp:Label ID="quant2" runat="server" Text=" "></asp:Label>
    </p>
</div>
<div class="card">
  <img src="bg5.jpg" alt="" />
  <h1> <asp:Label ID="label3" runat="server" Text=" "></asp:Label></h1>
  <p>PRICE : 
   <asp:Label ID="price3" runat="server" Text=" "></asp:Label></p>
    <p>Quantity Sold :
        <asp:Label ID="quant3" runat="server" Text=" "></asp:Label>
    </p>
</div>




    
</div>
   <div class ="chart" runat="server">
    <asp:Chart ID="Chart1" runat="server" BackColor="white" BackGradientStyle="LeftRight"  
        BorderlineWidth="0" Height="360px" Palette="None" PaletteCustomColors= "maroon"
        Width="360px" BorderlineColor="192, 64, 0">
        <Series>
            <asp:Series Name="Series1" YValuesPerPoint="12"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    </div>


    </form>
</asp:Content>

