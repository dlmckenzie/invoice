testing
testAddWithFirstLastIncreasesDictSizeBy1
	"test adding customer increases number of customers by 1"
	
	| customers before after |
	
	customers := Customers new.
	before := customers size.
	customers addWithFirst: 'Amy' Last: 'Sanders'.
	after := customers size. 
	self assert: [ after = (before + 1) ]
		description: 'Dict did not increase by one after adding cust' 