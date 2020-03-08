Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class SignUp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        error_Label.Visible = False
        error_Image.Visible = False
    End Sub

    Protected Sub SignUpButton_Click(sender As Object, e As EventArgs) Handles SignUpButton.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL = "SELECT * " &
              "FROM [UserLogins] " &
              "WHERE Username = '" & UsernameTextBox.Text & "'"

        Dim dAdapter = New SqlDataAdapter(SQL, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "UserLogins")

        If UsernameTextBox.Text.Length <= 0 Or PasswordTextBox.Text.Length <= 0 Then
            error_Label.Visible = True
            error_Image.Visible = True
            error_Label.Text = "Username or Password format are invalid make sure each section is completed."

        ElseIf dSet.Tables("UserLogins").Rows.Count = 1 Then
            error_Label.Visible = True
            error_Label.Text = "Username already exists"
            error_Image.Visible = True

        ElseIf dSet.Tables("UserLogins").Rows.Count = 0 Then
            SQL = "INSERT INTO [UserLogins] ([Username], [Password]) " &
            "VALUES ('" & UsernameTextBox.Text & "','" & PasswordTextBox.Text & "')"
            Dim cmd As New SqlCommand(SQL, con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("Username") = UsernameTextBox
            Response.Redirect("HomePageLogged-in.aspx")

        End If
    End Sub


End Class