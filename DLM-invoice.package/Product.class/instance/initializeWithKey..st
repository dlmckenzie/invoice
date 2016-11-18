private - initialization
initializeWithKey: aProductKeyString
	"initialization using product key"

	key := aProductKeyString.
	description := ''.
	self validate

	"(self class keyIsValidForIdentity: aProductKeyString)
		ifTrue: [ key := aProductKeyString ]
		ifFalse: [ Error signal: 'Invalid Product Key' ]"