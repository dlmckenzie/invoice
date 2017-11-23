interface - app
start
	"initializes components for invoicing app."
	domain := Domain new.
	ui := (CLI newWithDomain: domain) start.	"<-- use this for command line interface"
	"ui := GUI new.  <-- use this for gui interface { not yet implemented }"
	"ui := WebI new. <-- use this for web interface { not yet implemented }"
	

"Here is what I really would like to see:"
"domain := InvoiceDomain new"
"ui := CLI new"
"app := App new"
"app usesUI: "