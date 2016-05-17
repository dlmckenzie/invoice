accessing
first: aString
	"udpate first name"

(Customer firstIsValidForIdentity: aString )
	ifTrue: [ first := aString ]
	ifFalse: [ Error signal: 'invalid search string' ]
		
	


