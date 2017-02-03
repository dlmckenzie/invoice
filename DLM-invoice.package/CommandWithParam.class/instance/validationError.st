private - testing
validationError

	isValid isNil
		ifTrue: [ Error signal: 'method validate has not yet been run' ].
	^ validationError