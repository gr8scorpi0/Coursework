Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class Exercises
    Inherits System.Web.UI.Page

    Dim Score As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session.Item("NewQuestion") Is Nothing Then
            Session("NewQuestion") = "True"
        End If
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If

        If Session("NewQuestion") = "True" Then
            LoadQuestion()

            Session("NewQuestion") = "False"
        End If
        Score = Session("Score")
        Timer1.Enabled = True

    End Sub

    Sub LoadQuestion()

        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "SELECT * FROM [AddQuestions]"
        Dim cmd As New SqlCommand(SQL, con)
        Dim adapter As New SqlDataAdapter
        Dim dt As New DataTable
        con.Open()
        adapter.SelectCommand = cmd
        adapter.Fill(dt)
        cmd.ExecuteNonQuery()
        con.Close()

        Dim randomnumber As New Random
        Dim answerrow As Integer = randomnumber.Next(0, 3)

        Image1.ImageUrl = dt.Rows(answerrow)(1).ToString()
        Button1.Text = dt.Rows(randomnumber.Next(0, 3))(0).ToString()
        Button2.Text = dt.Rows(randomnumber.Next(0, 3))(0).ToString()
        Button3.Text = dt.Rows(randomnumber.Next(0, 3))(0).ToString()

        While Button2.Text = Button3.Text Or Button1.Text = Button3.Text Or Button1.Text = Button2.Text

            Button3.Text = dt.Rows(randomnumber.Next(0, 3))(0).ToString()
            Button2.Text = dt.Rows(randomnumber.Next(0, 3))(0).ToString()

        End While


        Session("Answer") = dt.Rows(answerrow)(0).ToString()
        Session("NewQuestion") = "False"



    End Sub

    Protected Sub StoreScores()
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "INSERT INTO [TrackScore]  ([Username], [QuizScore], [Date])" &
            "VALUES ('" & Session("Username") & "','" & Session("Score") & "', '" & DateTime.Now & "')"
        Dim cmd As New SqlCommand(SQL, con)

        con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Response.Redirect("Practice.aspx")


    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Timer1.Enabled = False
        If Button1.Text = Session("Answer") Then
            Button1.BackColor = System.Drawing.Color.Green
            Session("Score") = Score + 1
            Label1.Visible = True
            Label1.Text = DirectCast(Session("Score"), Integer)
        ElseIf Button1.Text <> Session("Answer") Then
            Button1.BackColor = System.Drawing.Color.Red
            Session("Score") = Session("Score")
            Label1.Visible = True
            Label1.Text = Session("Score")

        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Timer1.Enabled = False
        If Button2.Text = Session("Answer") Then
            Button2.BackColor = System.Drawing.Color.Green
            Session("Score") = Score + 1

            Label1.Visible = True
            Label1.Text = DirectCast(Session("Score"), Integer)
        ElseIf Button2.Text <> Session("Answer") Then
            Button2.BackColor = System.Drawing.Color.Red
            Session("Score") = Session("Score")
            Label1.Visible = True

            Label1.Text = Session("Score")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Timer1.Enabled = False
        If Button3.Text = Session("Answer") Then
            Button3.BackColor = System.Drawing.Color.Green
            Session("Score") = Score + 1

            Label1.Visible = True
            Label1.Text = DirectCast(Session("Score"), Integer)
        ElseIf Button3.Text <> Session("Answer") Then
            Button3.BackColor = System.Drawing.Color.Red
            Session("Score") = Session("Score")
            Label1.Visible = True
            Label1.Text = Session("Score")

        End If

    End Sub

    Protected Sub NextQuestion_Button_Click(sender As Object, e As EventArgs) Handles NextQuestion_Button.Click
        TimeLabel.Text = 15
        Session("NewQuestion") = "True"
        Button1.BackColor = System.Drawing.Color.Gold
        Button2.BackColor = System.Drawing.Color.Gold
        Button3.BackColor = System.Drawing.Color.Gold
        LoadQuestion()
    End Sub

    Protected Sub Exit_Button_Click(sender As Object, e As EventArgs) Handles Exit_Button.Click
        StoreScores()
        Response.Redirect("AfterQuiz.aspx")
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

        If TimeLabel.Text < 1 Then
            TimeLabel.Text = "Times UPPP"
            Timer1.Enabled = False


            If Button1.Text = Session("Answer") Then
                Button1.BackColor = System.Drawing.Color.Green

            ElseIf Button2.Text = Session("Answer") Then
                Button2.BackColor = System.Drawing.Color.Green
            ElseIf Button3.Text = Session("Answer") Then
                Button3.BackColor = System.Drawing.Color.Green
            End If
            Session("Score") = Session("Score")
        Else

            TimeLabel.Text = TimeLabel.Text - 1
        End If
    End Sub
End Class