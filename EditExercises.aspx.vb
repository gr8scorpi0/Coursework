Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class EditExercises
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
        Error_Label.Visible = False
        done_Label.Visible = False
        done_Image.Visible = False
        error_Image.Visible = False

    End Sub

    Protected Sub ImageURL_Button_Click(sender As Object, e As EventArgs) Handles ImageURL_Button.Click
        If QID_TextBox.Text.Length <= 0 Then
            Error_Label.Visible = True
            error_Image.Visible = True
            Error_Label.Text = ("Fill in the QuestionID Field")
        ElseIf ImageURL_TextBox.Text.Length <= 0 Then
            Error_Label.Visible = True
            error_Image.Visible = True
            Error_Label.Text = ("Fill in the Image URL Field")
        Else


            Dim Link = ImageURL_TextBox.Text
            Dim FinalLink As String

            Dim PositionA As Integer
            Dim PositionB As Integer
            If ImageURL_TextBox.Text.Length > 0 Then
                PositionA = Link.IndexOf("src") 'takes the number position of src
                PositionB = Link.LastIndexOf("alt")  'takes the number position of alt

                Dim start As Integer = PositionA + 5 'Before every link there are 5 char so it only takes what's after 5char
                Dim lastChr As Integer = PositionB - 2 'After every link there are 2 char so it only takes what's before 2char
                Dim length As Integer = lastChr - start

                FinalLink = Link.Substring(start, length)

                Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)

                Dim SQL As String = "UPDATE [AddQuestions] " &
                    "SET ImageLink = '" & FinalLink & "'" &
                    "WHERE QuestionID = '" & QID_TextBox.Text & "'"
                Dim cmd As New SqlCommand(SQL, con)

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                MsgBox(" Change was made Successfully!")

            End If
        End If
    End Sub

    Protected Sub Answer_Button_Click(sender As Object, e As EventArgs) Handles Answer_Button.Click
        If QID_TextBox.Text.Length <= 0 Then
            Error_Label.Visible = True
            error_Image.Visible = True
            Error_Label.Text = ("Fill in the QuestionID Field")

        ElseIf Answer_TextBox.Text.Length <= 0 Then
            Error_Label.Visible = True
            error_Image.Visible = True
            Error_Label.Text = ("Fill in the Answer Field")
        Else
            Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)

            Dim SQL As String = "UPDATE [AddQuestions] " &
                "SET Answer ='" & Answer_TextBox.Text & "'" &
                "WHERE QuestionID = '" & QID_TextBox.Text & "'"
            Dim cmd As New SqlCommand(SQL, con)

            Dim dAdapter = New SqlDataAdapter(SQL, con)
            Dim dSet = New DataSet
            dAdapter.Fill(dSet, "AddQuestions")

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            done_Label.Visible = True
            done_Image.Visible = True
            done_Label.Text = (" Change was made Successfully!")
        End If
    End Sub

    Protected Sub search_Button_Click(sender As Object, e As EventArgs) Handles search_Button.Click
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)

        Dim sql = "SELECT * FROM [AddQuestions] " &
                    "WHERE CONCAT (ImageLink, Answer, QuestionID) LIKE '%" & search_TextBox.Text & "%'"
        SqlDataSource1.SelectCommand = sql

    End Sub



End Class