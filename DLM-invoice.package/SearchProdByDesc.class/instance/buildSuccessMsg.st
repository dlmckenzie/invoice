private - printing
buildSuccessMsg
	"build success message for printing"

	| orderedKeys prod |
	stream := String new writeStream.
	stream
		nextPutAll: 'Products (sorted by product key) whose description matches ''';
		nextPutAll: searchString;
		nextPutAll: ''':';
		cr.
	queryResult isEmpty
		ifTrue: [ stream
				nextPutAll: '  <No matching products found>';
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
						nextPutAll: (prod price ifNil: [ '' ] ifNotNil: [ prod price printShowingDecimalPlaces: 2 ]);
						cr ] ]