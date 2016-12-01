﻿<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Comp229_TeamProject.Admin" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table class="table">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" EditRowStyle-BorderStyle="Groove" EditRowStyle-CssClass="table" BorderStyle="None" CellSpacing="3" GridLines="Horizontal">
    <Columns>
        <asp:TemplateField HeaderText="Game Id ">
            <ItemTemplate>
                <asp:Label ID="GamesIDLabel1" runat="server" Text='<%#Eval ("GamesID") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Title" ControlStyle-BorderStyle="None">
            <ItemTemplate>
                <asp:Label ID="TitleLabel1" runat="server" Text='<%#Eval ("Title") %>' BorderStyle="None"></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Genre">
            <ItemTemplate>
                <asp:Label ID="GenreLabel1" runat="server" Text='<%#Eval ("Genre") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

         <Columns>
        <asp:TemplateField HeaderText="Price ($)">
            <ItemTemplate>
                <asp:Label ID="PriceLabel1" runat="server" Text='<%#Eval ("Price") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

         <Columns>
        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="DescriptionLabel1" runat="server" Text='<%#Eval ("Description") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Review Score">
            <ItemTemplate>
                <asp:Label ID="Review_scoreLabel1" runat="server" Text='<%#Eval ("Review_score") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Completed Status">
            <ItemTemplate>
                <asp:Label ID="Completed_statusLabel1" runat="server" Text='<%#Eval ("Completed_status") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
                 <ItemTemplate>
                                                                                 <%--added update comandName--%>
                     <asp:Button ID="UpdateButton" class="btn" runat="server" Text="update" CommandName="Update" />
                 </ItemTemplate>
            </asp:TemplateField>

             
            <asp:TemplateField>
                 <ItemTemplate>
                     <%--<asp:Button ID="DeleteButton" class="btn" runat="server" Text="Delete" />--%>
                      <asp:Button ID="DeleteButton" class="btn" runat="server" Text="Delete"  />
                     
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                 <ItemTemplate>
                     <%--<asp:Button ID="AddButton" class="btn" onClick="AddButton_Click" runat="server" Text="Add" />--%>
                 </ItemTemplate>
            </asp:TemplateField>
    </Columns>
 
    
    </asp:GridView>




</table>
    <%--<asp:Button ID="DeleteButton" class="btn" runat="server" Text="Delete" OnClick="DeleteButton_Click" />--%>
 <div class="form-group">
  <label class="usr">Title:</label>
<asp:TextBox class="form-control" ID="TextTitle" runat="server"/>
     </div>
    <div class="form-group">
  <label class="usr">Genre:</label>
<asp:TextBox class="form-control" ID="TextGenre" runat="server"/>
     </div>
    <div class="form-group">
  <label class="usr">Price:</label>
<asp:TextBox class="form-control" ID="TextPrice" runat="server"/>
     </div>
    <div class="form-group">
  <label class="usr">Description:</label>
<asp:TextBox class="form-control" ID="TextDescription" runat="server"/>
     </div>
    <div class="form-group">
  <label class="usr">Review score:</label>
<asp:TextBox class="form-control" ID="TextReview" runat="server"/>
     </div>
    <div class="form-group">
  <label class="usr">Completed:</label>
<asp:TextBox class="form-control" ID="TextCompleted" runat="server"/>
         <asp:Button ID="AddButton" class="btn" onClick="AddButton_Click" runat="server" Text="Add" />
        
        <h1>Delete and edit</h1>



        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="GamesID" DataSourceID="SqlDataSource1" OnRowDeleting="GridView2_RowDeleting">
            <Columns>
                <asp:BoundField DataField="GamesID" HeaderText="GamesID" InsertVisible="False" ReadOnly="True" SortExpression="GamesID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Review_score" HeaderText="Review_score" SortExpression="Review_score" />
                <asp:BoundField DataField="Completed_status" HeaderText="Completed_status" SortExpression="Completed_status" />
          <asp:CommandField ShowDeleteButton="true" />
                
                 <asp:CommandField ShowEditButton="true" />

                  </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team_ProjectConnectionString %>" 
            SelectCommand="SELECT * FROM [Games]"
            DeleteCommand="Delete from [Games] WHERE [GamesID]=@GamesID">
            <DeleteParameters>
                <asp:Parameter Name="GamesID" Type="Int32" />

            </DeleteParameters>
        </asp:SqlDataSource>
     </div>









</asp:Content>

