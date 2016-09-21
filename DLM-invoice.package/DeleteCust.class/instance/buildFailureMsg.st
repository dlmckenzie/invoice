printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Delete command for cust ID ''';
		nextPutAll: id asString;
		nextPutAll: ''' failed - ';
		nextPutAll: validationFailureReason;
		cr