testing - edge cases
testNewWithKey_setsValidParamsToFalseForEmptyStringKey
	"created for debugging"
	
	| cmd |
	cmd := AddProdWithKey newWithKey: ''.
	self
		deny: [ cmd validArguments ]
		description: 'validArguments should be false for empty string key' 
	
	