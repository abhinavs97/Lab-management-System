Imports System.Data.SqlClient
Public Class addemp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim empno As Int16 = 0
        System.Diagnostics.Debug.WriteLine("auto generate")
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()
        cmd = New SqlCommand("SELECT TOP 1 eid FROM emp ORDER BY eid DESC", con)
        empno = cmd.ExecuteScalar()
        TextBox1.Text = empno + 1
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        TextBox15.Text = TextBox8.Text + " " + TextBox9.Text + " , " + TextBox10.Text + " , " + DropDownList1.Text + " , " + TextBox11.Text
        If (TextBox2.Text = "" And TextBox4.Text = "") Then
            Response.Write("<script type='text/javascript'>alert('Please Fill All Fields');</script>")
        Else
            SqlDataSource2.Insert()
            Response.Write("<script type='text/javascript'>alert('Employee Added');</script>")
        End If
    End Sub
End Class