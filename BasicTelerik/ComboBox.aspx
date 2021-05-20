<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComboBox.aspx.cs" Inherits="BasicTelerik.ComboBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <telerik:RadScriptManager ID="radscriptmanager1" runat ="server" ></telerik:RadScriptManager>
        <div>
            <telerik:RadLabel ID="RLabel1" runat="server" Text="Roles">
            </telerik:RadLabel>
            <br/>
            <telerik:RadComboBox ID="RadComboBox1" Runat="server" OnSelectedIndexChanged="RadComboBox1_SelectedIndexChanged"
                AutoPostBack="true" DataValueField="Id" DataTextField="Role" Width="250px">
                <DefaultItem Text="Please select Role" Value="-1"/>
            </telerik:RadComboBox>
            <br/>
            <br/>
            <telerik:RadLabel ID="RLabel2" runat="server" Text="Password">
            </telerik:RadLabel>
            <br/>
            <telerik:RadComboBox ID="RadComboBox2" Runat="server" DataValueField="Id" DataTextField="Password" Width="250px">
                 <DefaultItem Text="Please select Password" Value="-1"/>
        </telerik:RadComboBox>
        </div>
        
    </form>
</body>
</html>
