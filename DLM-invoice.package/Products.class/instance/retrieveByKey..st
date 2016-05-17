as yet unclassified
retrieveByKey: aString 
	"answer with product that matches key, or nil if none found"

	^ (self at: aString ifAbsent: [ nil ] ).
	