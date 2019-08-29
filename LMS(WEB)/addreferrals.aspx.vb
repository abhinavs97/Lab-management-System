Imports System.Data.SqlClient
Public Class addrerrals
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim numberOfref As Int16 = 0
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()

        cmd = New SqlCommand("SELECT TOP 1 rid FROM referrals ORDER BY rid DESC", con)
        numberOfref = cmd.ExecuteScalar()
        TextBox1.Text = numberOfref + 1
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        TextBox15.Text = TextBox8.Text + " " + TextBox9.Text + " , " + TextBox10.Text + " , " + DropDownList1.Text + " , " + TextBox11.Text
        SqlDataSource1.Insert()
        Response.Write("<script type='text/javascript'>alert('Data Added Succesfully!!!');</script>")
    End Sub
End Class