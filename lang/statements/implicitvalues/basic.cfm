<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = [];
	assert(0,arrayLen(x));

	x = [1,2,3];
	assert(3,arrayLen(x));
	assert(2,x[2]);
	
	x = [2,3];
	assert(2,x[1]);
	
	x = {x=2};
	assert(2,x.x);
	
	x = {z=1};
	x = [5,{x=x}];	
	assert(1,x[2].x.z);
	
	writeOutput("success.");
</cfscript>