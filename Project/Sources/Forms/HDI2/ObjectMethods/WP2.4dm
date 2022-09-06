If (Form:C1466.trace)
	TRACE:C157
End if 

// the "on after edit" event is triggered each time the document is modified.
// (either by modifying text or by using standard action on the area)

// so it is the right moment to update the UI!

UIupdate  // checks document.modified = true or false
