<cfscript>

	function test() {}
	function test2() {}
	test3 = test2;
	
	foo = "abc";

	test(1);
	test({});
	test3([]);
	test([],"1bc");
	test({},"1bc");
	test3([1,2],[]);
	test3([1],2,[]);
	test3(1,{"a"=2},{x=3},[1,2,{a=2}]);
	test3(1,{},{abc=1},"foo");
	test3([1, 2,3],"bar");
	test3([{abc= 2 } ]);
	
	test2(["foo#new cfml2009testsuite.Query().getName()#"]);


	writeOutput("success.");
</cfscript>