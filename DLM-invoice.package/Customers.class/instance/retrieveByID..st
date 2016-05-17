collection ops
retrieveByID: anInteger 
	"answer with customer that matches ID, or nil if none found"

	^ (self at: anInteger ifAbsent: [ nil ] ).
	