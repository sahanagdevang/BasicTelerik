<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="BasicTelerik.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="radscriptmanager" runat ="server" ></telerik:RadScriptManager>
        
        <div>
        
            <table>
                
             <tr>
                 
                 <td><asp:Label ID="lblName" runat="server" Text="Name" Width="60px"></asp:Label></td>
                 <td><telerik:RadTextBox ID="rdtxtName" runat="server" width="200px" EmptyMessage="Enter Name" RenderMode="Lightweight"></telerik:RadTextBox></td>
             </tr>
             <tr>
                 <td><asp:Label ID="Label1" runat="server" Text="Address" Width="60px"></asp:Label></td>
                 <td><telerik:RadTextBox ID="rdtxtAddress" runat="server" width="200px" EmptyMessage="Enter Address" RenderMode="Lightweight"></telerik:RadTextBox></td>
             </tr>
             <tr>
                 <td><asp:Label ID="Label2" runat="server" Text="Age" Width="60px"></asp:Label></td>
                 <td><telerik:RadTextBox ID="rdtxtAge" runat="server" width="200px" EmptyMessage="Enter Age" RenderMode="Lightweight"></telerik:RadTextBox></td>
             </tr>
             <tr>
                 <td></td>
                 <td><telerik:RadButton ID="btnSave" runat="server" Text="Save" RenderMode="Lightweight" 
                     OnClick="rdbtnSave_Click" BackColor="OrangeRed" ForeColor="White" BorderStyle="Solid" BorderColor="Black" Font-Bold="true"></telerik:RadButton></td>
             </tr>
              <tr>
                 <td></td>
                 <td><telerik:RadButton ID="btnGenerate" runat="server" Text="Generate" RenderMode="Lightweight" 
                     OnClick="generate_Click" BackColor="OrangeRed" ForeColor="White" BorderStyle="Solid" BorderColor="Black" Font-Bold="true"></telerik:RadButton></td>
             </tr>
            </table>
            <table>
             <tr>
                 <td>
                     
                    <telerik:RadGrid ID="RadGrid1" runat="server"  RenderMode="Lightweight" Height="400px" Width="100%" AllowFilteringByColumn="True" 
                        AllowPaging="True" AllowMultipleRowSelect="True" 
                        OnNeedDataSource="RadGrid1_NeedDataSource" AutoGenerateColumns="true"
                        OnPageIndexChanged="RadGrid1_PageIndexChanged">
                        
                <PagerStyle BackColor="Red" Height="20px" EnableAllOptionInPagerComboBox="true"/>
                <MasterTableView AutoGenerateColumns="false" DataKeyNames="PersonId" BackColor="SkyBlue"  HeaderStyle-BackColor="DarkBlue" HeaderStyle-Font-Bold="true" 
                            HeaderStyle-ForeColor="White" FilterItemStyle-BackColor="WindowFrame" FooterStyle-BackColor="WindowFrame" TableLayout="Fixed">
                                        <RowIndicatorColumn><HeaderStyle Width="20px"></HeaderStyle></RowIndicatorColumn>
                <ExpandCollapseColumn><HeaderStyle Width="20px"></HeaderStyle></ExpandCollapseColumn>
                <Columns>
                      <%--<telerik:GridCheckBoxColumn  DataField="SelectIt" DataType="System.Boolean" HeaderText="SelectIt" 
            SortExpression="SelectIt" UniqueName="SelectIt" HeaderStyle-Width="120px" AllowFiltering="false">--%>
            <telerik:GridBoundColumn HeaderText="Id" DataField="PersonId" HeaderStyle-Width="100px"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Name" DataField="PersonName" ></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Address" DataField="PersonAddress" ></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Age" DataField="PersonAge" ></telerik:GridBoundColumn>
           
                     <%-- </telerik:GridCheckBoxColumn>--%>
                </Columns>
                 </MasterTableView>
        <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
    
    <ClientSettings EnableRowHoverStyle="true">
 <Selecting AllowRowSelect="True" />
 <Scrolling AllowScroll="True" UseStaticHeaders="True" />
<Resizing AllowColumnResize="True" AllowRowResize="false" ResizeGridOnColumnResize="false"
                                      ClipCellContentOnResize="true" EnableRealTimeResize="false" AllowResizeToFit="true" />
 </ClientSettings>
 <%--<SelectedItemStyle BackColor="Black" BorderColor="Purple" BorderStyle="Dashed" BorderWidth="1px" />--%>
<FilterMenu RenderMode="Lightweight"></FilterMenu>
<HeaderContextMenu RenderMode="Lightweight">
 </HeaderContextMenu>
 </telerik:RadGrid>
                 </td>
             </tr>

         </table>
            <br/>
            <br/>
            <telerik:RadButton ID="ClearBtn" runat="server" Text="Clear Grid" BackColor="OrangeRed" ForeColor="White" BorderStyle="Solid" BorderColor="Black" Font-Bold="true" OnClick="ClearBtn_Click">
        </telerik:RadButton>
             <br/>
             <br/>

            <telerik:RadLabel ID="clearMsg" runat="server" Text="no Data present" ForeColor="Red">
        </telerik:RadLabel>
            </div>

        

        <br />
         

    </form>
</body>
</html>
