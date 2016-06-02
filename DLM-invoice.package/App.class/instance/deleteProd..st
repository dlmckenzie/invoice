interface - customer
deleteProd: aString
	"deletes customer"

	(products retrieveByKey: aString) isNil
		ifTrue: [ Transcript
				show: 'Product key ' , aString asString , ' does not exist - no changes made.';
				cr ]
		ifFalse: [ products delete: aString.
			Transcript
				show: 'Product ' , aString , ' deleted.';
				cr ]