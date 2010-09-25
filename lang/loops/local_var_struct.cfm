<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	function test(arg)
	{
		for( var x in {"a"=[1]} )
		{
			assert("a",x);
		}
		
		for( var x in arguments )
		{
			assert("arg",x);
		}
		
		// test() + testsuite.cfm
		assert(1+request.variablesSize,structCount(variables));
	}
	test("value");
	
	writeOutput("success.");
</cfscript>