testing
testFirstIsValidForUpdateExists
	"test existance of method"
	
	
	self assert: [ (Customer new) respondsTo: #firstIsValidForUpdate: ]
			description: 'method Customer firstIsValidForUpdate does not exist'

