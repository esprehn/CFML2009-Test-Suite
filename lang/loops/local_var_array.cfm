<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	function test(arg)
	{
		for( var list = [1,2,3]; arrayLen(list) lte 5; arrayAppend(list,arrayLen(list)) );
		assert(5,list[arrayLen(list)]);
		assert(6,arrayLen(list));
				
		for( var x in [1,{"abc"={foo="bar",baz=[]}}] )
		{
			assert(1,x);
			break;
		}
						
		var str = "";
		for( var x in listToArray("foo,bar,baz") )
		{
			str &= x;
		}
		assert("foobarbaz",str);
		
		// test() + testsuite.cfm
		assert(1+request.variablesSize,structCount(variables));
	}
	test("value");
	
	writeOutput("success.");
</cfscript>