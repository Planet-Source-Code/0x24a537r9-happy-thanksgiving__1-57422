VERSION 5.00
Begin VB.Form frmHit 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "MMMMMmmmmmmmm... Turkey!!!"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7695
   Icon            =   "frmHit.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5415
   ScaleWidth      =   7695
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image imgMmmmmm 
      Height          =   3150
      Left            =   2760
      Picture         =   "frmHit.frx":08CA
      Top             =   120
      Width           =   2190
   End
   Begin VB.Label lblCongrats 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "MMMMMmmmmm....... Turkey!!!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   3360
      Width           =   7455
   End
End
Attribute VB_Name = "frmHit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Unload(Cancel As Integer)
    
    Unload frmMain
    
End Sub
