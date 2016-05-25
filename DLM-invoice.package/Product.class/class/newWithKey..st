instance creation
newWithKey: aProductKeyString
	"creates new product using provided key"

	(self keyIsValidForIdentity: aProductKeyString)
		ifTrue: [ ^ self new initializeWithKey: aProductKeyString ]
		ifFalse: [ Error signal: 'invalid product key provided' ]