testing
testRetrieveByLastNameExists
	"test method exits"
	| customers |
	customers := Customers new.
	self assert: [ customers respondsTo: #retrieveByLastName: ] 
		description: 'Method Customers retrieveByLastName does not exist'