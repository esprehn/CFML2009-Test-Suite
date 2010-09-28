<cfscript>
	
	function test() {}
	function test2() {}
	test3 = test2;

	foo = "abc";
	
	// Scoped Calls
	variables.test = test;
	variables.test();
	variables.test(bar=2,arg={a="foo#new cfml2009testsuite.TestComponent().getName()#"});
	variables.test(["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	
	variables.foo = structNew();
	variables.foo.bar = structNew();
	variables.foo.bar.test = test;
	variables.foo.bar.test();
	variables.foo.bar.test(bar=2,arg={a="foo#new cfml2009testsuite.TestComponent().getName()#"});
	variables.foo.bar.test(["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	
	session.test = test2;
	session.test();
	session.test(bar=2,arg={a="foo#new cfml2009testsuite.TestComponent().getName()#"});
	session.test(["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	
	application.test = test;
	application.test();
	application.test(bar=2,arg={a="foo#new cfml2009testsuite.TestComponent().getName()#"});
	application.test(["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	
	server.test = test;
	server.test();
	server.test(bar=2,arg={a="foo#new cfml2009testsuite.TestComponent().getName()#"});
	server.test(["foo#new cfml2009testsuite.TestComponent().getName()#"]);
	
	writeOutput("success.");
</cfscript>