private - validation
validateDesc
	"validate the products description"

	descIsValid := newProd descriptionIsValid.
	descValidationFailureReason := descIsValid
		ifTrue: [ '' ]
		ifFalse: [ newProd descriptionValidationError ]