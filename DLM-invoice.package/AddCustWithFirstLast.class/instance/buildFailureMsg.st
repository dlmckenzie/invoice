printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'First and/or last name not valid - customer not added.';
		cr.
	self displayResult 