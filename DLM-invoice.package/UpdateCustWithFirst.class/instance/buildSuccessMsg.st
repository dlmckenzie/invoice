private-printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer ';
		nextPutAll: id asString;
		nextPutAll: '''s first name updated from ''';
		nextPutAll: origFirst;
		nextPutAll: ''' to ''';
		nextPutAll: first;
		nextPutAll: '''.';
		cr.