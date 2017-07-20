<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.master" AutoEventWireup="true" CodeFile="showjob.aspx.cs" Inherits="ADMIN_showjob" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form >
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" Height="198px" Width="16px" AutoGenerateColumns="False" OnRowDeleting="Gridview1_rowdeleting" OnRowDataBound="OnRowDataBound"  OnRowCancelingEdit="gridview_rowcanceling" OnRowEditing="gridview_rowediting" OnRowUpdating="Grdview1_updating" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" OnPageIndexChanging="gridview_pageindexchanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               <%-- <asp:BoundField DataField="Category" HeaderText="Category" />
                 <asp:BoundField DataField="States" HeaderText="States" />--%>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="LOGO">
                    <ItemTemplate>
                        <asp:Image ID="ImageLogo" runat="server" ImageUrl='<%# Eval("Logo") %>' Height="100px" Width="100px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Image ID="ImageLogou" runat="server" ImageUrl='<%# Eval("Logo") %>' Height="100px" Width="100px" />
                        <asp:FileUpload ID="FileUpload1" runat="server" ImageUrl='<%# Eval("Logo") %>' Height="100px" Width="100px" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextName" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Recruiter">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Recruiter") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Label ID="Label44" runat="server" Text='<%#Eval("Recruiter") %>' visible="false"></asp:Label>
                        <asp:DropDownList ID="ddlrecruiter" runat="server" >
                            
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Postname">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("Postname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Textpostname" runat="server" Text='<%#Eval("Postname") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Category">
                   <ItemTemplate>
                       <asp:Label ID="Label6" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                   </ItemTemplate>
                   <EditItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%#Eval("Category") %>' Visible="false"></asp:Label>
                       <asp:DropDownList ID="ddlcategory" runat="server"  >
                             
                       </asp:DropDownList>
                   </EditItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField headertext="State">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("States") %>' ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Label ID="Label27" runat="server" Text='<%#Eval("States") %>' Visible="false"></asp:Label>
                        <asp:DropDownList ID="ddlstate" runat="server" >
                            
                        </asp:DropDownList>
                    </EditItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField headertext="Description">
                   
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Descriptions") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="Textdescription" runat="server" Text='<%#Eval("Descriptions") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>
                 <asp:TemplateField headertext="NoOfVacancy">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelNoOfVacancy" runat="server" Text='<%#Eval("NoOfVacancy") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextNoOfVacancy" runat="server" Text='<%#Eval("NoOfVacancy") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>


                 <asp:TemplateField headertext="PayScale">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelPayScale" runat="server" Text='<%#Eval("PayScale") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextPayScale" runat="server" Text='<%#Eval("PayScale") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>




                <asp:TemplateField headertext="GradePay">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelGradePay" runat="server" Text='<%#Eval("GradePay") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextGradePay" runat="server" Text='<%#Eval("GradePay") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>
                

                <asp:TemplateField headertext="Nationality">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelNationality" runat="server" Text='<%#Eval("Nationality") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label444" runat="server" Text='<%#Eval("Nationality") %>' visible="false"></asp:Label>
                        <asp:DropDownList ID="ddlnationality" runat="server">
                                                    
                        </asp:DropDownList>
                        

                    </EditItemTemplate>

                </asp:TemplateField>


                 <asp:TemplateField headertext="AgeLimit">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelAgeLimit" runat="server" Text='<%#Eval("AgeLimit") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextAgeLimit" runat="server" Text='<%#Eval("AgeLimit") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>

                  <asp:TemplateField headertext="AgeRelaxation">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelAgeRelaxation" runat="server" Text='<%#Eval("AgeRelaxation") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextAgeRelaxation" runat="server" Text='<%#Eval("AgeRelaxation") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>

                
                  <asp:TemplateField headertext="JobLocation">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelJobLocation" runat="server" Text='<%#Eval("JobLocation") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextJobLocation" runat="server" Text='<%#Eval("JobLocation ") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>


                <asp:TemplateField headertext="SelectionProcess">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelSelectionProcess" runat="server" Text='<%#Eval("SelectionProcess") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextSelectionProcess" runat="server" Text='<%#Eval("SelectionProcess") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>


                
                <asp:TemplateField headertext="ApplicationFee">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelApplicationFee" runat="server" Text='<%#Eval("ApplicationFee") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextApplicationFee" runat="server" Text='<%#Eval("ApplicationFee") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField headertext="HowToApply">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelHowToApply" runat="server" Text='<%#Eval("HowToApply") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextHowToApply" runat="server" Text='<%#Eval("HowToApply") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>


                 <asp:TemplateField headertext="PostalAddress">
                   
                    <ItemTemplate>
                        <asp:Label ID="LabelPostalAddress" runat="server" Text='<%#Eval("PostalAddress") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                       <asp:TextBox ID="TextPostalAddress" runat="server" Text='<%#Eval("PostalAddress") %>' TextMode="MultiLine"></asp:TextBox>
                       
                    </EditItemTemplate>

                </asp:TemplateField>



                <asp:TemplateField headertext="Qualification">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("Qualification") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                         <asp:Label ID="Label999" runat="server" Text='<%#Eval("Qualification") %>' Visible="false"></asp:Label>
                        <asp:DropDownList ID="ddlqualification" runat="server" >
                            
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField headertext="Postdate">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server"  Text='<%#Eval("Postdate") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Textpostdate" runat="server" Text='<%#Eval("Postdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                   
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lastdate">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("Lastdate") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Textlastdate" runat="server" Text='<%#Eval("Lastdate") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Waytoapply">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("Waytoapply") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Textwaytoapply" runat="server"  Text='<%#Eval("Waytoapply") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Link">
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server"  Text='<%#Eval("Link") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                          <asp:TextBox ID="Textlink" runat="server"  Text='<%#Eval("Link") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                
              
                
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                
               
               
            </Columns>

            <EditRowStyle BackColor="#2461BF" />

            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>

