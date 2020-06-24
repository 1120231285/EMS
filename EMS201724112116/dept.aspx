<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dept.aspx.cs" Inherits="EMS201724112116.dept" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>公司部门情况</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            min-width: 0;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            min-width: 0;
            max-width: 100%;
            left: 1px;
            top: 1px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style3 {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width:80%;margin-top:30px;">
            <div class="row">
               <div class ="auto-style1">
                <div class="auto-style2">
                    <div class="card-header bg-info text-center" style="text-align: center !important">
                        部门管理&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp; </span><a class="auto-style3" href="Equ.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="auto-style3" href="Emp.aspx">员工管理</a></div>
                </div>
                   <div class="card-body text-center">
                        
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:LinkButton runat="server"  ID="btnToLog" OnClick="btnToLog_Click">登录</asp:LinkButton>
                        
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" />
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        
                        <br />
                        
                        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="EMS201724112116.Models.EMSdb1Entities" EntityTypeName="" Select="new (dept_id, dept_name, dept_manager)" TableName="dept">
                        </asp:LinqDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="dept_id" HeaderText="dept_id" ReadOnly="True" SortExpression="dept_id" />
                                <asp:BoundField DataField="dept_name" HeaderText="dept_name" ReadOnly="True" SortExpression="dept_name" />
                                <asp:BoundField DataField="dept_manager" HeaderText="dept_manager" ReadOnly="True" SortExpression="dept_manager" />
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
                        <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="LinqDataSource1">
                            <asp:SearchExpression DataFields="dept_id,dept_name,dept_manager" SearchType="StartsWith">
                                <asp:ControlParameter ControlID="TextBox1" />
                            </asp:SearchExpression>
                        </asp:QueryExtender>
                        <br />
                        <table align="center" class="auto-style6">
                            <tr>
                                <td class="auto-style9">部门编号：</td>
                                <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">部门名称：</td>
                                <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">部门主管：</td>
                                <td class="auto-style10">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="插入" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" Text="删除" OnClick="Button4_Click" />
                        <br />
                        <br />
                        <br />
                    </div>
                        <div class="card-footer text-center" >本系统肇庆学院黄学平提供技术支持</div>
                </div>
            </div> 
        </div>
    </form>

</body>
</html>
