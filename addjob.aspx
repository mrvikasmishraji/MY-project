<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.master" AutoEventWireup="true" CodeFile="addjob.aspx.cs" Inherits="ADMIN_addjob" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   

    <style type="text/css">
        #form1 {
           
        }
        .auto-style8 {
            width: 261px;
            height: 20px;
        }
        .auto-style9 {
            width: 241px;
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            width: 261px;
            height: 79px;
        }
        .auto-style12 {
            width: 241px;
            height: 22px;
            font-style: italic;
        }
        .auto-style13 {
            height: 79px;
        }
        .auto-style14 {
            width: 129px;
            font-style: italic;
        }
        .auto-style15 {
            font-style: italic;
        }
        .auto-style16 {
            width: 241px;
        }
        .auto-style17 {
            width: 241px;
            font-style: italic;
        }
        .auto-style18 {
        }
        .auto-style19 {
            font-size: xx-large;
            text-align:center;
            text-decoration: underline;
        }
        .auto-style20 {
            width: 241px;
            height: 79px;
            font-style: italic;
        }
        .auto-style21 {
            width: 241px;
            font-style: italic;
            height: 20px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1">
   <table>
                        <tr>
                            <td class="auto-style19" colspan="3" rowspan="2"><em>REGISTER JOB</em></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                        <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                        <tr>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <td class="auto-style16">
                            &nbsp;</td>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" Text="LOGO"></asp:Label>
                            </td>
                        <td>
                            <asp:FileUpload ID="uploadlogo" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style12">
                            <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label3" runat="server" Text="RECRUITER"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlrecruiter" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label4" runat="server" Text="POSTNAME"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpostname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label5" runat="server" Text="CATEGORY"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlcategory" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label6" runat="server" Text="STATE"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlstate" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style20">
                            <asp:Label ID="Label7" runat="server" Text="DESCRIPTION"></asp:Label>
                           
                            
                        </td>
                        <td class="auto-style13">
                            
                          <asp:TextBox ID="txtbxdescription" runat="server" textmode="MultiLine"></asp:TextBox>
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label20" runat="server" Text="NoOfVacancy"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtnovacancy" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style21">
                            <asp:Label ID="Label21" runat="server" Text="PayScale"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtpayscale" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label22" runat="server" Text="GradePay"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtgradepay" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label23" runat="server" Text="Nationality"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlnationality" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label24" runat="server" Text="AgeLimit"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtagelimit" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label25" runat="server" Text="AgeRelaxation"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtagerelaxation" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label26" runat="server" Text="JobLocation"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtjoblocation" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label28" runat="server" Text="SelectionProcess"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtselectionprocess" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label29" runat="server" Text="ApplicationFee"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtappsfee" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label30" runat="server" Text="HowToApply
                                "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txthow2apply" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label27" runat="server" Text="PostalAddress"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpostaladdrss" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label8" runat="server" Text="QUALIFICATION"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlquali" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label9" runat="server" Text="POSTDATE"></asp:Label>
                        </td>
                        <td>
                           
                            <asp:TextBox ID="txtpostdate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label10" runat="server" Text="LASTDATE"></asp:Label>
                        </td>
                        <td>
                              <asp:TextBox ID="txtlastdate" runat="server"></asp:TextBox>
                              <%--<asp:TextBox ID="txtlink" runat="server"></asp:TextBox>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label11" runat="server" Text="WAYTOAPPLY"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtwaytoapply" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Label ID="Label12" runat="server" Text="LINK"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlink" runat="server"></asp:TextBox>
                            <%--<asp:TextBox ID="txtlink" runat="server"></asp:TextBox>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9">
                            &nbsp;</td>
                        <td class="auto-style10">
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Text="SUBMIT" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
       <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </table>
          </form>
                  
                   
   
</asp:Content>

