testing
testRetrieveByLastNameInterface
	"test method accepts 1 argument and answers dictionary"
	
	| customers |
	self assert: [ ((Customers >>#retrieveByLastName:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
		
	customers := Customers new.
	self assert: [ (customers retrieveByLastName: 'Smith') isMemberOf: Customers ]	
		description: 'method did not answer with dictionary'

	
