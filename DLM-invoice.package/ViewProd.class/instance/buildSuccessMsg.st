private - printing
buildSuccessMsg
	"print smg showing product details"
	
	stream := String new writeStream.
	stream
		nextPutAll: 'Product key: ';
		nextPutAll: prod key;
		cr;
		nextPutAll: '  Description: ''';
		nextPutAll: prod description;
		nextPutAll: '''';
		cr;
		nextPutAll: '  Price: ';
		space;
		nextPutAll: (prod price ifNil: [ '' ] ifNotNil: [ '$' ]);
		nextPutAll:
		(prod price ifNil: [ '[price unspecified]' ] ifNotNil: [ prod price printShowingDecimalPlaces: 2 ]);
		cr 