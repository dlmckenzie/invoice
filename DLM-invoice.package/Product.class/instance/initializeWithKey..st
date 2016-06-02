private - initialization
initializeWithKey: aProductKeyString
	"initialization using product key"

	(self class keyIsValidForIdentity: aProductKeyString)
		ifTrue: [ key := aProductKeyString ]
		ifFalse: [ Error signal: 'Invalid Product Key' ]