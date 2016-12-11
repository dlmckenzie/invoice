private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Product with key ''';
		nextPutAll: key;
		nextPutAll: ''' removed.';
		cr