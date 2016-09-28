printing
buildSuccessMsg
	"build message showing all customers"

	stream := String new writeStream.
	stream
		nextPutAll: 'Customer list:';
		cr.
	queryResult isEmpty
		ifTrue: [ stream
				nextPutAll: '  <No matching customers found>';
				cr ]
		ifFalse: [  
	
	
	queryResult keysSortedSafely
		do: [ :a | 
			stream
				nextPutAll: '  Cust ';
				nextPutAll: a asString;
				nextPutAll: ': ';
				nextPutAll: (queryResult retrieveByID: a) first;
				space;
				nextPutAll: (queryResult retrieveByID: a) last;
				cr ] ]