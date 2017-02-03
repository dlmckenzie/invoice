action
executeCmd
	"execute the cmd"
	self validate
	isValid
		ifTrue: [ Application products addProd: (Product newWithKey: key).
			self buildSuccessMsg ]
		ifFalse: [ self buildFailureMsg ].
	self displayResult