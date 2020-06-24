<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ord.aspx.cs" Inherits="EMS201724112116.Ord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>普通员工页面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width:80%;margin-top:30px;">
            <div class="row">
               <div class ="col">
                <div class="auto-style1">
                    <div class="card-header bg-info text-center">
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" OnClick="LinkButton1_Click" >部门管理</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" >设备情况</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" OnClick="LinkButton3_Click">员工管理</asp:LinkButton>
                    </div>
                    <div class="text-center">
                        
                        
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:LinkButton runat="server"  ID="btnToLog" OnClick="btnToLog_Click">登录</asp:LinkButton>
                        
                        
                        <br />
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="EMS201724112116.Models.EMSdb1Entities" EntityTypeName="" TableName="Equ" OrderBy="Equ_Id">
                        </asp:LinqDataSource>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        
                        
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" AllowPaging="True" CellPadding="4" CssClass="active" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Equ_Id" HeaderText="Equ_Id" SortExpression="Equ_Id" />
                                <asp:BoundField DataField="Equ_name" HeaderText="Equ_name" SortExpression="Equ_name" />
                                <asp:BoundField DataField="Equ_standards" HeaderText="Equ_standards" SortExpression="Equ_standards" />
                                <asp:BoundField DataField="Equ_price" HeaderText="Equ_price" SortExpression="Equ_price" />
                                <asp:BoundField DataField="Equ_date" HeaderText="Equ_date" SortExpression="Equ_date" />
                                <asp:BoundField DataField="Equ_location" HeaderText="Equ_location" SortExpression="Equ_location" />
                                <asp:BoundField DataField="Equ_resp" HeaderText="Equ_resp" SortExpression="Equ_resp" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <br />
                        <br />
                        
                        
                        <br />
                        <br />
                        
                        
                    </div>
                    <div class="card-footer text-center" >本系统肇庆学院黄学平提供技术支持</div>
                </div>
            </div>
        </div>
       </div>
    </form>
</body>
</html>
