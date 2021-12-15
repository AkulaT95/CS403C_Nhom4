<%@ Page Title="" Language="C#" MasterPageFile="~/WebDienThoai.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebDienThoaiCDIO5._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dataList td {
            padding-bottom: 50px;
        }
        .dataList .vl {
            border-left: 2px solid black;
            height: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList CssClass="dataList" ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" HorizontalAlign="Center">
        <AlternatingItemStyle BorderStyle="None" />
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" Width="200px" Height="200px" runat="server" ImageUrl='<%# Eval("image","img/products/{0}") %>' />
            <br />
            <h3>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("productName") %>'></asp:Label></h3>
            <strong style="color: red">
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price")+" đồng" %>'></asp:Label></strong>
            <br />
        </ItemTemplate>
        <SeparatorTemplate>
            <div class="vl"></div>
        </SeparatorTemplate>
    </asp:DataList>
</asp:Content>
