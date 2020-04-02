Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings

Public Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Error_Label.Visible = False
        error_Image.Visible = False
    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        'Selects from the table UserLogins the row where Username and Password match
        Dim SQL = "SELECT * " &
              "FROM [UserLogins] " &
              "WHERE Username = '" & UsernameTextBox.Text & "'" &
              "AND Password = '" & PasswordTextBox.Text & "'"
        'This Session stores the username, to store his results on the quiz
        Session("Username") = UsernameTextBox.Text
        Dim dAdapter = New SqlDataAdapter(SQL, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "UserLogins")


        If dSet.Tables("UserLogins").Rows.Count = 1 Then 'If it returns 1 it means that there is a row that matches the values inputted by the user.

            Response.Redirect("HomePageLogged-in.aspx") 'Redirects to the HomePage after successful Log-in

        ElseIf dSet.Tables("UserLogins").Rows.Count <> 1 Then 'If it does not match then it will check the CoachLogins table to check if the user is a coach repeating the same process but with different variables

            SQL = "SELECT * " &
                  "FROM [CoachLogins] " &
                  "WHERE CoachUsername = '" & UsernameTextBox.Text & "'" &
                  "AND Password = '" & PasswordTextBox.Text & "'"

            Session("Username") = UsernameTextBox.Text
            dAdapter = New SqlDataAdapter(SQL, con)
            dSet = New DataSet
            dAdapter.Fill(dSet, "CoachLogins")


            If dSet.Tables("CoachLogins").Rows.Count = 1 Then
                Response.Redirect("HomePage-Coach.aspx") 'If it matches with a row on the table than it redirects to the HomePage dedicated to the Coaches
            ElseIf UsernameTextBox.Text.Length <= 0 Or PasswordTextBox.Text.Length <= 0 Then
                error_Image.Visible = True
                Error_Label.Visible = True
                Error_Label.Text = "Empty Password or Username field. Please complete both."
            Else ' If none of the above is valid then and error message is displayed
                error_Image.Visible = True
                Error_Label.Visible = True
                Error_Label.Text = "Incorrect Password or Username"
            End If



        End If


    End Sub

End Class
