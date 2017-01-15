private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Product ';
		nextPutAll: key; 
		nextPutAll: '''s description updated from ''';
		nextPutAll: origProd description;
		nextPutAll: ''' to ''';
		nextPutAll: newProd description;
		nextPutAll: '''.';
		cr