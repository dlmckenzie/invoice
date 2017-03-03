private - validation
validate
	"validate that a product with this key exists"
	
	isValid := prod isNotNil.
	validationError := isValid
		ifTrue: [ '' ]
		ifFalse: [ 'product key not found.' ]