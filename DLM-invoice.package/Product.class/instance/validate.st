private - validation
validate
	"validate product"

	isValid := self validateKey keyIsValid & self validateDescription descriptionIsValid
		& self validatePrice priceIsValid.
	validationError := isValid
		ifTrue: [ '' ]
		ifFalse: [ 'Product is not valid - check the product key, description and price' ]