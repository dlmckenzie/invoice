testing
testRetrieveByIDAnswersCustWithLastName
	"test that last name is correctly retrieved"
	
	| customers id last|
	customers := Customers new.
	last := 'Smith'.
	id := customers addWithFirst:'Amy' Last:last.
	customers retrieveByID:id.
	self assert: [(customers at: id) last = last ]
			 description:  'last name of retrieved cust does not mach'
	
	