interface - customer
updateCust: anInteger WithFirst: aString
	"update customer's first name."

	| cust orig |
	cust := customers retrieveByID: anInteger.
	cust isNil
		ifTrue: [ 
			Transcript
				show: 'Customer ID ' , anInteger asString , ' does not exist.';
				cr ]
		ifFalse: [ 
			orig := cust first.
			(self validateFirstForIdentity: aString)
				ifTrue: [ 
					(self validateFirst: aString ComparedTo: orig)
						ifTrue: [ self executeUpdateOnCustID: anInteger WithFirst: aString ] ] ]