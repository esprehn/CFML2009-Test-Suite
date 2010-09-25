<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	assert(1,deserializeJSON('{"foo":[{"bar":1}]}').foo[1].bar);
		
	writeOutput("success.");
</cfscript>