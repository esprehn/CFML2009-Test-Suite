<cfscript>
	// Railo Bug
	// 
	// Railo does not copy arrays on assignment or function call.
	//

	include "/cfml2009testsuite/testsuite.cfm";

	x = [1,2,3];
	y = x;
	y[1] = 5;
	
	assert(5,y[1]);	
	assert(1,x[1]);
	
	function test(a) 
	{
		return a;
	}
	
	x = [1,2,3];
	y = test(x);
	y[1] = 5;

	assert(5,y[1]);	
	assert(1,x[1]);
	
	writeOutput("success.");
</cfscript>