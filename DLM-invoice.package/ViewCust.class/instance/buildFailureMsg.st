private - printing
buildFailureMsg
	"build failure msg"

	stream := String new writeStream.
	stream
		nextPutAll: 'Unable to show data for cust ''';
		nextPutAll: id asString;
		nextPutAll: '''';
		cr;
		nextPutAll: '  Reason:';
		space;
		nextPutAll: validationError;
		cr