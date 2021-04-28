<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxDataView's item background color</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxDataView ID="ASPxDataView1" runat="server" DataSourceID="AccessDataSource1">
            <ItemTemplate>
                <dx:ASPxPanel ID="Panel1" runat="server" BackColor='<%#GetColor(Container.DataItem)%>' Width="250px" Height="150px">
                    <Paddings Padding="10px" />
                    <PanelCollection>
                        <dx:PanelContent ID="PanelContent1" runat="server">
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
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxPanel>
            </ItemTemplate>
            <ItemStyle Height="1px" Width="1px">
                <Paddings Padding="0px" />
            </ItemStyle>
        </dx:ASPxDataView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
            SelectCommand="SELECT * FROM [sales]"></asp:AccessDataSource>
    </form>
</body>
</html>