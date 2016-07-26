testing
testNewWithFirstLastAssignsUniqueID
	"test that unique ID is assigned for each added customer"

	| set |
	set := Set new.
	20 timesRepeat: [ set add: (Customer newWithFirst: 'Lisa' Last: 'Smith') ].
	self assert: [ set size = 20 ] description: 'Duplicate IDs being added'