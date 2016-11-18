validation
validateDescription
	"validates the product's description"

	description isString
		ifTrue: [ descIsValid := true ]