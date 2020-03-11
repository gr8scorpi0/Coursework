Public Class AfterQuiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
        Score_Label.Text = Session("Score")

    End Sub

    Protected Sub Quiz_Button_Click(sender As Object, e As EventArgs) Handles Quiz_Button.Click
        Session("NewQuestion") = "True"
        Session("score") = 0
    End Sub
End Class