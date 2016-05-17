interface - customer
deleteCust: anInteger
	"deletes customer"

	(customers retrieveByID: anInteger) isNil
		ifTrue: [ 
			Transcript
				show: 'Customer ID ' , anInteger asString , ' does not exist.';
				cr ]
		ifFalse: [ 
			customers delete: anInteger.
			Transcript show: 'Customer ' , anInteger asString , ' deleted.';cr ]