Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings

Public Class CreateQuiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
        msg_Label.Visible = False
        error_Image.Visible = False
        done_Image.Visible = False
    End Sub

    Protected Sub Submit_Button_Click(sender As Object, e As EventArgs) Handles Submit_Button.Click


        If Answer_TextBox.Text.Length <= 0 Then
            error_Image.Visible = True
            msg_Label.Visible = True
            msg_Label.Text = "Fill the Answer Field."

        ElseIf Link_TextBox.Text.Length <= 0 Then
            error_Image.Visible = True
            msg_Label.Visible = True
            msg_Label.Text = "Fill the Image URL Field."

        Else

            Dim Link = Link_TextBox.Text
            Dim FinalLink As String

            Dim PositionA As Integer
            Dim PositionB As Integer
            If Link_TextBox.Text.Length > 0 Then
                Try
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
                    done_Image.Visible = True
                    msg_Label.Visible = True
                    msg_Label.Text = "Upload Successful!"
                Catch ex As Exception
                    msg_Label.Visible = True
                    error_Image.Visible = True
                    msg_Label.Text = ("Invalid Link. Try again.")
                End Try

            End If
        End If
    End Sub

    Protected Sub Cancel_Button_Click(sender As Object, e As EventArgs) Handles Cancel_Button.Click
        Answer_TextBox.Text = ""
        Link_TextBox.Text = ""
    End Sub

End Class
