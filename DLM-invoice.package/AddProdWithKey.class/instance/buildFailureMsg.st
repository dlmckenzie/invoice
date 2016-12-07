private - printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: validationError;
		space;
		nextPutAll: '- product not added.';
		cr