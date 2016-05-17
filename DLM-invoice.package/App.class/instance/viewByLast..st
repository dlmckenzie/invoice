interface - customer
viewByLast: aString
	"view all customers whose last name begins with aString, sorted by last name"

	| matches orderedKeys |
	(Customer lastIsValidForIdentity: aString)
		ifFalse: [ 
			Transcript
				show: 'Invalid search string';
				cr ]
		ifTrue: [ 
			matches := customers retrieveByLastName: aString.
			matches size = 0
				ifTrue: [ 
					Transcript
						show: 'No matching customers found.';
						cr ]
				ifFalse: [ 
					Transcript
						show: 'Matching customers (sorted by last name):';
						cr.
					orderedKeys := (matches associations
						asSortedCollection: [ :x :y | (x value last , x value first) < (y value last , y value first) ])
						collect: [ :association | association key ].
					orderedKeys
						do: [ :a | 
							Transcript
								show: '  Customer ' , a asString , ': ';
								show: (matches retrieveByID: a) first;
								space;
								show: (matches retrieveByID: a) last;
								cr ] ] ]