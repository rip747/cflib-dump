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
 * Calculates the volume of an ellipsoid.
 * 
 * @param radius1 	 1/2 the diameter of the first axis. 
 * @param radius2 	 1/2 the diameter of the second axis. 
 * @param radius3 	 1/2 the diameter of the third axis. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolEllipsoid(radius1, radius2, radius3)
{
  Return ((4/3) * PI() * radius1 *radius2 * radius3);
}
</cfscript>