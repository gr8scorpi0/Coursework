﻿Public Class HomePageLoggedin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        Else
            Label2.Text = Session("Username")
            Label2.Visible = True
        End If
    End Sub

End Class