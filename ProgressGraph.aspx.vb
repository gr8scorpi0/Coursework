Imports System.Data.SqlClient                               ' SqlConnection
Imports System.Configuration.ConfigurationManager       ' ConnectionStrings
Imports System.Drawing
Imports System.Drawing.Imaging


Public Class ProgressGraph
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("Username") Is Nothing Then
            Response.Redirect("Homepage.aspx")
        End If
        Session("NewQuestion") = "True"
        Session("Score") = 0

        'Collects the scores achieved by the user 
        Dim con As New SqlConnection(ConnectionStrings("SomeeConnectionString").ConnectionString)
        Dim SQL As String = "SELECT * FROM [TrackScore]" &
            "WHERE ([Username] = '" & Session("Username") & "')"
        Dim cmd As New SqlCommand(SQL, con)
        Dim da = New SqlDataAdapter(SQL, con)
        Dim ds As New DataSet
        da.Fill(ds, "TrackScore")
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        'Retrieve number of rows that match the username
        Dim SQL2 = "SELECT COUNT(QuizScore) FROM TrackScore 
      WHERE ([Username] = '" & Session("Username") & "')"
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

        Page.Response.ContentType = "image/png"
        Dim Canva As Bitmap = New Bitmap(1500, 1000) 'System.Drawing.Imaging.PixelFormat.Format24bppRgb
        Dim shape As Graphics = Graphics.FromImage(Canva)
        shape.Clear(Color.Gray)
        Dim testscore As Integer
        Dim height As Integer
        Dim top As Integer
        Dim x As Integer
        Dim font As New Font("ariel", 24)
        For rowcount = 0 To ds.Tables(0).Rows.Count - 1
            testscore = ds.Tables("TrackScore").Rows(rowcount).Item("QuizScore") 'Gets the score from the table
            height = 100 * testscore
            x = rowcount * 100
            top = 1000 - height

            'bar
            shape.FillRectangle(Brushes.Goldenrod, x, top, 95, height + 100)
            'axis
            shape.FillRectangle(Brushes.White, 0, 0, 5, height + 20)
            shape.FillRectangle(Brushes.White, 0, 995, (x + 95) + 10, 5)
            'text w/ score
            shape.DrawString(testscore, font, Brushes.White, x + 35, top)

        Next
        Canva.Save(Response.OutputStream, ImageFormat.Png)
        Canva.MakeTransparent(Color.Black)
        Canva.Dispose()
        shape.Dispose()

    End Sub


End Class
