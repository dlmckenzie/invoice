private - initialization
initializeWithKey: aProductKeyString
	"initialization using product key"

	super initialize.
	(Product keyIsValidForIdentity: aProductKeyString)
		ifTrue: [ key := aProductKeyString ]
		ifFalse: [ Error signal: 'Invalid Product Key' ]
		