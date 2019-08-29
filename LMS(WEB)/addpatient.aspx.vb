Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class addpatient
    Inherits System.Web.UI.Page
    Dim pid, ano, phone As Integer
    Dim pname, address, gender, refby, email As String
    Dim dob, regdate As Date
    Dim myconnection As SqlConnection

    Dim mycommand As SqlCommand

    Dim dr As SqlDataReader

    Dim dr1 As SqlDataReader

    Dim ra As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As SqlConnection = Nothing
        Dim cmd As SqlCommand = Nothing
        Dim number As Int16 = 0

        con = New SqlConnection()
        con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        con.Open()
        cmd = New SqlCommand("SELECT TOP 1 p_id FROM patient ORDER BY p_id DESC", con)
        number = cmd.ExecuteScalar()
        TextBox1.Text = number + 1


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        'Dim con As SqlConnection = Nothing
        'Dim cmd As SqlCommand = Nothing
        'System.Diagnostics.Debug.WriteLine("line 4 sucess add clicked!!")
        'Dim numberOfSample As Int16 = 0
        'con = New SqlConnection()
        'con.ConnectionString = "Data Source=ABHI\SQLEXPRESS;Initial Catalog=LMS;Integrated Security=True"
        'con.Open()
        'Try
        '    If (RadioButton1.Checked) Then
        '        gender = RadioButton1.Text
        '        RadioButton2.Checked = False
        '        RadioButton3.Checked = False
        '    ElseIf (RadioButton2.Checked) Then
        '        gender = RadioButton2.Text
        '        RadioButton1.Checked = False
        '        RadioButton3.Checked = False
        '    ElseIf (RadioButton3.Checked) Then
        '        gender = RadioButton3.Text
        '        RadioButton1.Checked = False
        '        RadioButton2.Checked = False
        '    Else
        '        MsgBox("please select Gender")
        '    End If


        '    Dim cm As New SqlCommand
        '    With cm
        '        .Connection = con
        '        .CommandType = CommandType.Text
        '        .CommandText = "INSERT INTO patient (p_id,p_name,gender,dob,phone,email,address,aadhar,reg_date,ref_by) VALUES (@p_id,@p_name,@phone,@gender,@dob,@email,@address,@aadhar,@reg_date,@ref_by)"

        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@p_id", SqlDbType.Int, 255, TextBox1.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@p_name", SqlDbType.VarChar, 255, TextBox2.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@gender", SqlDbType.VarChar, 255, gender))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@dob", SqlDbType.VarChar, 255, TextBox8.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@phone", SqlDbType.Int, 255, TextBox3.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@email", SqlDbType.VarChar, 255, TextBox4.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@address", SqlDbType.VarChar, 255, TextBox5.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@aadhar", SqlDbType.Int, 255, TextBox6.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@reg_date", SqlDbType.VarChar, 255, TextBox7.Text))
        '        .Parameters.Add(New System.Data.SqlClient.SqlParameter("@ref_by", SqlDbType.VarChar, 255, DropDownList1.Text))



        '        cm.Parameters("@p_id").Value = Convert.ToInt32(TextBox1.Text)
        '        cm.Parameters("@p_name").Value = TextBox2.Text
        '        cm.Parameters("@phone").Value = Convert.ToInt32(TextBox3.Text)
        '        cm.Parameters("@gender").Value = gender
        '        cm.Parameters("@dob").Value = TextBox8.Text
        '        cm.Parameters("@email").Value = TextBox4.Text
        '        cm.Parameters("@address").Value = TextBox5.Text
        '        cm.Parameters("@aadhar").Value = Convert.ToInt32(TextBox6.Text)
        '        cm.Parameters("@reg_date").Value = TextBox7.Text
        '        cm.Parameters("@ref_by").Value = DropDownList1.Text

        '        System.Diagnostics.Debug.WriteLine(cm.Parameters("@p_name").Value)
        '        System.Diagnostics.Debug.WriteLine(cm.Parameters("@phone").Value)
        '        System.Diagnostics.Debug.WriteLine(cm.Parameters("@gender").Value)
        '        System.Diagnostics.Debug.WriteLine(TextBox8.Text)
        '        System.Diagnostics.Debug.WriteLine(cm.Parameters("@dob").Value)
        '        System.Diagnostics.Debug.WriteLine(cm.Parameters("@reg_date").Value)



        '        cm.ExecuteNonQuery()
        '        MsgBox("Record saved.", MsgBoxStyle.Information)

        '        TextBox1.Text = ""
        '        TextBox2.Text = ""
        '        RadioButton1.Checked = False
        '        RadioButton2.Checked = False
        '        RadioButton3.Checked = False
        '        TextBox3.Text = ""
        '        TextBox4.Text = ""
        '        TextBox5.Text = ""
        '        TextBox6.Text = ""
        '        DropDownList1.Text = ""
        '        Exit Sub
        '    End With
        'Catch ex As Exception
        '    MsgBox(ex.Message, MsgBoxStyle.Critical)
        'End Try
        If (RadioButton1.Checked = True) Then
            TextBox13.Text = RadioButton1.Text
        ElseIf (RadioButton2.Checked = True) Then
            TextBox13.Text = RadioButton2.Text
        ElseIf (RadioButton3.Checked = True) Then
            TextBox13.Text = RadioButton3.Text
        Else
            Response.Write("<script type='text/javascript'>alert('Please Select Gender');</script>")
        End If
        TextBox15.Text = TextBox8.Text + " " + TextBox9.Text + " , " + TextBox10.Text + " , " + DropDownList1.Text + " , " + TextBox11.Text
        SqlDataSource2.Insert()
        Response.Write("<script type='text/javascript'>alert('Patient Added');</script>")

    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click

    End Sub
End Class