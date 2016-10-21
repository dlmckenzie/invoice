testing - edge cases
testNewWithFirstLast_acceptsEmtpyAgs
	"method accepts empty arguments"

	| cmd first last |
	first := nil.
	last := ''.
	cmd := AddCustWithFirstLast newWithFirst: first Last: last.
	self assert: [ cmd first = first ] description: 'first name not being set'.
	self assert: [ cmd last = last ] description: 'last name not being set'