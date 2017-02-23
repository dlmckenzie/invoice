action
executeCmd
	"execute the command"
	
	queryResult := Application products retrieveAll.
	self buildSuccessMsg.
	self displayResult 
	