initialization
initializeWithKey: aProductKeyString
	"initialize self"
	
	key := aProductKeyString.
	(Application domain products prodExistsForKey: aProductKeyString)
		ifTrue: [ prod := Application domain products retrieveByKey: aProductKeyString ].
	self validate