<!---
This library is part of the Common Function Library Project. An open source
	collection of UDF libraries designed for ColdFusion 5.0 and higher. For more information,
	please see the web site at:

		http://www.cflib.org

	Warning:
	You may not need all the functions in this library. If speed
	is _extremely_ important, you may want to consider deleting
	functions you do not plan on using. Normally you should not
	have to worry about the size of the library.

	License:
	This code may be used freely.
	You may modify this code as you see fit, however, this header, and the header
	for the functions must remain intact.

	This code is provided as is.  We make no warranty or guarantee.  Use of this code is at your own risk.
--->

<cfscript>
/**
 * Converts Roman numerals to decimal.
 * v2 fix by for non standard things like IIX, fix done by Gary Funk
 * 
 * @param input 	 Roman number input. (Required)
 * @return Returns a number. 
 * @author Raymond Camden (ray@camdenfamily.com) 
 * @version 2, February 4, 2010 
 */
function romantodec(input) {
	var romans = {};
	var result = 0;
	var pos = 1;
	var char = "";
	var thisSum = "";
	var nextchar = "";
	var subSum = 0;
		
	romans["I"] = 1;
	romans["V"] = 5;
	romans["X"] = 10;
	romans["L"] = 50;
	romans["C"] = 100;
	romans["D"] = 500;
	romans["M"] = 1000;

	while(pos lte len(input)) {
		char = mid(input, pos, 1);
		subSum += romans[char];
		if(pos != len(input)) {
			nextchar = mid(input, pos + 1, 1);
			if(romans[char] == romans[nextchar]) {
				pos++;
			} else if(romans[char] < romans[nextchar]) {
				result = result + romans[nextchar] - subSum;
				subSum = 0;
				pos += 2;
			} else {
				result = result + subSum;
				subSum = 0;
				pos++;
			}
		} else {
			result = result + subSum;
			pos++;
		}
	}    
	return result;
}
</cfscript>