Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Imports System.Drawing
Imports System.Drawing.Imaging


Public Class TryChart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Collects the scores achieved by the user 
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "SELECT * FROM [TrackScore]" &
            "WHERE ([Username] = 'CoachAline')"
        Dim cmd As New SqlCommand(SQL, con)
        Dim da = New SqlDataAdapter(SQL, con)
        Dim ds As New DataSet
        da.Fill(ds, "TrackScore")
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        'Retrieve number of rows that match the username
        Dim SQL2 = "SELECT COUNT(QuizScore) FROM TrackScore 
      WHERE ([Username] = 'CoachAline')"
        Dim cmd2 As New SqlCommand(SQL2, con)
        Dim da2 = New SqlDataAdapter(SQL2, con)
        Dim ds2 As New DataSet
        da2.Fill(ds2, "CountRows")
        con.Open()
        cmd2.ExecuteNonQuery()
        con.Close()

        Label2.Text = ds2.Tables("CountRows").Rows(0).Item(0) 'Number of rows
        Dim rowcount As Integer
        rowcount = Label2.Text - 1 'because it starts at 0



        For rowcount = 0 To rowcount = rowcount + 1

            While rowcount < ds.Tables(0).Rows.Count - 1



                Page.Response.ContentType = "image/png"
            Dim Canva As Bitmap = New Bitmap(505, 505, System.Drawing.Imaging.PixelFormat.Format24bppRgb)
            Dim shape As Graphics = Graphics.FromImage(Canva)
            Dim testscore As Integer
            testscore = ds.Tables("TrackScore").Rows(rowcount).Item("QuizScore") 'Gets the score from the table

            Dim testno As Integer = 1

            Dim height As Integer = 100 * testscore
            Dim top As Integer = 505 - height
            Dim x As Integer = (testno - 1) * 100
            'bar
            shape.FillRectangle(Brushes.Goldenrod, x, top, 100, height + 100)

            'axis
            shape.FillRectangle(Brushes.White, 0, 0, 5, 500)
            shape.FillRectangle(Brushes.White, 0, 500, 500, 5)

            'text w/ score
            Dim font As New Font("ariel", 24)
            shape.DrawString(testscore, font, Brushes.White, x + 35, top)
            Canva.Save(Response.OutputStream, ImageFormat.Png)



            ' Label1.Text = ds.Tables("TrackScore").Rows(rowcount).Item("QuizScore")

            Canva.Dispose()
            shape.Dispose()

                testno = +1
            End While
        Next

    End Sub


End Class
