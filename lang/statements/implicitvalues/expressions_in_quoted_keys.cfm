<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	// Expressions are permitted in literal quoted keys
	y = 2;
	x = {y=5,"foo#1+1#"=2,"foo#y#"=6,"#new cfml2009testsuite.Component().getName()#"="foo"};
	assert(6,x.foo2);
	
	writeOutput("success.");
</cfscript>