action
executeCmd
	"execute the cmd"

	self isValid
		ifTrue: [ self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult