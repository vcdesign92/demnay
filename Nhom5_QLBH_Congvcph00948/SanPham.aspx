﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SanPham.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Sản Phẩm</p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            GiaSP:
            <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            AnhSP:
            <asp:TextBox ID="AnhSPTextBox" runat="server" Text='<%# Bind("AnhSP") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MaSP:
            <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:TextBox ID="MaLoaiSPTextBox" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            TenSP:
            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            GiaSP:
            <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
            <br />
            Mota:
            <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            AnhSP:
            <asp:TextBox ID="AnhSPTextBox" runat="server" Text='<%# Bind("AnhSP") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSP:
            <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
            <br />
            MaLoaiSP:
            <asp:Label ID="MaLoaiSPLabel" runat="server" Text='<%# Bind("MaLoaiSP") %>' />
            <br />
            TenSP:
            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
            <br />
            GiaSP:
            <asp:Label ID="GiaSPLabel" runat="server" Text='<%# Bind("GiaSP") %>' />
            <br />
            Mota:
            <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
            <br />
            AnhSP:
            <asp:Label ID="AnhSPLabel" runat="server" Text='<%# Bind("AnhSP") %>' />
          
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Nhom5_QLBH.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [San_Pham] ([MaSP], [MaLoaiSP], [TenSP], [GiaSP], [Mota], [AnhSP]) VALUES (@MaSP, @MaLoaiSP, @TenSP, @GiaSP, @Mota, @AnhSP)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaSP], [MaLoaiSP], [TenSP], [GiaSP], [Mota], [AnhSP] FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [MaLoaiSP] = @MaLoaiSP, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [Mota] = @Mota, [AnhSP] = @AnhSP WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="MaLoaiSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="GiaSP" Type="Decimal" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="AnhSP" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaLoaiSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="GiaSP" Type="Decimal" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="AnhSP" Type="Object" />
            <asp:Parameter Name="MaSP" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
