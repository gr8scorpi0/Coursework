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
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)

        Dim SQL = "SELECT * " &
              "FROM [UserLogins] " &
         "WHERE Username = '" & UsernameTextBox.Text & "'" &
          "AND Password = '" & PasswordTextBox.Text & "'"

        Dim dAdapter = New SqlDataAdapter(SQL, con)
        Dim dSet = New DataSet
        dAdapter.Fill(dSet, "UserLogins")
        If dSet.Tables("UserLogins").Rows.Count = 1 Then

            Response.Redirect("HomePageLogged-in.aspx")
        Else
            Label3.Visible = True
            Label3.Text = "Incorrect Password or Username"
        End If






    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick



    End Sub
End Class
