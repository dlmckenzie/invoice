printing
buildFailureMsg
	"print failure msg"

	stream := String new writeStream.
	stream
		nextPutAll: 'Search string may not be empty.';
		cr