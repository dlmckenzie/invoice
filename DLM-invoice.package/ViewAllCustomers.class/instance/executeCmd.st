action
executeCmd
	queryResult := Application domain customers retrieveAll.
	self buildSuccessMsg.
	self displayResult