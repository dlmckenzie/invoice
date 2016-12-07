private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Product added:';
		cr;
		nextPutAll: '	Key: ';
		nextPutAll: key;
		cr.