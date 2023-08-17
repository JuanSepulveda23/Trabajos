Dim cadenaConexion As String
cadenaConexion = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\db.mdb"
Dim miConexion As OleDbConnection
miConexion = New OleDbConnection(cadenaConexion)
 
Dim dt As OleDbDataAdapter
dt = New OleDbDataAdapter
 
dt.SelectCommand = New OleDbCommand("SELECT * FROM usuarios", miConexion)
 
Dim usuariodt As DataTable
usuariodt = New DataTable
 
dt.Fill(usuariodt)
 
 
 
Dim clave As String
 
Dim i As Short
i = CmbUsuario.SelectedIndex
Dim fila As DataRow
fila = usuariodt.Rows(i)
clave = fila("password").ToString()
acceso = fila("acceso").ToString()
 
If TxtPassword.Text = "" Then
    MessageBox.Show("Debe ingresar contraseña")
 
Else
 
    If TxtPassword.Text.Trim().Equals(clave) Then
 
        MessageBox.Show("bienvenido usuario : " + CmbUsuario.Text)
 
        user = CmbUsuario.Text
        FrmMain.Show()
        Me.Hide()
        TxtPassword.Text = ""
 
 
    Else
        MessageBox.Show("Perdon la clave es incorrecta")
    End If
 
End If