action
executeCmd
	"execute the command"

	| cust |
	"((Customer firstIsValidForIdentity: first) and: (Customer lastIsValidForIdentity: last))"
	self validateArguments.
	argumentsAreValid
		ifTrue: [ cust := Customer newWithFirst: first Last: last.
			app customers addCust: cust.
			Transcript
				show: 'Customer added:';
				cr;
				show: '	First name: ';
				show: cust first;
				cr;
				show: '	Last name: ';
				show: cust last;
				cr;
				show: '	Cust ID: ';
				show: cust id asString;
				cr ]
		ifFalse: [ Transcript show: 'First and/or last name not valid - customer not added' ]