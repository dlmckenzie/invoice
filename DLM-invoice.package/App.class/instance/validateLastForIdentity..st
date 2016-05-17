private - customer
validateLastForIdentity: aString
	"validate last name for identity, and Transcript error if problem"

	(Customer lastIsValidForIdentity: aString)
		ifTrue: [ ^ true ]
		ifFalse: [ 
			Transcript show: 'Last name is not valid - no changes made.';cr.
			^ false ]