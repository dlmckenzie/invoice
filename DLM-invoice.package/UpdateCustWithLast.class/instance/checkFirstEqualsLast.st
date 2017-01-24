private - validation
checkFirstEqualsLast
	^ [ newCust name last = origCust name last
		ifTrue: [ 'New last name matches current name' ]
		ifFalse: [ '' ] ]