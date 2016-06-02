interface - customer
viewCust: anInteger
	| cust |
	cust := customers retrieveByID: anInteger.
	cust isNil
		ifTrue: [ Transcript
				show: 'Customer ID ';
				show: anInteger asString;
				show: ' does not exist.';
				cr ]
		ifFalse: [ Transcript
				show: 'Customer ID: ';
				show: cust id asString;
				cr;
				show: '  First name: ';
				show: cust first;
				cr;
				show: '  Last name: ';
				show: cust last;
				cr ]