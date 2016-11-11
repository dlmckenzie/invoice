action
executeCmd
	"execute the cmd"

	self validArguments
		ifTrue: [ self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult