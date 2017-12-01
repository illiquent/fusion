<cfscript>
	
 cfc = createObject("component", "punk");
 theMetadata = getMetadata(cfc); 
 writeDump(theMetaData);
 greeting = cfc.sayHi();
 queryThing = cfc.myQuery();
    writeOutput("<p>Hey" & greeting & "</p>");
    //writeDump(queryThing);
  
  for (row in queryThing) {
  	if (row.firstName == 'Bruce') {
  		writeOutput("Nice one Bruce!");
  	}
  	else {
  		writeOutput(" " & row.firstName & "<br>");
  		writeOutput("you are" & queryThing.currentRow);
  	}
  	
  	//while(queryThing.) {
  		//writeOutput("p!");
  	//}
  	
  }

queryComp = createObject("component","Hola");
showQuery = queryComp.getQuery();
 
for (row in showQuery) {
	
	writeOutput(row.firstname);
}
  

</cfscript>




  