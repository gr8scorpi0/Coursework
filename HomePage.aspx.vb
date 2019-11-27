Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings

Public Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label3.Visible = False
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles UsernameTextBox.TextChanged

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click
        '  If TextBox2.Text <> "1234" Then
        'Label3.Visible = True
        'Label3.Text = "Incorrect Password"
        ' Else

        'Label3.Visible = True
        'Label3.Text = "Welcome " + TextBox1.Text
        'End If
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "INSERT INTO [UserLogins] ([Username], [Password]) " &
            "VALUES ('" & UsernameTextBox.Text & "','" & PasswordTextBox.Text & "')"
        Dim cmd As New SqlCommand(SQL, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Sign up Successful!")




    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick



    End Sub
End Class