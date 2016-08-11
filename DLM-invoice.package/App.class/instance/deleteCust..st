interface - customer
deleteCust: anInteger
	"deletes customer"

	| cust |
	cust := customers retrieveByID: anInteger.
	cust isNil
		ifTrue: [ Transcript
				show: 'Customer ID ' , anInteger asString , ' does not exist - no changes made.';
				cr ]
		ifFalse: [ customers delete: cust.
			Transcript
				show: 'Customer ' , anInteger asString , ' deleted.';
				cr ]