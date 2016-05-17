testing
testRetrieveByIDAnswersCustWithFirstName
	"test that first name is correctly retrieved"
	
	| customers id first|
	customers := Customers new.
	first := 'Mary'.
	id := customers addWithFirst:first Last:'Smith'.
	customers retrieveByID:id.
	self assert: [(customers at: id) first = first ]
			 description:  'first name of retrieved cust does not mach'
	
	