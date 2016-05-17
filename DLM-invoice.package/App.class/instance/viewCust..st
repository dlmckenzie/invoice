interface - customer
viewCust: anInteger
	| cust |
	cust := customers at: anInteger ifAbsent: [ nil ].
	cust isNil
		ifTrue: [ 
			Transcript
				show: 'Customer ID ' , anInteger asString , ' does not exist.';
				cr ]
		ifFalse: [ 
			Transcript
				show: 'Customer ID: ' , anInteger asString;
				cr;
				show: '  First name: ' , (customers at: anInteger) first;
				cr;
				show: '  Last name: ' , (customers at: anInteger) last;
				cr ]