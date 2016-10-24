testing - happy path
testNewWithName_assignsUniqueID
	"test that unique ID is assigned for each added customer"

	| set |
	set := Set new.
	20 timesRepeat: [ set add: (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith')) ].
	self assert: [ set size = 20 ] description: 'Duplicate IDs being added'