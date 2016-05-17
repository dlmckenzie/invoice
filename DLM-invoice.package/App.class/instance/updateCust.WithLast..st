interface - customer
updateCust: anInteger WithLast: aString
	"update customer's last name."

	| cust orig |
	cust := customers retrieveByID: anInteger.
	cust isNil
		ifTrue: [ 
			Transcript
				show: 'Customer ID ' , anInteger asString , ' does not exist.';
				cr ]
		ifFalse: [ 
			orig := cust last.
			(self validateLastForIdentity: aString)
				ifTrue: [ 
					(self validateLast: aString ComparedTo: orig)
						ifTrue: [ self executeUpdateOnCustID: anInteger WithLast: aString ] ] ]