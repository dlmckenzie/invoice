testing - happy path
testInitialize_setsNextIDTo0
	"test that initialize sets nextID to 0"

	Customer  initialize. 
	self assert: [ Customer initialize nextID = 0] description: 'nextID should be 1 on first run'