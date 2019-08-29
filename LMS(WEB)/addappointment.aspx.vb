Imports System.Data.SqlClient

Public Class addappointment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim numberOfapp As Int16 = 0
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()

        cmd = New SqlCommand("SELECT TOP 1 aid FROM appointment ORDER BY aid DESC", con)
        numberOfapp = cmd.ExecuteScalar()
        TextBox1.Text = numberOfapp + 1
    End Sub

    Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton1.CheckedChanged
        TextBox7.Text = True
    End Sub

    Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton2.CheckedChanged
        TextBox7.Text = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
    End Sub
End Class