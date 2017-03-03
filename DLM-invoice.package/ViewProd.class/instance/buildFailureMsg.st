private - printing
buildFailureMsg
	"build failure msg"
	
	stream := String new writeStream.
	stream
		nextPutAll: 'Unable to show data for product with key: ''';
		nextPutAll:  key;
		nextPutAll: '''';
		cr;
		nextPutAll: '  Reason:';
		space;
		nextPutAll: validationError;
		cr