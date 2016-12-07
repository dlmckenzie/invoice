private - printing
buildSuccessMsg
	"print message showing matching customers"

	| orderedKeys |
	stream := String new writeStream.
	stream
		nextPutAll: 'Customers whose last name matches ''';
		nextPutAll: searchString;
		nextPutAll: ''':';
		cr.
	queryResult isEmpty
		ifTrue: [ stream
				nextPutAll: '  <No matching customers found>';
				cr ]
		ifFalse: [ orderedKeys := (queryResult associations
				asSortedCollection: [ :x :y | 
					(x value name last , x value name first)
						< (y value name last , y value name first) ])
				collect: [ :association | association key ].
			orderedKeys
				do: [ :a | 
					stream
						nextPutAll: '  Customer ';
						nextPutAll: a asString;
						nextPutAll: ': ';
						nextPutAll: (queryResult retrieveByID: a) name first;
						space;
						nextPutAll: (queryResult retrieveByID: a) name last;
						cr ] ]