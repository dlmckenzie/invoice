private
initializeWithKey: aProductKeyString
	"initialization using product key"

	super initialize.
	aProductKeyString isEmptyOrNil
		ifTrue: [ Error signal: 'Invalid Product Key' ]
		ifFalse: [ key := aProductKeyString ]