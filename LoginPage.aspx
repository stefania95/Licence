<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Style.css" rel="stylesheet" />
    <link href="bootstrap.min.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css?family=Leckerli+One|Oleo+Script+Swash+Caps');
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section class="cover">
            <div>
                <asp:Image ID="Image1" ImageUrl="~/Images/Panel copy.png" runat="server" />
                <div class="elements">
                    <div class="intro">
                        <asp:Label ID="LabelLogIn" runat="server" Text="login"></asp:Label>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogUn" runat="server" Display="Dynamic" ControlToValidate="userNameTextBox" Font-Bold="true" Font-Size="Medium" ErrorMessage="Introduceti numele de utilizator!" ForeColor="#E80000"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogPass" runat="server" Display="Dynamic" ControlToValidate="passwordTextBox" Font-Bold="true" Font-Size="Medium" ErrorMessage="Introduceti parola!" ForeColor="#E80000" ></asp:RequiredFieldValidator>

                        <asp:TextBox ID="userNameTextBox" placeholder="Nume Utilizator" CssClass="txt1 txtstyle" runat="server" Width="82%"></asp:TextBox>
                        <asp:TextBox ID="passwordTextBox" placeholder="Parola" CssClass="txt2 txtstyle" runat="server" TextMode="Password" Width="82%"></asp:TextBox>

                        <asp:Button ID="LoginButton" CssClass="btn1 btnstyle" runat="server" OnClick="LoginButton_Click" Text="Log in" />
                        <asp:Button ID="RegisterButton" CssClass="btn2 btnstyle" runat="server" OnClick="RegisterButton_Click1" Text="Cont nou" />
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
