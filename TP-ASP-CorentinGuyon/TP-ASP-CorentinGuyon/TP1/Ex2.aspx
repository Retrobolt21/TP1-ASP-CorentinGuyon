<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex2.aspx.cs" Inherits="TP_ASP_CorentinGuyon.TP1.Ex2" %>

<!DOCTYPE html>
<script runat="server">

    void Page_Load(Object sender, EventArgs e)
    {

        int numrows = Convert.ToInt32(TextBox1.Text);
        int numcells = Convert.ToInt32(TextBox2.Text);

        for (int j = 0; j < numrows; j++)
        {
            HtmlTableRow row = new HtmlTableRow();

            for (int i = 0; i < numcells; i++)
            {
                HtmlTableCell cell = new HtmlTableCell();
                cell.Controls.Add(new LiteralControl(i.ToString() + " - " + j.ToString()));
                row.Cells.Add(cell);
            }

            Table1.Rows.Add(row);
        }
    }

</script>

<style>
        table
        {
            background-color: red;
            border: 1px solid black;
        }

        tr
        {
            border: 1px solid black;
        }

        tr > td
        {
            border: 1px solid black;
        }

</style>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>HtmlTable Example</title>
</head>
<body>

   <form id="form1" runat="server">
       <asp:Label ID="Label1" runat="server" Text="Nombre de colonnes : "></asp:Label><asp:TextBox ID="TextBox1" runat="server" Text="0"></asp:TextBox><br />
       <asp:Label ID="Label2" runat="server" Text="Nombre de lignes : "></asp:Label><asp:TextBox ID="TextBox2" runat="server" Text="0"></asp:TextBox><br />  
       <input type="submit" value="Générer le tableau" runat="server"/>
       <br />
       <br />
       <table id="Table1" style="border-width:1; border-color:Black; padding:5" cellspacing="0" runat="server"/>
   </form>

</body>
</html>