collection ops
retrieveByDescription: aString
	"answer with dict of products whose description contains aString"

	
	^ self select: [ :a | a description asLowercase includesSubstring: aString asLowercase ]