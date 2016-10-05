accessing
validationError
	isValid isNil
		ifTrue: [ Error signal: 'Not yet validated' ].
	^ validationError