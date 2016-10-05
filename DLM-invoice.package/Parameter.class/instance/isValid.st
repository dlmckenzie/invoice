validation
isValid
	isValid isNil
		ifTrue: [ Error signal: 'Validate method not called' ].
	^ isValid