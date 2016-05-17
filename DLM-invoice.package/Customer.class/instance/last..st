accessing
last: aString
	"update last name"
	
	(Customer lastIsValidForIdentity: aString )
		ifTrue: [ last := aString ]
		ifFalse: [ Error signal: 'invalid search string' ]
		
	