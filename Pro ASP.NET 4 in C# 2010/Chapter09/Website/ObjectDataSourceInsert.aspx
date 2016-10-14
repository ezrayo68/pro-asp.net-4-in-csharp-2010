﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectDataSourceInsert.aspx.cs" Inherits="ObjectDataSourceInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ObjectDataSource ID="sourceEmployees" runat="server"
         TypeName="DatabaseComponent.EmployeeDB" 
         DataObjectTypeName="DatabaseComponent.EmployeeDetails"
            SelectMethod="GetEmployees"
            InsertMethod="InsertEmployee"         
            DeleteMethod="DeleteEmployee" 
            OnInserted="sourceEmployees_Inserted">
            <InsertParameters>
             <asp:Parameter Direction="ReturnValue" Name="EmployeeID" Type="Int32" Size="4" />
            </InsertParameters>
        </asp:ObjectDataSource>
            
        <asp:DetailsView ID="detailsInsertEmployee" runat="server" DataSourceID="sourceEmployees" DefaultMode="Insert"
         AutoGenerateInsertButton="True" AutoGenerateRows="False"
            Height="50px" Width="125px" CellPadding="4" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" GridLines="None" >
            <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <commandrowstyle backcolor="#D1DDF1" font-bold="True" />
            <rowstyle backcolor="#EFF3FB" />
            <fieldheaderstyle backcolor="#DEE8F5" font-bold="True" />
            <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
            <Fields>                
                <asp:BoundField InsertVisible="False" DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="TitleOfCourtesy" HeaderText="TitleOfCourtesy" SortExpression="TitleOfCourtesy" />                
            </Fields>
            <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
            <editrowstyle backcolor="#2461BF" />
            <alternatingrowstyle backcolor="White" />
        </asp:DetailsView>
        
        <asp:Label ID="lblConfirmation" Font-Name="Verdana" Font-Size="Small" runat="server" EnableViewState="false"></asp:Label>
        <br /><br />
       
        <asp:GridView ID="gridEmployeeList" runat="server" DataSourceID="sourceEmployees" DataKeyNames="EmployeeID"
            CellPadding="4" Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" AutoGenerateDeleteButton="true"
            EnableSortingAndPagingCallbacks="True" PageSize="5" >
           
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>                
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="EmployeeID" InsertVisible="False" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="TitleOfCourtesy" HeaderText="TitleOfCourtesy" SortExpression="TitleOfCourtesy" />                
            </Columns>
        </asp:GridView>               
    
    </div>
    </form>
</body>
</html>