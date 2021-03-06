private - validation
validateDesc
	"validate the products description"

	prod isNotNil
		ifTrue: [ descIsValid := newProd descriptionIsValid and: newProd description ~= origProd description.
			descValidationError := newProd descriptionIsValid
				ifTrue: [ newProd description = origProd description
						ifTrue: [ 'new description matches current description.' ]
						ifFalse: [ '' ] ]
				ifFalse: [ newProd descriptionValidationError ] ]
		ifFalse: [ descIsValid := false.
			descValidationError := 'not applicable - invalid prod' ]

