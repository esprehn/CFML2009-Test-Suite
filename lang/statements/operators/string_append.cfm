<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// &= was broken during CF9 prerelease.
	//
	x = "foo";
	for( i=1; i <= 10; i++ )
	{
		x &= x;
	}
	assert(repeatString("foo", 1024),x);
	
	writeOutput("success.");
</cfscript>