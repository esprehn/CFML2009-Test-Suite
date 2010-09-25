<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = [];
	
	assert("foo",structKeyList({foo=1}));
	assert("foo",structKeyList({foo=[x]}));

	assert("1,2,3",arrayToList([1,2,3]));
	assert("1{}2{}3",arrayToList([1,2,3],"{}"));
	assert("1|2|3",arrayToList([1,2,3],"|"));
	
	writeOutput("success.");
</cfscript>