component {
   
   remote string function holaWorld() {
      return "Hola Pinche Juevon!";
      }
      
   remote query function getQuery() {
   	
   	 // create a resultset "people" by calling the makeQuery method
   	 people = makeQuery();
   	 
   	 //writeDump(people);
   	 peopleQuery = new Query(sql="SELECT * FROM PEOPLE",
	 dbtype="query", people=people).execute().getResult();
	 return peopleQuery;
   	
   }
   
   // private method to build a query object that serves as table
   private query function makeQuery() {
   	
   			people = queryNew(
		"id, firstName, lastName, email, country, ip_address",
		"integer, varchar, varchar, varchar, varchar, varchar",
		[{
		  "id": 1,
		  "firstName": "Christopher",
		  "lastName": "Burton",
		  "email": "cburton0@disqus.com",
		  "country": "Poland",
		  "ip_address": "81.248.29.126"
		}, {
		  "id": 2,
		  "firstName": "Scott",
		  "lastName": "Vasquez",
		  "email": "svasquez1@simplemachines.org",
		  "country": "Iceland",
		  "ip_address": "225.10.179.213"
		}, {
		  "id": 3,
		  "firstName": "Earl",
		  "lastName": "Berry",
		  "email": "eberry2@amazon.de",
		  "country": "Sri Lanka",
		  "ip_address": "110.242.80.67"
		}, {
		  "id": 4,
		  "firstName": "Brian",
		  "lastName": "Turner",
		  "email": "bturner3@mediafire.com",
		  "country": "China",
		  "ip_address": "140.86.69.145"
		}, {
		  "id": 5,
		  "firstName": "Jimmy",
		  "lastName": "Mccoy",
		  "email": "jmccoy4@irs.gov",
		  "country": "Vietnam",
		  "ip_address": "215.144.2.198"
		}, {
		  "id": 6,
		  "firstName": "Bruce",
		  "lastName": "Williams",
		  "email": "bwilliams5@woothemes.com",
		  "country": "Russia",
		  "ip_address": "130.107.175.112"
		}, {
		  "id": 7,
		  "firstName": "Peter",
		  "lastName": "Cox",
		  "email": "pcox6@storify.com",
		  "country": "United States",
		  "ip_address": "155.3.57.239"
		}, {
		  "id": 8,
		  "firstName": "Edward",
		  "lastName": "Cook",
		  "email": "ecook7@china.com.cn",
		  "country": "France",
		  "ip_address": "253.187.203.194"
		}, {
		  "id": 9,
		  "firstName": "Christopher",
		  "lastName": "Burns",
		  "email": "cburns8@cnet.com",
		  "country": "Indonesia",
		  "ip_address": "198.207.147.137"
		}]
	);
	 return people;
   	
   }
  
}