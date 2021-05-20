<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="BasicTelerik.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    </head>
<body>

    <form id="form1" runat="server">
                <telerik:RadScriptManager ID="radscriptmanager1" runat ="server" ></telerik:RadScriptManager>
       
        <div>


          
<%--              <telerik:RadDropDownList ID="loginlist" runat="server" RenderMode="Lightweight" DefaultMessage="Select Role">
                   <Items>
                        <telerik:DropDownListItem Text="Manager" />
                        <telerik:DropDownListItem Text="Lead" />
                        <telerik:DropDownListItem Text="User" />
                   </Items>--%>
            <%--  </telerik:RadDropDownList>--%>
          
             
              <br />
       

              <telerik:RadComboBox ID="loginCombo" Runat="server" MarkFirstMatch="true" ShowDropDownOnTextboxClick="true"
                  ValidationGroup="validationGroup" OnDataBinding="loginCombo_DataBinding">
                  <%--<DefaultItem Text="Please select Role" Value="-1" />--%>
                  
                  
              </telerik:RadComboBox>
             <br />
        <br />
                  <telerik:RadTextBox ID="passwordtxt" runat="server" width="200px" EmptyMessage="Enter Password"
                      RenderMode="Lightweight" ></telerik:RadTextBox>
              <br />
       
            
              <br />
              <telerik:RadButton ID="LoginBtn" runat="server" Text="Login" ValidationGroup="validationGroup" OnClick="LoginBtn_Click">
              </telerik:RadButton>
           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="validationGroup" ControlToValidate="RadComboBox1" ErrorMessage="You should select item!"
    InitialValue="-1"></asp:RequiredFieldValidator>--%>
                  </div>          
    </form>
</body>
</html>
