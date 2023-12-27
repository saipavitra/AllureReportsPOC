Feature: fetching User Details


 @getCall
Scenario: testing the get call for User Details
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
* def last_name = karate.jsonPath(response, "$[?(@.last_name=='Weaver')]" #karate.jsonPath will check for last name
And print "lastname", last_name
Then print response
And match response contains deep {"first_name": "Janet"} # deep keyword to validate the property of json
#And match response.[0].project[0].technology[1]=='Gradle' # to validate nested array json
#And match response.[0].experience =='#[3]' # to validate the size of the json array  #[3] -> this indicates the size of experience property
#And match response.[0].project[0].technology[*]== ['Koltin','SQl','Gradle'] # if wildcard like * is given it will compare each and every value of technology property
#And match response.[0].project[0].technology[*] contains ['SQL] # if contains is present if any one the value of Technology property is present this will return true
# fuzzy set
#And match response.[0].experience[1] =='#notnull'
#And match response.[0].experience[1] =='#present'
#And match response.[0].experience[1] =='#array'
#And match response.[0].jobTitle =='#string'
#And match response.[0].jobId =='#number'


@PostCall
Scenario: testing the POST call for User Creation
      Given url 'https://reqres.in'
      And path '/api/users'
      And header Accept = 'application/json' 
      And request '{"name": "morpheus","job": "leader"}'
      When method POST
      Then status 201
      
     
@PutCall
Scenario: testing the PUT call for User Creation
      Given url 'https://reqres.in/api/users/2'
      * def getRandomValue = function() { return "morpheus";}
      And request {"name": '#(getRandomValue())',"job": "leaderQA"}
      Then print response
      When method PUT
      Then status 200
      
 #def someJson = read('some-json.json') -> path of the json file 
 #Use fuzzy matcher to validate schemes
 #Use jsonPath syntax to fetch the value if the json has nested array-> $[?(.@name == "morpheus")]
     
     
