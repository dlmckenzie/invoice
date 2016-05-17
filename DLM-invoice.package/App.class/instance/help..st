interface - help
help: aString
	"provides detailed help info for each command"

	aString = 'addCustWithFirst:Last:'
		ifTrue: [ 
			Transcript
				show: 'addCustWithFirst: {first name} Last: {last name}';
				cr;
				show: '  Adds a customer.';
				cr ].
	aString = 'viewCust:'
		ifTrue: [ 
			Transcript
				show: 'viewCust: {customer id}';
				cr;
				show: '  View a customer.';
				cr ].
	aString = 'viewAll'
		ifTrue: [ 
			Transcript
				show: 'viewAll';
				cr;
				show: '  View list of all customers.';
				cr ].
	aString = 'updateCust:WithFirst:'
		ifTrue: [ 
			Transcript
				show: 'updateCust: {customer id} First: {new first name}';
				cr;
				show: '  Updates a customer''s first name.';
				cr ].
	aString = 'updateCust:WithLast:'
		ifTrue: [ 
			Transcript
				show: 'updateCust: {customer id} First: {new last name}';
				cr;
				show: '  Updates a customer''s last name.';
				cr ].
	aString = 'deleteCust:'
		ifTrue: [ 
			Transcript
				show: 'deleteCust: {customer id}';
				cr;
				show: '  Deletes a customer.';
				cr ]