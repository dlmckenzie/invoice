testing
testInitializeWithFirstLastAppAcceptsEmtpyAgs
	"method accepts empty arguments"

	| cmd first last |
	first := nil.
	last := ''.
	cmd := AddCustWithFirstLast new.
	cmd initializeWithFirst: first Last: last.
	self assert: [ cmd first = first ] description: 'method not accepting nil argument'.
	self assert: [ cmd last = last ] description: 'method not accepting empty string as argument'