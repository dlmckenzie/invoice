printing
buildSuccessMsg
	"print msg showing customer details"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer ';
		nextPutAll: id asString;
		nextPutAll: ':';
		cr;
		nextPutAll: '  First name: ';
		nextPutAll: (Application customers retrieveByID: id) first;
		cr;
		nextPutAll: '  Last name: ';
		nextPutAll: (Application customers retrieveByID: id) last;
		cr.