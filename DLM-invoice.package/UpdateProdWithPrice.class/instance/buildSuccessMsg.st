private - printing
buildSuccessMsg
	"print msg confirming successful execution of command"

	stream := String new writeStream.
	stream
		nextPutAll: 'Product ';
		nextPutAll: key;
		nextPutAll: '''s price updated from ';
		nextPutAll:
			(origProd price
				ifNil: [ '' ]
				ifNotNil: [ '$' , (origProd price printShowingDecimalPlaces: 2) ]);
		nextPutAll: ' to ';
		nextPutAll:
			(newProd price
				ifNil: [ '' ]
				ifNotNil: [ '$' , (newProd price printShowingDecimalPlaces: 2) ]);
		nextPutAll: '.';
		cr