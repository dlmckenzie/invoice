private - validation
validateDescription
	"validates the product's description"

	description isString
		ifTrue: [ descriptionIsValid := true.  descriptionValidationError := '' ]
		ifFalse: [ descriptionIsValid := false. descriptionValidationError := 'Product description is not a string' ]