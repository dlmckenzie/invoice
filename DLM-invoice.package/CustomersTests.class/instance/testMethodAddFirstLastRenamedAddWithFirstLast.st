testing
testMethodAddFirstLastRenamedAddWithFirstLast
	"test that method addFirst:Last renamed to addWithFirst:Last"

	|customers|
	customers := Customers new.
	self deny: [ customers respondsTo: #addFirst:Last: ]
			description: 'customers addFirst:Last should no longer exist'.
	self assert: [ customers respondsTo: #addWithFirst:Last: ]
			description: 'customers addWithFirst:Last does not exist'


