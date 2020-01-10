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


        If UsernameTextBox.Text = " " Or UsernameTextBox.Text = "" Or PasswordTextBox.Text = "" Or PasswordTextBox.Text = " " Then
            '  Label3.Visible = True
            ' Label3.Text = "Welcome " + UsernameTextBox.Text
            MsgBox("Username or Password format are invalid make sure each section is completed.")

        Else
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("HomePageLogged-in.aspx")

        End If
    End Sub





End Class