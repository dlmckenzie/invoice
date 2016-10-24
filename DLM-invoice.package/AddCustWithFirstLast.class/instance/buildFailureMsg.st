private-printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	validationFailureReason := name nameValidationError.
	stream := String new writeStream.
	stream
		nextPutAll: validationFailureReason;
		space;
		nextPutAll: '- customer not added.';
		cr