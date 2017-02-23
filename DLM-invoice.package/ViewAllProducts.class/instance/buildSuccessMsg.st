private - printing
buildSuccessMsg
	| orderedKeys prod |
	stream := String new writeStream.
	stream
		nextPutAll: 'All Products: (key, description, price) ';
		cr.
	queryResult isEmpty
		ifTrue: [ stream
				nextPutAll: '  <No products exist>';
				cr ]
		ifFalse: [ orderedKeys := queryResult keysSortedSafely.
			orderedKeys
				do: [ :a | 
					prod := queryResult retrieveByKey: a.
					stream
						nextPutAll: '  Product ';
						nextPutAll: a asString;
						nextPutAll: ': ''';
						nextPutAll: prod description;
						nextPutAll: ''',';
						space;
						nextPutAll: (prod price ifNil: [ '' ] ifNotNil: [ '$' ]);
						nextPutAll: (prod price ifNil: [ '[price unspecified]' ] ifNotNil: [ prod price printShowingDecimalPlaces: 2 ]);
						cr ] ]