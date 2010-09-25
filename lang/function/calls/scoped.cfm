<cfscript>
	
	function test() {}
	function test2() {}
	test3 = test2;

	foo = "abc";
	
	// Scoped Calls
	variables.test = test;
	variables.test();
	variables.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	variables.test(["foo#new cfml2009testsuite.Query().getName()#"]);
	
	variables.foo.bar.test = test;
	variables.foo.bar.test();
	variables.foo.bar.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	variables.foo.bar.test(["foo#new cfml2009testsuite.Query().getName()#"]);
	
	session.test = test2;
	session.test();
	session.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	session.test(["foo#new cfml2009testsuite.Query().getName()#"]);
	
	application.test = test;
	application.test();
	application.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	application.test(["foo#new cfml2009testsuite.Query().getName()#"]);
	
	server.test = test;
	server.test();
	server.test(bar=2,arg={a="foo#new cfml2009testsuite.Query().getName()#"});
	server.test(["foo#new cfml2009testsuite.Query().getName()#"]);
	
	writeOutput("success.");
</cfscript>