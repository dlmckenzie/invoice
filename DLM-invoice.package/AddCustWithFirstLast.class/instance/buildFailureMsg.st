private-printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	validationFailureReason := name identityValidationFailureReason , ' - customer not added.'.
	stream := String new writeStream.
	stream
		nextPutAll: validationFailureReason;
		cr