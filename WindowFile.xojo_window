#tag Window
Begin Window WindowFile
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   452
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1422663679
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   670
   Begin ContainerWaveform Waveform
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   314
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   630
      Begin ContainerTintedLabel LabelAudioInfo
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF7F
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   True
         Height          =   146
         Index           =   -2147483648
         InitialParent   =   "Waveform"
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   168
         Transparent     =   True
         Visible         =   True
         Width           =   590
      End
   End
   Begin PushButton PushButtonSplit
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Split"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   558
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   412
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   92
   End
   Begin PushButton PushButtonSetOutput
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Select…"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   558
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   92
   End
   Begin Label LabelOutput
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   18
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Output to:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   379
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin TextField TextFieldOutputPath
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   95
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   379
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   451
   End
   Begin ShellGetWaveform GenerateWaveform
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      ExecuteMode     =   1
      ExitCode        =   0
      Index           =   -2147483648
      IsRunning       =   False
      LockedInPosition=   False
      PID             =   0
      Result          =   ""
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
   End
   Begin ShellSplitter SplitAudioFile
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      ExecuteMode     =   1
      ExitCode        =   0
      Index           =   -2147483648
      IsRunning       =   False
      LockedInPosition=   False
      PID             =   0
      Result          =   ""
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
   End
   Begin Label LabelSectionLength
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   27
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Length:"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   348
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   56
   End
   Begin TextField TextFieldSectionLength
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   95
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "60"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   346
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   71
   End
   Begin Label LabelSeconds
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   178
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "seconds"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   348
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin ContainerPleaseWait PleaseWait
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   26
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   86
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   409
      Transparent     =   True
      Visible         =   True
      Width           =   172
   End
   Begin ShellGetInfo GetAudioFileInfo
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      ExecuteMode     =   1
      ExitCode        =   0
      Index           =   -2147483648
      IsRunning       =   False
      LockedInPosition=   False
      PID             =   0
      Result          =   ""
      Scope           =   2
      TabPanelIndex   =   0
      TimeOut         =   0
   End
   Begin ShellUpdateMetadataTitles UpdateMetadataTitleFor
      Arguments       =   ""
      Backend         =   ""
      Canonical       =   False
      ExecuteMode     =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      TimeOut         =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  self.Title = self.audioFile.NativePath
		  
		  self.TextFieldOutputPath.Text = SpecialFolder.Desktop.NativePath
		  
		  self.GetAudioFileInfo.Execute( self.audioFile )
		  
		  self.updateButtons()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  var numberOfLines as Integer = self.LabelAudioInfo.GetLineCount()
		  
		  self.LabelAudioInfo.Height = ( numberOfLines * 17 ) + 40
		  
		  self.LabelAudioInfo.Top = self.Waveform.Bounds.Bottom - self.LabelAudioInfo.Height - 15
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Close() As Boolean Handles Close.Action
			self.Close()
			
			return true
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub Constructor(f as FolderItem)
		  self.audioFile = f
		  
		  super.Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateButtons()
		  if IsNumeric( self.TextFieldSectionLength.Text ) and not self.PleaseWait.Visible then
		    
		    self.PushButtonSplit.Enabled = true
		    
		    var sectionLength as Double = self.TextFieldSectionLength.Text.Val()
		    
		    self.Waveform.Update( sectionLength )
		    
		  else
		    
		    self.PushButtonSplit.Enabled = false
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private audioFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private audioLength As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private metadata As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButtonSplit
	#tag Event
		Sub Action()
		  var f as FolderItem = new FolderItem( self.TextFieldOutputPath.Text, FolderItem.PathModes.Native )
		  
		  self.PleaseWait.ShowYourself()
		  
		  self.updateButtons()
		  
		  var sectionLength as Double = self.TextFieldSectionLength.Text.Val()
		  
		  self.SplitAudioFile.Execute( self.audioFile, f, sectionLength )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButtonSetOutput
	#tag Event
		Sub Action()
		  var dlg as SelectFolderDialog = new SelectFolderDialog()
		  
		  dlg.ActionButtonCaption = "Select"
		  
		  dlg.PromptText = "Where would you like the output folder saved?"
		  
		  dlg.InitialFolder = new FolderItem( self.TextFieldOutputPath.Text, FolderItem.PathModes.Native )
		  
		  var f as FolderItem = dlg.ShowModal()
		  
		  if f <> nil then
		    
		    self.TextFieldOutputPath.Text = f.NativePath
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GenerateWaveform
	#tag Event
		Sub Completed(p as Picture)
		  // TODO check if p is nil ...
		  
		  self.Waveform.Set( p, self.audioLength )
		  
		  self.PleaseWait.HideYourself()
		  
		  self.updateButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SplitAudioFile
	#tag Event
		Sub Completed(f as FolderItem)
		  var i as Integer = 1
		  
		  var parts() as FolderItem = f.GetChildrenSorted()
		  
		  for each part as FolderItem in parts
		    
		    var results as String = "Doing part " + str( i ) + EndOfLine.macOS + EndOfLine.macOS
		    
		    var newF as FolderItem = new FolderItem( part.NativePath, FolderItem.PathModes.Native )
		    
		    part.Name = "ORIGINAL " + part.Name
		    
		    self.UpdateMetadataTitleFor.Execute( part, newF, self.metadata.Lookup( "title", "" ) + " - Part " + str( i ) )
		    
		    results = results + self.UpdateMetadataTitleFor.Result + EndOfLine.macOS + EndOfLine.macOS
		    
		    Debug.log( results )
		    
		    // System.DebugLog( results )
		    
		    i = i + 1
		    
		    part.Remove()
		    
		  next
		  
		  self.PleaseWait.HideYourself()
		  
		  self.updateButtons()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldSectionLength
	#tag Event
		Sub TextChange()
		  self.updateButtons()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GetAudioFileInfo
	#tag Event
		Sub Completed(data as Dictionary)
		  Debug.log( data.ToString() )
		  
		  self.metadata = data
		  
		  if self.metadata.Lookup( "title", "" ) <> "" then
		    
		    self.Title = self.Title + " (" + self.metadata.Value( "title" ) + ")"
		    
		  end if
		  
		  self.audioLength = self.metadata.Value( "duration (double)" )
		  
		  self.LabelAudioInfo.Set( self.metadata.ToString( "Artist" : "artist", "Title" : "title", "Album" : "album", "Album Artist" : "album_artist", "Length" : "duration (string trimmed)" ) )
		  
		  
		  var numberOfLines as Integer = self.LabelAudioInfo.GetLineCount()
		  
		  self.LabelAudioInfo.Height = ( numberOfLines * 17 ) + 40
		  
		  self.LabelAudioInfo.Top = self.Waveform.Bounds.Bottom - self.LabelAudioInfo.Height - 15
		  
		  
		  self.GenerateWaveform.Execute( self.audioFile, self.audioLength )
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
