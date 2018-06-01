<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="Style.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css?family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <h1>Sign Up</h1>
                    <asp:TextBox ID="userNameTextBox" placeholder="Introdu un nume de utilizator" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="userNameTextBox" ErrorMessage="Camp obligatoriu!" ForeColor="#E80000"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="emailTextBox" placeholder="Introdu adresa de E-mail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="emailTextBox" ErrorMessage="Camp obligatoriu!" ForeColor="#E80000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="emailTextBox" ErrorMessage="Email invalid!" ForeColor="#E80000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    <asp:TextBox ID="PasswordTextBox" placeholder="Alege o parola sigura" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="PasswordTextBox" ErrorMessage="Camp obligatoriu!" ForeColor="#E80000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ControlToValidate="PasswordTextBox" ErrorMessage="Parola trebuie sa fie intre4-8 caractaer si sa contina cel putin o litera mare, una mica si o cifra!" ForeColor="black " ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>

                    <asp:TextBox ID="confPassTextBox" placeholder="Confirma Parola" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="confPassTextBox" ErrorMessage="Camp obligatoriu!" ForeColor="#E80000"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToCompare="PasswordTextBox" ControlToValidate="confPassTextBox" ErrorMessage="Cele doua parole nu coincid." ForeColor="#E80000"></asp:CompareValidator>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn" Text="Submit" />
                    <br/><asp:Label ID="LabelContNou" Visible="false" ForeColor="Red" runat="server" Text="Inregistrarea a fost facuta cu succes!"></asp:Label>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
