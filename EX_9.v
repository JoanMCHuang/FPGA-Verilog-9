`timescale 1 ns/1 ns

module EX_9(a, b, c, d, e, f, sel1, sel2, sel3, sel4, sel5,g);
input	[3:0]	a, b, c, d, e, f;
input		sel1, sel2, sel3, sel4 , sel5;
output	[3:0]	g;
reg	[3:0]	g;

// non-behavioral writing style in EX_105 is also listed for
// comparison. c and f should be declared as wire in
// non-behavioral writing style.
//
// wire	[3:0]	c, f;
//
// assign c = ( sel1 ) ? a :
//            ( sel2 ) ? b :
//            ( sel3 ) ? d : e;

always@(sel1 or sel2 or sel3 or sel4 or sel5 or a or b or c or d or e or f)
begin
	if (sel1)
	  g = a;
	else 
		if (sel2) 
			if (sel3) 
			 g = b;
			else 
			 g = c;		
		else 
			if (sel4) 
			 g = d;
			else 
			 if (sel5)
			  g = e;
			 else 
			  g = f;
			
end

// non-behavioral writing style in EX_105 is also listed for
// comparison.
//
// assign f = ( sel1 ) ? ((sel2) ? a : b) :
//                       ((sel3) ? d : e) ;

//always@(sel1 or sel2 or sel3 or a or b or d or e)
//begin
	//if (sel1)
	 // if (sel2)
	   // f = a;
	  //else
	    //f = b;
	//else
	  //if (sel3)
	   // f = d;
	  //else
	   // f = e;
//end

endmodule
