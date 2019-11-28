Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class SignUp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SignUpButton_Click(sender As Object, e As EventArgs) Handles SignUpButton.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "INSERT INTO [UserLogins] ([Username], [Password]) " &
            "VALUES ('" & UsernameTextBox.Text & "','" & PasswordTextBox.Text & "')"
        Dim cmd As New SqlCommand(SQL, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Sign up Successful!")
    End Sub





End Class