<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	x = 1;
	x &= 2;
	assert("12",x);
	x += 4;
	assert(16,x);
	x -= "6";
	assert(10,x);
	x -= (x/2);
	assert(5,x);
	x %= 3;
	x /= 2;
	assert(1,x);
	x = 5;
	assert(25,x ^ 2);
	assert(32,2 ^ x);
		
	// Note: These could be optimized away if the CF optimzier got smarter
	y=5;
	assert(true,x!=y-1);
	assert(false,x!=x);
	assert(true,x==5);
	assert(true,y==x);
	assert(true,x neq y-1);
	assert(false,x neq x);
	assert(true,x eq 5);
	assert(true,y eq x);
	
	z = 15;
	assert(true,z <= x*3);
	assert(false,z < x+(x*2));
	assert(true,z/3 >= x);
	assert(false,z-10 > x);
	assert(true,z lte x*3);
	assert(false,z lt x+(x*2));
	assert(true,z/3 gte x);
	assert(false,z-10 gt x);
	
	x = 2;
	assert(4,x + x);
	assert(1,x - 1);
	assert(-18,x - 20);
	assert(4,x * x);
	assert(2,4 / x);
	assert(1,3 mod x);
	x = 33;
	assert(33-20,x mod 20);
	assert(3,x\10);
	
	writeOutput("success.");
</cfscript>