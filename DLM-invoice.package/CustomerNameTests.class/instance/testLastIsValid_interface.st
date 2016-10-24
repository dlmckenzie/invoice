testing - interface
testLastIsValid_interface
	"test lastIsValid interface"
	
	self assert: [ CustomerName new respondsTo: #lastIsValid ] description: 'CustomerName: #lastIsValid does not exist'.
	self assert: [ (CustomerName newWithFirst: 'Joe' Last: 'Smith') lastIsValid isKindOf: Boolean ] 
		description: 'Method did not answer with Boolean' 
		
