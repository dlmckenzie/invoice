as yet unclassified
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

| cust |
	((Customer firstIsValidForIdentity: aString)
		and: (Customer lastIsValidForIdentity: aString2))
		ifTrue: [ cust := app addCustWithFirst: aString Last: aString2. 
			Transcript
				show: 'Customer added:';
				cr;
				show: '	First name: ' , cust first;
				cr;
				show: '	Last name: ' , cust last;
				cr;
				show: '	Cust ID: ' , cust id asString;
				cr ]
		ifFalse: [ Transcript show: 'First and/or last name not valid - customer not added' ]
	