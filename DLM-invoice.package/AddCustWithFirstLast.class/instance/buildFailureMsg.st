private-printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	validationError := name validationError.
	stream := String new writeStream.
	stream
		nextPutAll: validationError;
		space;
		nextPutAll: '- customer not added.';
		cr