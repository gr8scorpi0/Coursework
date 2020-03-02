Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class SignUp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label3.Visible = False
        Image1.Visible = False
    End Sub

    Protected Sub SignUpButton_Click(sender As Object, e As EventArgs) Handles SignUpButton.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "INSERT INTO [UserLogins] ([Username], [Password]) " &
            "VALUES ('" & UsernameTextBox.Text & "','" & PasswordTextBox.Text & "')"
        Dim cmd As New SqlCommand(SQL, con)


        Dim dAdapter = New SqlDataAdapter(SQL, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "UserLogins")

        If UsernameTextBox.Text = " " Or UsernameTextBox.Text = "" Or PasswordTextBox.Text = "" Or PasswordTextBox.Text = " " Then


            Label3.Visible = True
            Image1.Visible = True
        ElseIf dSet.Tables("UserLogins").Rows.Count = 1 Then
            Label3.Visible = True
            Image1.Visible = True
        Else
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("Username") = UsernameTextBox
            Response.Redirect("HomePageLogged-in.aspx")

        End If
    End Sub





End Class