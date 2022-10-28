Rem Attribute VBA_ModuleType=VBAModule
Option VBASupport 1

Function decoder(ByVal str As String) As String
Dim n As Long
For n = 1 To Len(str) Step 2
decoder = decoder & Chr$(Val("&H" & Mid$(str, n, 2)))
Next n
End Function
