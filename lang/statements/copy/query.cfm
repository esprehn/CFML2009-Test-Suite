<cfscript>
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	query1 = queryNew("id");
	query2 = duplicate(query1);
	queryAddRow(query1);
	assert(1,query1.recordCount);
	assert(0,query2.recordCount);
	
	writeOutput("success.");
</cfscript>