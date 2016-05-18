accessing
last: aString
	"update last name"

	(self class lastIsValidForIdentity: aString)
		ifTrue: [ last := aString ]
		ifFalse: [ Error signal: 'invalid search string' ]