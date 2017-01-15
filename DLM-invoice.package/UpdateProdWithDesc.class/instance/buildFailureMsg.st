private - printing
buildFailureMsg
	"print msg confirming unsuccessful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Description update for product with key ''';
		nextPutAll: newProd key ;
		nextPutAll: ''' failed - ';
		nextPutAll: validationError;
		cr