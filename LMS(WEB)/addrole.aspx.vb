Imports System.Data.SqlClient
Public Class addrole
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim numberOfRole As Int16 = 0
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()

        cmd = New SqlCommand("SELECT TOP 1 rid FROM role ORDER BY rid DESC", con)
        numberOfRole = cmd.ExecuteScalar()
        TextBox1.Text = numberOfRole + 1
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()
        Try

            Dim cm As New SqlCommand
            With cm
                .Connection = con
                .CommandType = CommandType.Text
                .CommandText = "INSERT INTO role (rid,rname) VALUES (@rid,@rname)"

                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@rid", SqlDbType.Int, 255, TextBox1.Text))
                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@rname", SqlDbType.VarChar, 255, TextBox2.Text))





                cm.Parameters("@rid").Value = Convert.ToInt32(TextBox1.Text)
                cm.Parameters("@rname").Value = TextBox2.Text


                cm.ExecuteNonQuery()
                Response.Write("<script type='text/javascript'>alert('Record Saved..!!');</script>")


                Exit Sub
            End With
        Catch ex As Exception

        End Try
    End Sub
End Class