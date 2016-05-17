as yet unclassified
newWithFirst: aString Last: aString2 
	"answers new customer"
	
	((self firstIsValidForIdentity: aString) and: (self lastIsValidForIdentity: aString2)) 
	ifTrue: [ ^ self new initializeWithFirst: aString Last: aString2 ]
	ifFalse: [ Error signal: 'Invalid name' ]
	