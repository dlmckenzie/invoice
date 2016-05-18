instance creation
newWithFirst: aString Last: aString2 
	"answers new customer"
	|next|
	next := self generateNextID.
	
	((self firstIsValidForIdentity: aString) and: (self lastIsValidForIdentity: aString2)) 
	ifTrue: [ ^ self new initializeWithID: next First: aString Last: aString2 ]
	ifFalse: [ Error signal: 'Invalid name' ]
	