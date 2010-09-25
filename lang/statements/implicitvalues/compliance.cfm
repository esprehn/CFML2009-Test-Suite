<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	x = [];
	assert(0,arrayLen(x));

	x = [1,2,3];
	assert(3,arrayLen(x));
	assert(2,x[2]);
	
	x = [2,3];
	assert(2,x[1]);
	
	x = {x=2};
	assert(2,x.x);
	
	x = {z=1};
	x = [5,{x=x}];	
	assert(1,x[2].x.z);
	
	// Duplicate declarations of keys is OK. Last one wins.
	z = 
	{
		z = 2,
		a = 1,
		"x" = [x],
		z = {z=[x,6]},
		b = x,
		x=2
	};
	assert(6,z.z.z[2]);
	assert(5,z.z.z[1][1]);
	assert(2,z.x);
	
	assert("foo",structKeyList({foo=1}));
	assert("foo",structKeyList({foo=[2]}));

	assert("1,2,3",arrayToList([1,2,3]));
	assert("1{}2{}3",arrayToList([1,2,3],"{}"));
	assert("1|2|3",arrayToList([1,2,3],"|"));
	
	// No way to verify this works, but the compiler should allow it
	arraySort([1,5,2],"numeric");

	// Compiler Compliance
	
	array function return_array()
	{
		return [{x=1,"y.foo"=3,z.foo=[3,[parseDateTime("2010-1-1")]]},{a={a={a=2}}},[[[[3]]]]];
	}
	return_array();
	return_array([{x=1,"y.foo"=3,z.foo=[3,[parseDateTime("2010-1-1")]]},{a={a={a=2}}},[[[[3]]]]]);
	assert(3,return_array([1,2],2,3,{foo=1})[3][1][1][1][1]);
	
	struct function return_struct() 
	{
		return {x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]};
	}
	return_struct();
	return_struct({x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]});
	assert(3,return_struct([1,2],2,3,{foo=1}).x[1].y[3]);
	
	function return_value(a,b) 
	{
		if( isArray(a) )
		{
			return a[2].a.a.a;
		}
		else if( isStruct(a) )
		{
			return a.x[1].y[3];
		}
				
		return a & b;
	}
	
	// Validate nested construction is somewhat sane.
	assert(23,
		return_value(
			return_value(
				[{x=1,"y.foo"=3,z.foo=[3,[parseDateTime("2010-1-1")]]},{a={a={a=2}}},[[[[3]]]]],
				{x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]}
			),
			return_value(
				{x=[{"z"=2,y=[1,2,3],foo=createTimeSpan(0,1,2,3)}]},
				[{x=1,"y.foo"=3,z.foo=[3,[parseDateTime("2010-1-1")]]},{a={a={a=2}}},[[[[3]]]]]
			)
		)
	);
	
	x = return_arguments({"foo.bar.baz"=2,foo.bar.baz=7})[1];
	assert(2,x["foo.bar.baz"]);
	assert(7,x.foo.bar.baz);
	
	writeOutput("success.");
</cfscript>