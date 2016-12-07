private - printing
buildSuccessMsg
	"print msg showing customer details"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer ';
		nextPutAll: id asString;
		nextPutAll: ':';
		cr;
		nextPutAll: '  First name: ';
		nextPutAll: (Application customers retrieveByID: id) name first;
		cr;
		nextPutAll: '  Last name: ';
		nextPutAll: (Application customers retrieveByID: id) name last;
		cr.