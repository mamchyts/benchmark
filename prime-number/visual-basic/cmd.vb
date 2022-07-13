Imports System

Module Cmd
    Sub Main()
        Dim args() As String = Environment.GetCommandLineArgs()
        Dim primeNumberCount As Integer

        If args.Length = 2 Then
            primeNumberCount = Cint(args(1))
        Else
            primeNumberCount = 100
        End If

        Dim number As Integer = 0
        While primeNumberCount > 0
            number += 1
            Dim j As Integer = 0
            Dim i As Integer

            For i = 1 To number + 1
                If number MOD i = 0 Then
                    j += 1
                End If
            Next

            If j = 2 Then
                primeNumberCount -= 1
            End If
        End While

        Console.WriteLine("The latest prime number: {0}" & vbcrlf, number)
    End Sub
End Module
