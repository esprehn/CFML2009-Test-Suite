<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	// Defeat the basic optimizer in the CF compiler
	function two() { return 2; }
	function three() { return 3; }
	
	x = 33;
	
	// Ternary operators
	assert(true,x + x ? true : false);
	r = x + x ? x-x == 0 ? true : false : false;
	assert(true,x + x ? x-x == 0 ? true : false : false);
	assert(3,"#x gt two() ? 3 : 4#");
	assert("t value","#x eq 33 ? 't' : 'f'# value");
	assert(2,two() ? 2+two()-2 : 0);
	assert(4,two()-2 ? 2+two()-2 : (three()-three())+4);
	
	writeOutput("success.");
</cfscript>