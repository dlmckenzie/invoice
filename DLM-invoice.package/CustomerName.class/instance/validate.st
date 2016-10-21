validation
validate
	self validateFirst.
	self validateLast.
	(firstIsValid and: lastIsValid)
		ifTrue: [ nameIsValid := true. nameValidationError := '' ]
		ifFalse: [ nameIsValid := false.
			nameValidationError := 'Customer name is not valid' ]