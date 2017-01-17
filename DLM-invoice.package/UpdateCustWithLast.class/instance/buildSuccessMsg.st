private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer ';
		nextPutAll: id asString;
		nextPutAll: '''s last name updated from ''';
		nextPutAll: origCust name last;
		nextPutAll: ''' to ''';
		nextPutAll: newCust name last;
		nextPutAll: '''.';
		cr