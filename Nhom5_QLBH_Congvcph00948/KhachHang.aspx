<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="KhachHang.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Khách Hàng</p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="MAKH" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditItemTemplate>
            MAKH:
            <asp:Label ID="MAKHLabel1" runat="server" Text='<%# Eval("MAKH") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            MAKH:
            <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MAKH:
            <asp:Label ID="MAKHLabel" runat="server" Text='<%# Eval("MAKH") %>' />
            <br />
            HoTen:
            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Nhom5_QLBH.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [Khach_Hang] ([MAKH], [HoTen], [email]) VALUES (@MAKH, @HoTen, @email)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MAKH], [HoTen], [email] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [HoTen] = @HoTen, [email] = @email WHERE [MAKH] = @MAKH">
        <DeleteParameters>
            <asp:Parameter Name="MAKH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MAKH" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="MAKH" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
