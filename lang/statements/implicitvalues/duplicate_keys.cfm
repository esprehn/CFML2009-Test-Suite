<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = [5];
	
	// Duplicate declarations of keys is OK. Last one wins.
	z = 
	{
		z = 2,
		a = 1,
		"x" = [x],
		z = {z=[x,6]},
		b = x,
		x=2
	};
	assert(6,z.z.z[2]);
	assert(5,z.z.z[1][1]);
	assert(2,z.x);
	
	writeOutput("success.");
</cfscript>