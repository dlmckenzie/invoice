private - printing
buildSuccessMsg
	"assemble text for successful adding of product"
	
	stream := String new writeStream.
	stream
		nextPutAll: 'Product added:';
		cr;
		nextPutAll: '	Key: ';
		nextPutAll: key;
		cr;
		nextPutAll: '	Description: ';
		nextPutAll: desc;
		cr;
		nextPutAll: '	Price: $';
		nextPutAll: (price isNumber ifTrue: [price printShowingDecimalPlaces: 2] ifFalse: [price asString]);
		cr
	