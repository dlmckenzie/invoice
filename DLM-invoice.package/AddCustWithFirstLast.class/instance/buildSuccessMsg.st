printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer added:';
		cr;
		nextPutAll: '	First name: ';
		nextPutAll: cust first;
		cr;
		nextPutAll: '	Last name: ';
		nextPutAll: cust last;
		cr;
		nextPutAll: '	Cust ID: ';
		nextPutAll: cust id asString;
		cr.
	self displayResult