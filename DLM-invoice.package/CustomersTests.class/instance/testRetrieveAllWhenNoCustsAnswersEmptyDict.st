testing
testRetrieveAllWhenNoCustsAnswersEmptyDict
	"Test that Customers retrieveAll answers empty dict when no customers exist"
	
	self assert: [ Customers new retrieveAll size = 0 ]
		description: 'retrieveAll should have returned empty dictionary' 
		