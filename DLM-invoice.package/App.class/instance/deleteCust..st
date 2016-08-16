interface - customer
deleteCust: anInteger
	"deletes customer"

	| cust |
	cust := customers retrieveByID: anInteger.
	cust isNil
		ifTrue: [ Transcript
				show: 'Customer ID ';
				show: anInteger asString;
				show: ' does not exist - no changes made.';
				cr ]
		ifFalse: [ customers delete: cust.
			Transcript
				show: 'Customer ';
				show: anInteger asString;
				show: ' deleted.';
				cr ]