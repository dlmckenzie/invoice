action
executeCmd
	"execute the cmd"

	self validate.
	self validArguments
		ifTrue: [ self buildSuccessMsg  ]
		ifFalse: [ self buildFailureMsg  ].
	self displayResult