<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.master" AutoEventWireup="true" CodeFile="Add advertisement.aspx.cs" Inherits="ADMIN_Add_advertisement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <link href="../login/css/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Lobster|Pacifico:400,700,300|Roboto:400,100,100italic,300,300italic,400italic,500italic,500' ' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,500,600,700,300' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="Login">
							<div class="Login-head">
						    	<h3>Advertisement Upload</h3>
						 	</div>
                                     <form id="Form1" >
								<div>
									<h4>Name</h4>
						  			 <asp:TextBox ID="txtname" runat="server"></asp:TextBox><span> </span>
						  			<div class="clear"> </div>
						  		</div>
                                         <div>
									<h4>Imageupload</h4>
						  			<asp:FileUpload ID="FileUpload1" runat="server" /><span> </span>
						  			<div class="clear"> </div>
						  		</div>
						  		<div>
						  		<h4>Link</h4>
								 <asp:TextBox ID="txtrank" runat="server"></asp:TextBox>
								  			<div class="clear"> </div>
								</div>
                                         <div>
						  		<h4>Description</h4>
								 <asp:TextBox ID="txtcategory" runat="server" TextMode="MultiLine"></asp:TextBox>
								  			<div class="clear"> </div>
								</div>
								
												 
								<div class="submit-button">
								<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
								</div>
									<div class="clear"> </div>
								</div>
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
											
						  </form>
    
</asp:Content>

