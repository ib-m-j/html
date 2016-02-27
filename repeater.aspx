<%@ Page Language="C#" AutoEventWireup="true" CodeFile="repeater.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
.ribbon {width:100%; height:5em; font-size:1.5em; 
  white-space:nowrap;  overflow-x:auto; 
	background-color:rgba(255,255,255,0);}
.ribbonElement {display:inline-block; margin-right:15px; border-radius:3px;
	background-color:#ccffcc;}
.ribbonElementContent {text-align:center; font-size:2em; }
</style>
<body>

<asp:Repeater ID="rptCustomers" runat="server">
    <HeaderTemplate>
			<div id="toplevel" class="ribbon" style="top:0px">
    </HeaderTemplate>
    <ItemTemplate>
				<div class="ribbonElement" data-id=<%# Eval("Id") %>><span>Turnering</span>
					<div class="ribbonElementContent"><%# Eval("tNavn") %></div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
			</div>
    </FooterTemplate>
</asp:Repeater>
</body>
</html>
