action
executeCmd
	"execute the cmd"

	validArguments
		ifTrue: [ self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult