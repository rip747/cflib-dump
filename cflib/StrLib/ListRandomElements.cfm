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
 * Returns specified number of random list elements without repeats.
 * 
 * @param theList 	 Delimited list of values. (Required)
 * @param numElements 	 Number of list elements to retrieve. (Required)
 * @param theDelim 	 Delimiter used to separate list elements.  The default is the comma. (Optional)
 * @return Returns a string. 
 * @author Shawn Seley (shawnse@aol.com) 
 * @version 1, July 10, 2002 
 */
function ListRandomElements(theList, numElements) {
	var theDelim     = ",";
	var final_list   = "";
	var x            = 0;
	var random_i     = 0;
	var random_val   = 0;

	if(ArrayLen(Arguments) GTE 3) theDelim = Arguments[3];

	if(numElements GT ListLen(theList, theDelim)) {
		numElements = ListLen(theList, theDelim);
	}

	// Build the new list "scratching off" the randomly selected elements from the original list in order to avoid repeats
	for(x=1; x LTE numElements; x=x+1){
		random_i        = RandRange(1, ListLen(theList));    // pick a random list element index from the remaining elements
		random_val      = ListGetAt(theList, random_i);      // get the corresponding list element's value
		theList         = ListDeleteAt(theList, random_i);   // delete the used element from the list

		final_list      = ListAppend(final_list, random_val , theDelim);
	}

	return(final_list);
}
</cfscript>