private-printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer added:';
		cr;
		nextPutAll: '	First name: ';
		nextPutAll: cust name first;
		cr;
		nextPutAll: '	Last name: ';
		nextPutAll: cust name last;
		cr;
		nextPutAll: '	Cust ID: ';
		nextPutAll: cust id asString;
		cr.
	