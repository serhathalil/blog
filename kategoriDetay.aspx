﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="kategoriDetay.aspx.cs" Inherits="kategoriDetayY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-top: 20px">
                <asp:datalist id="dl_kategori" runat="server">
                    <ItemTemplate>
                        <div class="card mb-4">
                            <div class="card mb-4">
                                <img class="card-img-top" src="<%# Eval("kategoriResim") %>">
                            </div>
                            <div class="card-body">
                                <h2 class="card-title">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Label></h2>
                                <p class="card-text">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOzet") %>'></asp:Label>
                                </p>
                                <a href="makaledetay.aspx?makaleID=<%#Eval("makaleID")%>">
                                    <button type="button" class="btn btn-primary" style="float: right;">Devamını Oku</button></a>
                            </div>
                            <div class="card-footer text-muted">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>'></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("makaleYorumSayisi") %>'></asp:Label>&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("makaleOkunma") %>'></asp:Label>
                            </div>
                        </div>
            </div>
            </ItemTemplate>
                </asp:DataList>
        </div>
    </div>
    </div>
</asp:Content>

