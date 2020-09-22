VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Happy Thanksgiving!"
   ClientHeight    =   8175
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10335
   FillStyle       =   0  'Solid
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   2  'Cross
   ScaleHeight     =   8175
   ScaleWidth      =   10335
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer timAnimation 
      Interval        =   200
      Left            =   7320
      Top             =   3360
   End
   Begin VB.Label lblDirections 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Shoot that Turkey!!!"
      BeginProperty Font 
         Name            =   "Market"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   7680
      Width           =   10095
   End
   Begin VB.Image imgVariation 
      Height          =   1620
      Index           =   1
      Left            =   4200
      Picture         =   "frmMain.frx":08CA
      Top             =   8280
      Visible         =   0   'False
      Width           =   1110
   End
   Begin VB.Image imgVariation 
      Height          =   1620
      Index           =   0
      Left            =   3000
      Picture         =   "frmMain.frx":130A
      Top             =   8280
      Visible         =   0   'False
      Width           =   1110
   End
   Begin VB.Image imgTurkey 
      Height          =   1620
      Left            =   9120
      MousePointer    =   2  'Cross
      Picture         =   "frmMain.frx":1D0F
      Top             =   6480
      Width           =   1110
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function PlaySound Lib "winmm.dll" Alias "PlaySoundA" (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    PlaySound App.Path & "/Shotgun.wav", 0, &H1
    Me.Circle (X, Y), 100, vbBlack
    
End Sub

Private Sub imgTurkey_Click()
    
    PlaySound App.Path & "/Shotgun.wav", 0, &H1
    Me.Hide
    frmHit.Show
    
End Sub

Private Sub timAnimation_Timer()

    imgTurkey.Move Int(Rnd * 9120), Int(Rnd * 6480)
    imgTurkey.Picture = imgVariation(Round(Rnd)).Picture
    
End Sub
