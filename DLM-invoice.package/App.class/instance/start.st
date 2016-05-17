interface - app
start
	"initializes components for invoicing app."

	World submorphs
   		detect: [ :m | m model = Transcript ]
  		ifNone: [ Transcript open ].
	Transcript show: 'Invoicing App Started'; cr.
	
	customers := Customers new.
	products := Products new.