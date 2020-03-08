Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class EditCoach
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
        Done_Label.Visible = False
        error_Label.Visible = False
        done_Image.Visible = False
        error_Image.Visible = False
    End Sub

    Protected Sub add_Button_Click(sender As Object, e As EventArgs) Handles add_Button.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL = "SELECT * " &
              "FROM [CoachLogins] " &
              "WHERE CoachUsername = '" & username_TextBox.Text & "'"
        Dim dAdapter = New SqlDataAdapter(Sql, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "CoachLogins")

        If username_TextBox.Text.Length <= 0 Or Password_TextBox.Text.Length <= 0 Then
            error_Label.Visible = True
            error_Image.Visible = True
            error_Label.Text = "Username or Password format are invalid make sure each section is completed."

        ElseIf dSet.Tables("CoachLogins").Rows.Count = 1 Then
            error_Label.Visible = True
            error_Label.Text = "Username already exists"
            error_Image.Visible = True

        ElseIf dSet.Tables("CoachLogins").Rows.Count = 0 Then

            SQL = "INSERT INTO [CoachLogins] ([CoachUsername], [Password]) " &
            "VALUES ('" & username_TextBox.Text & "','" & Password_TextBox.Text & "')"
            Dim cmd As New SqlCommand(SQL, con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Done_Label.Visible = True
            done_Image.Visible = True
            Done_Label.Text = "New Coach was added successfully."
        End If
    End Sub

    Protected Sub delete_Button_Click(sender As Object, e As EventArgs) Handles delete_Button.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL = "SELECT * " &
              "FROM [CoachLogins] " &
              "WHERE CoachUsername = '" & username_TextBox.Text & "'"
        Dim dAdapter = New SqlDataAdapter(SQL, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "CoachLogins")

        If username_TextBox.Text.Length <= 0 Then
            error_Label.Visible = True
            error_Image.Visible = True
            error_Label.Text = "Complete the username textbox please."

        ElseIf dSet.Tables("CoachLogins").Rows.Count = 1 Then

            SQL = "DELETE FROM [CoachLogins] " &
                "WHERE CoachUsername = ('" & username_TextBox.Text & "')"
            Dim cmd As New SqlCommand(SQL, con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Done_Label.Visible = True
            done_Image.Visible = True
            Done_Label.Text = username_TextBox.Text & "Coach was removed successfully."
        ElseIf dSet.Tables("CoachLogins").Rows.Count = 0 Then
            error_Label.Visible = True
            error_Label.Visible = True
            error_Label.Text = "This user does not exist. Try Again."
        End If
    End Sub
End Class