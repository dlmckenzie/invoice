private - customer
validateFirstForIdentity: aString
	"validate first name for identity, and Transcript error if problem"

	(Customer firstIsValidForIdentity: aString)
		ifTrue: [ ^ true ]
		ifFalse: [ 
			Transcript show: 'First name is not valid - no changes made.';cr.
			^ false ]