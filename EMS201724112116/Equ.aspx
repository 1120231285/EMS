<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Equ.aspx.cs" Inherits="EMS201724112116.Equ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>设备查看及管理</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            flex-basis: 0;
            flex-grow: 1;
            min-width: 0;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style3 {
            width: 45%;
            height: 269px;
        }
        .auto-style4 {
            width: 498px;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
            width: 388px;
        }
        .auto-style7 {
            width: 498px;
            text-align: right;
            height: 36px;
        }
        .auto-style8 {
            text-align: left;
            width: 388px;
            height: 36px;
        }
        .auto-style9 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div class="container" style="width:80%;margin-top:30px;">
            <div class="row">
               <div class ="col">
                <div class="auto-style1">
                    <div class="card-header bg-info text-center">
                        <a class="auto-style2" href="dept.aspx">部门管理 </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        设备管理&nbsp;&nbsp;&nbsp;&nbsp; <a class="auto-style2" href="Emp.aspx">员工管理</a></div>
                    <div class="text-center">
                        
                        
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:LinkButton runat="server"  ID="btnToLog" OnClick="btnToLog_Click">登录</asp:LinkButton>
                        
                        
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        
                        
                        <br />
                        
                        
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="EMS201724112116.Models.EMSdb1Entities" EntityTypeName="" TableName="Equ" OrderBy="Equ_Id" Select="new (Equ_Id, Equ_name, Equ_standards, Equ_img, Equ_price, Equ_date, Equ_location, Equ_resp)">
                        </asp:LinqDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" CssClass="auto-style9">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Equ_Id" HeaderText="Equ_Id" SortExpression="Equ_Id" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_name" HeaderText="Equ_name" SortExpression="Equ_name" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_standards" HeaderText="Equ_standards" SortExpression="Equ_standards" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_price" HeaderText="Equ_price" SortExpression="Equ_price" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_date" HeaderText="Equ_date" SortExpression="Equ_date" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_location" HeaderText="Equ_location" SortExpression="Equ_location" ReadOnly="True" />
                                <asp:BoundField DataField="Equ_resp" HeaderText="Equ_resp" ReadOnly="True" SortExpression="Equ_resp" />
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
                        <table align="center" class="auto-style3">
                            <tr>
                                <td class="auto-style4">设备编号：</td>
                                <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Height="34px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">设备名称：</td>
                                <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">设备规格：</td>
                                <td class="auto-style6"> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">设备价格：</td>
                                <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">购入日期：</td>
                                <td class="auto-style6"> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">存放位置：</td>
                                <td class="auto-style8">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">设备负责人：</td>
                                <td class="auto-style6">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">图片：</td>
                                <td class="auto-style6">
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="312px" />
                                </td>
                            </tr>
                        </table>
                        <asp:Image ID="Image1" runat="server" />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="插入" OnClick="Button2_Click" />
&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="删除" OnClick="Button4_Click" />
                        <br />
                        
                        
                        <br />
                        <br />
                        <br />
                        <br />
                        
                        
                    </div>
                    <div class="card-footer text-center" >本系统肇庆学院xxx提供技术支持</div>
            </div>
            </div>
        </div>
       </div> 
    </form>
</body>
</html>