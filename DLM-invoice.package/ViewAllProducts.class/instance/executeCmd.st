action
executeCmd
	"execute the command"
	
	queryResult := Application domain products retrieveAll.
	self buildSuccessMsg.
	self displayResult 
	