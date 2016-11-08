validation
validate
	self validateFirst.
	self validateLast.
	(firstIsValid and: lastIsValid)
		ifTrue: [ isValid := true. validationError := '' ]
		ifFalse: [ isValid := false.
			validationError := 'Customer name is not valid' ]