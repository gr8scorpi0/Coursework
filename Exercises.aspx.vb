Public Class Exercises
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Visible = True
    End Sub
End Class