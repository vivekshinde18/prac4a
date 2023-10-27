<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pract4a" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title></head>
<body>
<form id="form1" runat="server">
<div>
<asp:Label ID="Label1" runat="server" Text="Your Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Name"
ForeColor="Red"></asp:RequiredFieldValidator>
<br /><br />
<asp:Label ID="Label2" runat="server" Text="Enter Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Age"
ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server"
ControlToValidate="TextBox2" ErrorMessage="Enter Valid Age"
ForeColor="Red" MaximumValue="100" MinimumValue="18"
Type="Integer"></asp:RangeValidator>
<br /><br />
<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="TextBox3" runat="server"
TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="TextBox3" ErrorMessage="Please Enter Password"
ForeColor="Red"></asp:RequiredFieldValidator>
<br /><br />
<asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox4" runat="server"
TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="TextBox4" ErrorMessage="Please Confirm Password"
ForeColor="Red"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server"
ControlToCompare="TextBox3" ControlToValidate="TextBox4"
ErrorMessage="Password Not Matched"
ForeColor="Red"></asp:CompareValidator>
<br /><br />
<asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
ControlToValidate="TextBox5" ErrorMessage="Please Enter Email Address"
ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Valid 
Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br /><br />
<asp:Label ID="Label6" runat="server" Text="Custom Text"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
ControlToValidate="TextBox6" ErrorMessage="Please Enter Text"
ForeColor="Red"></asp:RequiredFieldValidator>
<asp:CustomValidator ID="CustomValidator2" runat="server"
ClientValidationFunction="ServerValidation" ControlToValidate="TextBox6"
ErrorMessage="CustomValidator" ForeColor="Red"></asp:CustomValidator>
<br /><br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
Text="Validate" />
<br />
<asp:Label ID="Label7" runat="server"></asp:Label>
<br />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</div></form>
</body>
</html>
