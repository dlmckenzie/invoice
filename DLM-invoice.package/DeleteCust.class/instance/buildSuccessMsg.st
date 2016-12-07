private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer ';
		nextPutAll: id asString;
		nextPutAll: ' deleted.';
		cr.
