<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	function threeSizeArguments()
	{
		var x = 3;
		
		assert(3,structCount(arguments));
		assert(3,arrayLen(arguments));
	}
	
	// Extra arguments count for the size.
	//
	function threeSizeArgumentsNamedTwo(x,y)
	{
		var z = 3;
		
		assert(3,structCount(arguments));
		assert(3,arrayLen(arguments));
	}
	
	// Optional arguments shouldn't count if not passed.
	//
	function threeSizeArgumentsNamedFour(x,y,z,r)
	{
		var k = 3;
		
		assert(3,structCount(arguments));
		assert(3,arrayLen(arguments));
	}

	threeSizeArguments([1,{"y"={x=2},z=3}],{"a"={b=2}},[1,2,3]);
	threeSizeArguments(x=[1,{"y"={x=2},z=3}],y={"a"={b=2}},z=[1,2,3]);
	
	threeSizeArgumentsNamedTwo({"a"={b=2}},[1,2,3],[1,{"y"={x=2},z=3}]);

	threeSizeArgumentsNamedFour({"a"={b=2}},[1,2,3],[1,{"y"={x=2},z=3}]);
	
	writeOutput("success.");
</cfscript>