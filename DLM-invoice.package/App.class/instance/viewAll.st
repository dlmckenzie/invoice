interface - customer
viewAll
	"view list of all customers"

	customers size = 0
		ifTrue: [ Transcript show: 'No customers exist in system.' ]
		ifFalse: [ 
			Transcript
				show: 'All customers:';
				cr.
				(customers keysSortedSafely) do: [ :a | 
					Transcript
						show: '  Customer ' , a asString , ': ';
						show: (customers retrieveByID: a) first;
						space;
						show: (customers retrieveByID: a) last;
						cr ] ]