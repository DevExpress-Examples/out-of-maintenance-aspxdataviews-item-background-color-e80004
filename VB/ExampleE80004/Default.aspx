<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v8.2" Namespace="DevExpress.Web.ASPxPanel"
	TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.Web.v8.2" Namespace="DevExpress.Web.ASPxDataView"
	TagPrefix="dxdv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<dxdv:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="AccessDataSource1">
			<ItemTemplate>
				<dxp:ASPxPanel ID="Panel1" runat="server" BackColor='<%#GetColor(Container.DataItem)%>' Width="250px" Height="150px">
					<Paddings Padding="10px" />
			<PanelCollection>
				<dxp:PanelContent ID="PanelContent1" runat="server">

					<b>stor_id</b>:
					<asp:Label ID="stor_idLabel" runat="server" Text='<%#Eval("stor_id")%>'></asp:Label><br />
					<b>ord_num</b>:
					<asp:Label ID="ord_numLabel" runat="server" Text='<%#Eval("ord_num")%>'></asp:Label><br />
					<b>ord_date</b>:
					<asp:Label ID="ord_dateLabel" runat="server" Text='<%#Eval("ord_date")%>'></asp:Label><br />
					<b>qty</b>:
					<asp:Label ID="qtyLabel" runat="server" Text='<%#Eval("qty")%>'></asp:Label><br />
					<b>payterms</b>:
					<asp:Label ID="paytermsLabel" runat="server" Text='<%#Eval("payterms")%>'></asp:Label><br />
					<b>title_id</b>:
					<asp:Label ID="title_idLabel" runat="server" Text='<%#Eval("title_id")%>'></asp:Label><br />
				</dxp:PanelContent>
			</PanelCollection>
				</dxp:ASPxPanel>
			</ItemTemplate>
			<ItemStyle Height="1px" Width="1px">
				<Paddings Padding="0px" />
			</ItemStyle>
		</dxdv:ASPxDataView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
			SelectCommand="SELECT * FROM [sales]"></asp:AccessDataSource>
	</form>
</body>
</html>
