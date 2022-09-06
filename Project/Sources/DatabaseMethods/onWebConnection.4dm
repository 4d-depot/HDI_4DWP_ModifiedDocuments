
Case of 
	: ($1="/getPicture")
		
		$picture:=TimestampPicture(1)
		
		CONVERT PICTURE:C1002($picture; ".jpg")
		PICTURE TO BLOB:C692($picture; $blob; ".jpg")
		
		WEB SEND BLOB:C654($blob; ".jpg")
		
End case 