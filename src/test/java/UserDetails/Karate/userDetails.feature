Feature: fetching User Details
 
Scenario: testing the get call for User Details
 #Recommeded put the variable in the top
 * def expectedOutput = read('result.json')
 
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
#  And match response == {"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"},"support":{"text":"To keep ReqRes free, contributions towards server costs are appreciated!","url":"https:\/\/reqres.in\/#support-heading"}}

And match response == expectedOutput

And match response.data.id == 2

And match response.data.last_name != null

* def job_code = response.data.job_code
And match job_code == null