Imports System.Data.SqlClient
    Public Class Login
    Inherits System.Web.UI.Page

        Dim con As SqlConnection

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        End Sub

        Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Dim con As SqlConnection = Nothing
            Dim cmd As SqlCommand = Nothing
            Dim da As SqlDataAdapter

            con = New SqlConnection()
            con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
            con.Open()
            If (DropDownList1.Text = "Admin") Then
                cmd = New SqlCommand("SELECT username,password FROM admin where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con)
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    Response.Write("<script type='text/javascript'>alert('Login Successfull.. Welcome ADMIN');</script>")
                Response.Redirect("adminhome.aspx")
                Else

                    Response.Write("<script type='text/javascript'>alert('Invalid Login please check username and password');</script>")

                End If


            ElseIf (DropDownList1.Text = "Patient") Then
                cmd = New SqlCommand("SELECT email,password FROM patient where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con)
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    Response.Write("<script type='text/javascript'>alert('Login Successfull!!');</script>")
                Else

                    Response.Write("<script type='text/javascript'>alert('Invalid Login please check username and password');</script>")

                End If

            ElseIf (DropDownList1.Text = "Staff") Then
                cmd = New SqlCommand("SELECT email,password FROM emp where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con)
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    Response.Write("<script type='text/javascript'>alert('Login Successfull!!');</script>")

                Else

                    Response.Write("<script type='text/javascript'>alert('Invalid Login please check username and password');</script>")

                End If
            Else
                MsgBox("Please Select User Type")
            End If
        End Sub
        Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
            Dim a, b As String
            Dim con As SqlConnection = Nothing
            Dim cmd As SqlCommand = Nothing
            Dim da As SqlDataAdapter
            Dim da2 As SqlDataAdapter
            Dim cmd2 As SqlCommand = Nothing
            con = New SqlConnection()
            con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
            con.Open()

            If (DropDownList2.Text = "Patient") Then
                cmd = New SqlCommand("SELECT phone FROM patient where phone='" + TextBox3.Text + "'", con)
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    a = InputBox("Enter Your OTP")
                    If (a = "0000") Then
                        b = InputBox("Enter Your New Password")
                        cmd2 = New SqlCommand("Update patient set password ='" + b + "' where phone='" + TextBox3.Text + "'", con)
                        da2 = New SqlDataAdapter(cmd2)
                        Dim dt2 As New DataTable
                        da2.Fill(dt2)
                        Response.Write("<script type='text/javascript'>alert('Password Changed!!');</script>")

                    Else
                        Response.Write("<script type='text/javascript'>alert('Invalid OTP');</script>")
                    End If
                Else

                    Response.Write("<script type='text/javascript'>alert('Invalid Mobile Number');</script>")

                End If

            ElseIf (DropDownList2.Text = "Staff") Then
                cmd = New SqlCommand("SELECT phone FROM emp where phone='" + TextBox3.Text + "'", con)
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)
                If (dt.Rows.Count > 0) Then
                    a = InputBox("Enter Your OTP")
                    If (a = "0000") Then
                        b = InputBox("Enter Your New Password")
                        cmd2 = New SqlCommand("Update emp set password ='" + b + "' where phone='" + TextBox3.Text + "'", con)
                        da2 = New SqlDataAdapter(cmd2)
                        Dim dt2 As New DataTable
                        da2.Fill(dt2)
                        Response.Write("<script type='text/javascript'>alert('Password Changed!!');</script>")

                    Else
                        Response.Write("<script type='text/javascript'>alert('Invalid OTP');</script>")
                    End If
                Else

                    Response.Write("<script type='text/javascript'>alert('Invalid Mobile Number');</script>")

                End If
            End If

        End Sub



End Class