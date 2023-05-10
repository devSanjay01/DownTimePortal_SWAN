﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="DHQHome.aspx.cs" Inherits="DHQHome" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder8" runat="Server">
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: small;
        }
        .row:hover
        {
            background-color:#ffcccc;
        }
    </style>
    <table align="center" style="font-size: small" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td id="htd">
                A-End
            </td>
            <td id="htd">
                B-End
            </td>
            <td id="htd">
                Band<br />
                width
            </td>
            <td id="htd">
                NOC Open<br />
                Time
            </td>
            <td id="htd">
                NOC Close<br />
                Time
            </td>
            <td id="htd">
                LL Down
                <br />
                Date
            </td>
            <td id="htd">
                LL Down
                <br />
                Time
            </td>
            <td id="htd">
                Report
                <br />
                to<br />
                Agency
            </td>
            <td id="htd">
                LL UP
                <br />
                Date
            </td>
            <td id="htd" rowspan="1">
                LL UP
                <br />
                Time
            </td>
            <td id="htd" colspan="2">
                Reason
            </td>
            <td id="htd">
                Total Time
            </td>
            <td id="htd">
                Remark
            </td>
            <td id="htd">
                Docket No(IF)
            </td>
        </tr>
        <tr>
            <td id="ctd">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Height="20px" CssClass="style1">
                </asp:DropDownList>
            </td>
            <td id="ctd">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
                    Height="20px" CssClass="style1">
                </asp:DropDownList>
            </td>
            <td id="ctd">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td id="ctd">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td id="ctd">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox1" runat="server" Width="80px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                    TargetControlID="TextBox1">
                </asp:CalendarExtender>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox2" runat="server" Width="50px" OnTextChanged="TextBox2_TextChanged"
                    AutoPostBack="True">00:00</asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="TextBox2" WatermarkText="hh:mm">
                </asp:TextBoxWatermarkExtender>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox3" runat="server" Width="40px">NA</asp:TextBox>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox4" runat="server" Width="80px" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" Format="dd/MM/yyyy"
                    TargetControlID="TextBox4">
                </asp:CalendarExtender>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox5" runat="server" Width="50px" OnTextChanged="TextBox5_TextChanged"
                    AutoPostBack="True">00:00</asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="TextBox5_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="TextBox5" WatermarkText="hh:mm">
                </asp:TextBoxWatermarkExtender>
            </td>
            <td id="ctd" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style1" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Reason</asp:ListItem>
                    <asp:ListItem>R1</asp:ListItem>
                    <asp:ListItem>R2</asp:ListItem>
                    <asp:ListItem>R3</asp:ListItem>
                    <asp:ListItem>R4</asp:ListItem>
                    <asp:ListItem>R5</asp:ListItem>
                    <asp:ListItem>R6</asp:ListItem>
                    <asp:ListItem>R7</asp:ListItem>
                    <asp:ListItem>R8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td id="ctd">
                <asp:Label ID="Label9" runat="server" Text="0" Width="100px"></asp:Label>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="120px"></asp:TextBox>
            </td>
            <td id="ctd">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Phone" Width="60px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="11" bgcolor="#FFCC66" width="100%">
                <asp:Label ID="Label12" runat="server" Font-Italic="True" ForeColor="#FF3300" Text="Label"
                    Visible="False"></asp:Label>
            </td>
            <td align="right" class="style5" colspan="4" bgcolor="#FFCC66">
                <asp:Button ID="Button1" runat="server" Text="Entry Down Time" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="15" align="center" width="100%">
                <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False"
                    AllowSorting="True" DataSourceID="Downtimesource" AllowPaging="True" 
                    CellPadding="1" PageSize="30" ShowHeaderWhenEmpty="True" OnRowDeleting="GridView1_RowDeleting"
                    DataKeyNames="A_End,B_End,LLDown_Date,LLDown_Time,LLUP_Date,LLUP_Time,Reason"
                    OnRowCommand="GridView1_RowCommand" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No">
                            <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="A-END">
                            <ItemTemplate>
                                <%#Eval("A_END") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="B-END">
                            <ItemTemplate>
                                <%#Eval("B_END") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Band-<br/>width">
                            <ItemTemplate>
                                <%#Eval("Bandwidth")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NOC <br/>Open">
                            <ItemTemplate>
                                <%#Convert.ToDateTime(Eval("NOC_Open").ToString()).ToString("HH:mm")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NOC<br/>Close ">
                            <ItemTemplate>
                                <%#Convert.ToDateTime(Eval("NOC_Close").ToString()).ToString("HH:mm")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LL Down<br/>Date">
                            <ItemTemplate>
                                <%# Convert.ToDateTime(Eval("LLDown_Date")).ToShortDateString() %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LL<br/>Down<br/>Time">
                            <ItemTemplate>
                               <%#Convert.ToDateTime(Eval("LLDown_Time").ToString()).ToString("HH:mm")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Report<br/> to<br/>Agency">
                            <ItemTemplate>
                                <%#Eval("Report_Agency")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LL UP<br/>Date">
                            <ItemTemplate>
                                <%# Convert.ToDateTime(Eval("LLUP_Date")).ToShortDateString() %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LL<br/>UP<br/>Time">
                            <ItemTemplate>
                                <%#Convert.ToDateTime(Eval("LLUP_Time").ToString()).ToString("HH:mm")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Reason">
                            <ItemTemplate>
                                <%#Eval("Reason")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total DownTime">
                            <ItemTemplate>
                                <%#Eval("TotalDown_Time")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Remark">
                            <ItemTemplate>
                                <%#Eval("Remark")%>
                            </ItemTemplate>
                            <ItemStyle Width="150px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Docket<br/>No">
                            <ItemTemplate>
                                <%#Eval("Docket_No")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" ForeColor="#FF3300" OnClientClick="return confirm('Do you want to Delete this ?')"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerSettings FirstPageText="First" LastPageText="Last"
                        NextPageText="&gt;&gt;" PreviousPageText="&lt;&lt;" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" CssClass="row" ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="Downtimesource" runat="server" ConnectionString="<%$ ConnectionStrings:con_str %>"
                    SelectCommand="SELECT [A_End], [B_End], [Bandwidth], [NOC_Open], [NOC_Close], [LLDown_Date], [LLDown_Time], [Report_Agency], [LLUP_Date], [LLUP_Time], [Reason], [TotalDown_Time], [Remark], [Docket_No] FROM [Downdetail] WHERE (([A_End] = @A_End) AND ([B_End] = @B_End))  ORDER BY LLUP_Date DESC "
                    DeleteCommand="Delete from Downdetail where A_End=@aend and B_End=@bend and LLDown_Date=@lldwndt and LLDown_Time=@lldwntm and LLUP_Date=@llupdt and LLUP_Time=@lluptm and Reason=@rsn">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="A_End" PropertyName="Text"
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="B_End" PropertyName="Text"
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="aend" DbType="String" />
                        <asp:Parameter Name="bend" DbType="String" />
                        <asp:Parameter Name="lldwndt" DbType="Date" />
                        <asp:Parameter Name="lldwntm" DbType="Time" />
                        <asp:Parameter Name="llupdt" DbType="Date" />
                        <asp:Parameter Name="lluptm" DbType="Time" />
                        <asp:Parameter Name="rsn" DbType="String" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder10" runat="Server">
</asp:Content>
<asp:Content ID="Content9" runat="server" ContentPlaceHolderID="ContentPlaceHolder13">
</asp:Content>
<asp:Content ID="Content10" runat="server" ContentPlaceHolderID="ContentPlaceHolder9">
    <asp:TreeView ID="TreeView2" runat="server" Font-Size="Small">
        <HoverNodeStyle BackColor="#FFFF66" />
        <Nodes>
            <asp:TreeNode Text="Home" Value="Search Reports" 
                NavigateUrl="~/DHQ/DHQHome.aspx"></asp:TreeNode>
            <asp:TreeNode Text="District Downtime" Value="District Downtime" 
                NavigateUrl="~/DHQ/DistrictDownDetail.aspx">
            </asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/DHQ/Report.aspx" Text="Report" Value="Generate"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/DHQ/MyDetail.aspx" Text="My Detail" 
                Value="My Detail"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
</asp:Content>
