

If (Form:C1466.trace)
	TRACE:C157
End if 

// if you modify anything by programming, the .modified WILL be set to "True"…

$range:=WP Selection range:C1340(*; "WP2")
WP SET ATTRIBUTES:C1342($range; wk font bold:K81:68; Form:C1466.cbBox)


// but the "on after edit event will NOT be triggered
// (as it would be by using a standard action)…
// …So you have to update the UI by yourself

UIupdate  // checks document.modified = true or false
