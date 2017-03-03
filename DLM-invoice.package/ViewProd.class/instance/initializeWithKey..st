initialization
initializeWithKey: aProductKeyString
	"initialize self"
	
	key := aProductKeyString.
	(Application products prodExistsForKey: aProductKeyString)
		ifTrue: [ prod := Application products retrieveByKey: aProductKeyString ].
	self validate