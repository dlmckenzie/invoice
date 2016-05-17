collection ops
retrieveByLastName: aString
	"answer Dictionary containing all customers whose last name starts with aString"

	(aString isNumber)
		ifTrue: [  Error signal: 'invalid search string'  ]
		ifFalse:[ ((aString isEmpty) or: (aString isNil)) 
			ifTrue: [  Error signal: 'invalid search string'  ]
			ifFalse: [ ^ self select: [:a | aString, '*' match: a last] ] ]
		
		
	
	
	
	

	





