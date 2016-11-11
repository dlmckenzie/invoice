testing
validationFailureReason

	validArguments isNil
		ifTrue: [ Error signal: 'method validate has not yet been run' ].
	^ validationFailureReason