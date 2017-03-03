action
executeCmd
	"execute the command"

	isValid
		ifTrue: [ self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult