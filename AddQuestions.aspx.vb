﻿Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings

Public Class CreateQuiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
    End Sub

    Protected Sub Answer_TextBox_TextChanged(sender As Object, e As EventArgs) Handles Answer_TextBox.TextChanged

    End Sub

    Protected Sub Submit_Button_Click(sender As Object, e As EventArgs) Handles Submit_Button.Click


        If Answer_TextBox.Text.Length < 0 Then
            MsgBox("Fill the Answer Field")
        ElseIf Link_TextBox.Text.Length < 0 Then
            MsgBox("Fill the Image URL Field")
        Else


            Dim Link = Link_TextBox.Text
            Dim FinalLink As String

            Dim PositionA As Integer
            Dim PositionB As Integer
            If Link_TextBox.Text.Length > 0 Then
                PositionA = Link.IndexOf("src") 'takes the number position of src
                PositionB = Link.LastIndexOf("alt")  'takes the number position of alt

                Dim start As Integer = PositionA + 5 'Before every link there are 5 char so it only takes what's after 5char
                Dim lastChr As Integer = PositionB - 2 'After every link there are 2 char so it only takes what's before 2char
                Dim length As Integer = lastChr - start

                FinalLink = Link.Substring(start, length)


                Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)

                Dim SQL As String = "INSERT INTO [AddQuestions] ([Answer], [ImageLink]) " &
                    "VALUES ('" & Answer_TextBox.Text & "','" & FinalLink & "')"
                Dim cmd As New SqlCommand(SQL, con)

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                MsgBox(" Upload Successful!")


            End If
        End If
    End Sub

    Protected Sub Cancel_Button_Click(sender As Object, e As EventArgs) Handles Cancel_Button.Click

    End Sub

End Class