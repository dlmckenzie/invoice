action
executeCmd
	queryResult := Application customers retrieveAll.
	self buildSuccessMsg.
	self displayResult