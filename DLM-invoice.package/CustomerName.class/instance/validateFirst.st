private - validation
validateFirst
	"validate first name"

	first isString
		ifFalse: [ firstIsValid := false.
			firstValidationError := 'First name must be a string' ]
		ifTrue: [ (first includesSubstring: ',')
				ifTrue: [ firstIsValid := false.
					firstValidationError := 'First name may not contain a comma' ]
				ifFalse: [ firstIsValid := true. firstValidationError := '' ] ]