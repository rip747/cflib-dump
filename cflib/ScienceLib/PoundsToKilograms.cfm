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
 * Pounds to kilograms conversion.
 * 
 * @param value 	 Weight in pounds. (Required)
 * @return Returns a number. 
 * @author Casey Broich (cab@pagex.com) 
 * @version 1, May 9, 2003 
 */
function PoundsToKilograms(value) {
  var t = '0';
  if(value gt 0) t= value*0.4536;
  return t;
}
</cfscript>