action
executeCmd
	"execute command to show products whose description match input parameter"
	
	isValid
		ifTrue: [ queryResult := Application products retrieveByDescription: searchString.
			self buildSuccessMsg  ]
		ifFalse: [ self buildFailureMsg ] 
	