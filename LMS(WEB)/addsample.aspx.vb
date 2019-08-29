Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class addsample
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim numberOfSample As Int16 = 0
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()

        cmd = New SqlCommand("SELECT TOP 1 sid FROM sample ORDER BY sid DESC", con)
        numberOfSample = cmd.ExecuteScalar()
        TextBox1.Text = numberOfSample + 1
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim numberOfSample As Int16 = 0
        Dim home_visit As Boolean
        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()
        Try
            If (RadioButton1.Checked) Then
                home_visit = True
                RadioButton2.Checked = False

            ElseIf (RadioButton2.Checked) Then
                home_visit = False
                RadioButton1.Checked = False
            Else
                Response.Write("<script type='text/javascript'>alert('Please Select Gender');</script>")
            End If
            Dim cm As New SqlCommand
            With cm
                .Connection = con
                .CommandType = CommandType.Text
                .CommandText = "INSERT INTO sample (sid,sname,home_visit) VALUES (@sid,@sname,@home_visit)"

                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@sid", SqlDbType.Int, 255, TextBox1.Text))
                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@sname", SqlDbType.VarChar, 255, TextBox2.Text))
                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@home_visit", SqlDbType.Bit, 255, home_visit))




                cm.Parameters("@sid").Value = Convert.ToInt32(TextBox1.Text)
                cm.Parameters("@sname").Value = TextBox2.Text
                cm.Parameters("@home_visit").Value = home_visit

                cm.ExecuteNonQuery()
                Response.Write("<script type='text/javascript'>alert('Record Saved !!');</script>")

                TextBox1.Text = ""
                TextBox2.Text = ""
                RadioButton1.Checked = False
                RadioButton2.Checked = False

                Exit Sub
            End With
        Catch ex As Exception
        End Try
    End Sub
End Class