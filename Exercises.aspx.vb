Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class Exercises
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load





        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim QuestionID As Integer = 0
        Dim SQL As String = "SELECT * FROM [AddQuestions]"
        Dim cmd As New SqlCommand(SQL, con)
        Dim adapter As New SqlDataAdapter
        con.Open()
        Dim dt As New DataTable
        Dim randomoption1 As New Random
        Dim randomoption2 As New Random


        ' Dim randomoption As Integer
        ' randomoption = Int((4 * Rnd()) + 0)
        adapter.SelectCommand= cmd
        adapter.Fill(dt)
        Image1.ImageUrl = dt.Rows(2)(1).ToString()
        Button1.Text = dt.Rows(2)(0).ToString()
        Button2.Text = dt.Rows(randomoption1.Next(0, 3))(0).ToString()
        Button3.Text = dt.Rows(randomoption1.Next(0, 3))(0).ToString()

        If Button2.Text = Button3.Text Or Button1.Text = Button3.Text Then
            Button3.Text = dt.Rows(randomoption1.Next(0, 3))(0).ToString()
        ElseIf Button1.Text = Button2.Text Then
            Button2.Text = dt.Rows(randomoption1.Next(0, 3))(0).ToString()

        End If

        cmd.ExecuteNonQuery()
        con.Close()



    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class