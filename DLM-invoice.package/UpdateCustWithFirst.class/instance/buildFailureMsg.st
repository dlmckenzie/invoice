private-printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'First name update for cust ID ''';
		nextPutAll: id asString;
		nextPutAll: ''' failed - ';
		nextPutAll: validationError;
		cr