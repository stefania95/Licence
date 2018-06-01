using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DisplayText_Click(object sender, EventArgs e)
    {
        try
        {
            string filepath = Server.MapPath("~/upload") + Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(filepath);
            string text = File.ReadAllText(filepath);
            txtareaOriginal.Text = text;
        }
        catch (Exception ex) { }
    }
    protected void ButtonParseText_Click(object sender, EventArgs e)
    {
        //string fullText = txtareaOriginal.Text;
        //char[] delim = ".?!;".ToCharArray();
        //var sentences = fullText.Split(delim, StringSplitOptions.RemoveEmptyEntries).Select(s => s.Trim());
        //foreach (string s in sentences)
        //    ListBoxParsed.Items.Add(s);
    }



    protected void ListBoxParsed_Click(object sender, EventArgs e)
    {
        //List<ListItem> itemsToDisplay = new List<ListItem>();

        //foreach (ListItem listItem in ListBoxParsed.Items)
        //{
        //    if (listItem.Selected)
        //        itemsToDisplay.Add(listItem);
        //}
        //foreach (ListItem listItem in itemsToDisplay)
        //{
        //    string fullText = listItem.Text;
        //    char[] delim = " ".ToCharArray();
        //    var sentences = fullText.Split(delim, StringSplitOptions.RemoveEmptyEntries).Select(s => s.Trim());
        //    foreach (string s in sentences)
        //        ListBoxParsedSentence.Items.Add(s);
        //}
    }
    protected void ListBoxParsedSentence_Click(object sender, EventArgs e)
    {
        ////txtareaAssignedValues.Text = "";
        ////string selectedItem = ListBoxParsedSentence.SelectedItem.Text;
        //string selValue = (string)RadioButtonListSentenceParts.SelectedValue;
        ////   bool radioListChecked = RadioButtonListSentenceParts.SelectedIndex != -1;

        //List<ListItem> itemsToDisplay = new List<ListItem>();

        //foreach (ListItem listItem in ListBoxParsedSentence.Items)
        //{
        //    if (listItem.Selected)
        //        itemsToDisplay.Add(listItem);
        //}
        //// if (ListBoxParsedSentence.SelectedIndex != -1 /*&& RadioButtonListSentenceParts.SelectedIndex == -1*/)
        //// {
        //foreach (ListItem listItem in itemsToDisplay)
        //{
        //    //string selValue = (string)RadioButtonListSentenceParts.SelectedValue;
        //    txtareaAssignedValues.Text += listItem.Text + "=" + selValue + System.Environment.NewLine;
        //    // RadioButtonListSentenceParts.SelectedIndex == -1;         
        //}

        ////    }

    }
    protected void RadioButtonListSentenceParts_Click(object sender, EventArgs e)
    {
        txtareaAssignedValues.Text = "";
        //if (ListBoxParsedSentence.SelectedIndex == -1 && RadioButtonListSentenceParts.SelectedIndex > -1) {
        //    txtareaAssignedValues.Text += ListBoxParsedSentence.Items+ "=" + selValue;
        //}
        //List<ListItem> itemsToDisplay = new List<ListItem>();

        //foreach (ListItem listItem in SplitWordsListBox.Items)
        //{
        //    if (listItem.Selected)
        //        itemsToDisplay.Add(listItem);
        //}
        //foreach (ListItem listItem in itemsToDisplay)
        //{

        //    txtareaAssignedValues.Text += listItem.Text;
        //}
        //txtareaAssignedValues.Text += SplitWordsTextBox.Text;
        //string selValue = (string)RadioButtonListSentenceParts.SelectedValue;
        //txtareaAssignedValues.Text += "=" + selValue;
    }


    protected void AssignButton_Click(object sender, EventArgs e)
    {

        txtareaAssignedValues.Text += SplitWordsTextBox.Text;
        string selValue = (string)RadioButtonListSentenceParts.SelectedValue;
        txtareaAssignedValues.Text += "=" + selValue;


    }
}
