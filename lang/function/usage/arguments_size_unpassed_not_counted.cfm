<cfscript>
	// Adobe Bug (CF9)
	//
	
	include "/cfml2009testsuite/testsuite.cfm";
	
	// Optional arguments shouldn't count if not passed.
	//
	function threeSizeArgumentsNamedFour(x,y,z,r)
	{
		var k = 3;
				
		assert(3,structCount(arguments));
		assert(3,arrayLen(arguments));
	}

	threeSizeArgumentsNamedFour({"a"={b=2}},[1,2,3],[1,{"y"={x=2},z=3}]);
	
	writeOutput("success.");
</cfscript>