<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	function test(arg)
	{
		// Cannot use var x in arr loop on native array.
		//
		// You have attempted to dereference a scalar variable of type class 
		// [Ljava.lang.reflect.Method; as a structure with members.
		//
		// Note: By design per Adobe CF Team. Broken in 9.0.1
		//
		var arr = createObject("java","java.lang.Class").forName("java.lang.String").getDeclaredMethods();
		for( var x in arr )
		{
			assert("java.lang.reflect.Method",x.getClass().getName());
		}
		
		// test() + testsuite.cfm
		assert(1+request.variablesSize,structCount(variables));
	}
	test("value");
	
	writeOutput("success.");
</cfscript>