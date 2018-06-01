<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link href="Style.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            width: 2px;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
    <script>
        function wraptext() {
            var SelectionStart = document.getElementById("txtareaOriginal").selectionStart;
            var SelectionEnd = document.getElementById("txtareaOriginal").selectionEnd;

            var OldVal = document.getElementById("txtareaOriginal").value;
            var NewVal = OldVal.substring(SelectionStart, SelectionEnd); //+ OldVal.substring(SelectionEnd, OldVal.length);

            document.getElementById("SpliSentenceTextBox").value = NewVal;
        }
        function wraptext1() {
            var SelectionStart = document.getElementById("SpliSentenceTextBox").selectionStart;
            var SelectionEnd = document.getElementById("SpliSentenceTextBox").selectionEnd;

            var OldVal = document.getElementById("SpliSentenceTextBox").value;
            var NewVal = OldVal.substring(SelectionStart, SelectionEnd); //+ OldVal.substring(SelectionEnd, OldVal.length);

            document.getElementById("SplitWordsTextBox").value = NewVal;
        }
    </script>
</head>
<body style="margin-left: 0px">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="pageContent">
            <table class="tabelMain">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td colspan="4">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        Incarca Fisier:<br />
                        <asp:FileUpload ID="FileUpload1" runat="server" accept=".txt" />
                        <br />
                        <br />
                        <asp:Button ID="DisplayText0" runat="server" Text="Arata Text" OnClick="DisplayText_Click" /></td>
                    <td>&nbsp;</td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="ButtonParseText" runat="server" OnClick="ButtonParseText_Click" Text="Imparte text in propozitii" OnClientClick="wraptext();" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="4">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtareaOriginal" runat="server" TextMode="MultiLine" Width="400px" Height="300px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="SpliSentenceTextBox" runat="server" TextMode="MultiLine" Width="400px" Height="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="4">
                        <br />
                        <asp:Label ID="LabelParteProp" runat="server" Text="Alege functia sintactica potrivita cuvintelor din fraza selectata:"></asp:Label>
                        <br />
                        <asp:RadioButtonList ID="RadioButtonListSentenceParts" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonListSentenceParts_Click">
                            <asp:ListItem>Subiect</asp:ListItem>
                            <asp:ListItem>Predicat Verbal</asp:ListItem>
                            <asp:ListItem>Predicat Nominal</asp:ListItem>
                            <asp:ListItem>Complement Circumstantial de Timp </asp:ListItem>
                            <asp:ListItem>Complement Circumstantial de Mod </asp:ListItem>
                            <asp:ListItem>Complement Circumstantial de Loc </asp:ListItem>
                            <asp:ListItem>Complement Direct</asp:ListItem>
                            <asp:ListItem>Complement Indirect </asp:ListItem>
                            <asp:ListItem>Atribut Substantival Prepozitional</asp:ListItem>
                            <asp:ListItem>Atribut Substantival Genitival</asp:ListItem>
                            <asp:ListItem>Atribut Adverbial </asp:ListItem>
                            <asp:ListItem>Atribut Pronominal </asp:ListItem>
                            <asp:ListItem>Atribut Pronominal Genitival</asp:ListItem>
                            <asp:ListItem>Atribut Adjectival</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="SplitWordsButton" runat="server" Text="Fetch Word" OnClientClick="wraptext1();" />
                        <br />
                        <br />
                        <asp:TextBox ID="SplitWordsTextBox" runat="server" TextMode="MultiLine" Width="400px" Height="50px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="4">
                        <asp:TextBox ID="txtareaAssignedValues" CssClass="txtarea1" runat="server" TextMode="MultiLine" Width="400px" Height="100px" EnableViewState="true"></asp:TextBox></td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="AssignButton" runat="server" OnClick="AssignButton_Click" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
