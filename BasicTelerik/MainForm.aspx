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
                <tr></tr>
              <tr>
                 <td></td>
                 <td><telerik:RadButton ID="btnGenerate" runat="server" Text="Generate" RenderMode="Lightweight" OnNeedDataSource="RadGrid1_NeedDataSource" 
                     OnClick="btn1_Click" BackColor="OrangeRed" ForeColor="White" BorderStyle="Solid" BorderColor="Black" Font-Bold="true"></telerik:RadButton></td>
             </tr>
            </table>
            <table>
             <tr>
                 <td>
                     
                    <telerik:RadGrid ID="RadGrid1" runat="server"  RenderMode="Lightweight" Height="500px" Width="100%" AllowFilteringByColumn="True" 
                        AllowPaging="True" AllowMultipleRowSelect="True" 
                        OnNeedDataSource="RadGrid1_NeedDataSource" 
                        OnPageIndexChanged="RadGrid1_PageIndexChanged">
                        <PagerStyle BackColor="Red" Height="20px" EnableAllOptionInPagerComboBox="true"/>
                       
                    
                        <MasterTableView AutoGenerateColumns="false" DataKeyNames="PersonId" BackColor="SkyBlue"  HeaderStyle-BackColor="DarkBlue" HeaderStyle-Font-Bold="true" 
                            HeaderStyle-ForeColor="White" FilterItemStyle-BackColor="WindowFrame" FooterStyle-BackColor="WindowFrame">

                             <Columns>
                                <telerik:GridBoundColumn HeaderText="Person Id" DataField="PersonId" HeaderStyle-Width="120px" FilterControlWidth="50px"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Name" DataField="PersonName" FilterControlWidth="50px"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Address" DataField="PersonAddress" FilterControlWidth="50px"></telerik:GridBoundColumn>
                                <telerik:GridBoundColumn HeaderText="Person Age" DataField="PersonAge" FilterControlWidth="50px"></telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                        
<GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>

                        <ClientSettings EnableRowHoverStyle="true">
                                <Selecting AllowRowSelect="True" />
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                        </ClientSettings>
                        <SelectedItemStyle BackColor="Black" BorderColor="Purple" BorderStyle="Dashed" BorderWidth="1px" />
                                 <FilterMenu RenderMode="Lightweight"></FilterMenu>
                                 <HeaderContextMenu RenderMode="Lightweight">

                                 </HeaderContextMenu>
                        
                    </telerik:RadGrid>
                 </td>
             </tr>

         </table>
           
            </div>

    </form>
</body>
</html>
