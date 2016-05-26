validation
keyIsUnique: aString
	"check that provided key is not already in use within dictionary"

	^ (self includesKey: aString) not