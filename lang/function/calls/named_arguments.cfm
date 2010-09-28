<cfscript>	
	function test() {}
	function test2() {}
	test3 = test2;
	
	foo = "abc";
	
	test(arg={});
	test(arg={a=2});
	test(bar=2,arg={'a'="foo#new cfml2009testsuite.TestComponent().getName()#"});
	test(bar=foo , arg = { "a" ="foo#new cfml2009testsuite.TestComponent().getName()#"});
	test(bar= 2 ,arg=["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	test(bar = foo,arg=["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	test({abc=1,def=["foo#new cfml2009testsuite.TestComponent().getName()# #foo#"]});
	test( flash={type="good", "message"="Shared with #test2()# and #test3()# and #foo#", baz=2}, abc=2 );
	
	writeOutput("success.");
</cfscript>