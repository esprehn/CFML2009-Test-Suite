<cfscript>
	// Adobe Bug (CF 9.0.1) Regression of Bug 79029
	//

	include "/cfml2009testsuite/testsuite.cfm";
		
	function assignArguments()
	{
		var args = structCopy(arguments);
		args.x = 2;
		args.z = 10;
		var other = structCopy(args);
		other.z = 20;
		assert(false,structKeyExists(arguments,"z"));
		assert(10,args.z);
		other.k = 25;
		return arguments;
	}

	assert(5,assignArguments(x=5).x);

	writeOutput("success.");
</cfscript>