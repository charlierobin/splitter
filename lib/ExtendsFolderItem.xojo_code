#tag Module
Protected Module ExtendsFolderItem
	#tag Method, Flags = &h0
		Function GetChildrenSorted(Extends f as FolderItem) As FolderItem()
		  var children() as FolderItem
		  
		  var filenames() as String
		  
		  for each child as FolderItem in f.Children()
		    
		    children.Add( child )
		    
		    filenames.Add( child.Name )
		    
		  next
		  
		  filenames.SortWith( children )
		  
		  return children
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveContents(extends f as FolderItem)
		  for each file as FolderItem in f.Children()
		    
		    file.Remove()
		    
		  next
		  
		End Sub
	#tag EndMethod


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
