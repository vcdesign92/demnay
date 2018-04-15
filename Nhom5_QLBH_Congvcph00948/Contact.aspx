<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Nhom5_QLBH_Congvcph00948.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>0976762488</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>0929585525</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="Congvcph00948@fpt.edu.vn">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="vcdesign92@gmail.com">Marketing@example.com</a></span>
        </p>
        
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
          Tòa nhà FPT Polytechnic (nhà H), Hàm Nghi, Mỹ Đình, Từ Liêm, Hà Nội<br />
           Tư vấn 1: (024) 8582 0808

Tư vấn 2: (024) 6684 0713

Tư vấn 3: (024) 6684 1713
        </p>
    </section>
</asp:Content>