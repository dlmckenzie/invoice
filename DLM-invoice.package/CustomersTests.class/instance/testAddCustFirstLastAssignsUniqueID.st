testing
testAddCustFirstLastAssignsUniqueID
	"test that unique ID is assigned for each added customer"

	| customers set |
	customers := Customers new.
	set := Set new.
	20 timesRepeat: [ set add: (customers addWithFirst: 'Lisa' Last:'Smith')].	
	self assert: [ set size = 20 ] description: 'Duplicate IDs being added'