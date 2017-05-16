<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OasisComp1.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Product List</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="-1" DataKeyNames="ProdID" DataSourceID="SqlDataSource2" GridLines="None">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ProdName" HeaderText="Product Name" SortExpression="ProdName" />
            <asp:BoundField DataField="ProdDesc" HeaderText="Description" SortExpression="ProdDesc" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="ProdPrice" HeaderText="Price" SortExpression="ProdPrice" />
            <asp:HyperLinkField DataNavigateUrlFields="ProdID" DataNavigateUrlFormatString="UploadImage.aspx?ProdID={0}" Text="Upload Image" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [ProdTable] WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDesc] = @original_ProdDesc) OR ([ProdDesc] IS NULL AND @original_ProdDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL))" InsertCommand="INSERT INTO [ProdTable] ([ProdName], [ProdDesc], [Quantity], [ProdPrice]) VALUES (@ProdName, @ProdDesc, @Quantity, @ProdPrice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProdTable]" UpdateCommand="UPDATE [ProdTable] SET [ProdName] = @ProdName, [ProdDesc] = @ProdDesc, [Quantity] = @Quantity, [ProdPrice] = @ProdPrice WHERE [ProdID] = @original_ProdID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDesc] = @original_ProdDesc) OR ([ProdDesc] IS NULL AND @original_ProdDesc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([ProdPrice] = @original_ProdPrice) OR ([ProdPrice] IS NULL AND @original_ProdPrice IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProdID" Type="Int32" />
            <asp:Parameter Name="original_ProdName" Type="String" />
            <asp:Parameter Name="original_ProdDesc" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
          
            <asp:Parameter Name="original_ProdPrice" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="ProdDesc" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="ProdPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProdName" Type="String" />
            <asp:Parameter Name="ProdDesc" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="ProdPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProdID" Type="Int32" />
            <asp:Parameter Name="original_ProdName" Type="String" />
            <asp:Parameter Name="original_ProdDesc" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_ProdPrice" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
