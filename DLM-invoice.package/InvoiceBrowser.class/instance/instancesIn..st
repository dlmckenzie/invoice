as yet unclassified
instancesIn: constructor


	constructor list
		when: [:x | x = 'customers'];
		display: [ :x | customers collect: [: each | each identifier.  ] ]. 
		
	constructor list
		when: [:x | x = 'products'];
		display: [ :x | (products collect: [: each | each identifier.]) sorted ]. 
 
			
