Feature: Validating Place API's 
@AddPlace @Regression
Scenario Outline: Verify if Place is being successfully added using AddPlaceAPI
Given AddPlace Payload with "<name>" "<language>" "<address>"
When user calls "addPlaceAPI" with "POST" http request
Then the API response displayed success with status code 200
And "status" in response body is "OK"
And "scope" in response body is "APP"
And verify place_Id created maps to "<name>" using "getPlaceAPI"

Examples:
	|name     |language  |address             |
	|AAhouse  |English   |World Cross Center  |
#	|BBhouse  |Spanish   |Sea Cross Center    |

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working
Given DeletePlace PayLoad
When user calls "deletePlaceAPI" with "DELETE" http request
Then the API response displayed success with status code 200
And "status" in response body is "OK"