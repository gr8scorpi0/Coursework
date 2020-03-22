Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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
        SQL = "SELECT COUNT(Username) FROM TrackScore" &
        "WHERE ([Username] = 'CoachAline')"
        da.Fill(ds, "CountRows")
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()


        Page.Response.ContentType = "image/png"
        Dim Canva As Bitmap = New Bitmap(500, 500)
        Dim shape As Graphics = Graphics.FromImage(Canva)

        Dim testscore As Integer

        Dim testno As Integer
        Dim rowcount As Integer
        ' Dim rows As Integer
        ' rows = ds.Tables("CountRows").Rows(rowcount).Item("QuizScores")

        For rowcount = 0 To rowcount = +1

            testscore = ds.Tables("TrackScore").Rows(rowcount).Item("QuizScore")
            Dim height As Integer = 5 * testscore
            Dim top As Integer = 500 - height

            Dim x As Integer = (testno - 1) * 100
            'bar
            shape.FillRectangle(Brushes.Blue, x, top, 100, height)
            'axis
            shape.FillRectangle(Brushes.White, 0, 0, 5, 500)

            Canva.Save(Response.OutputStream, ImageFormat.Png)

            Canva.Dispose()
            shape.Dispose()

        Next

    End Sub

End Class