package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {
	
	@Before("@DeletePlace")
	public void beforeScenario() throws IOException
	{
		//Write a code that will give you place id
		//Execute this code only when place id is null
		StepDefination m =new StepDefination();
		
		if(StepDefination.place_id==null)
		{
		m.add_place_payload_with("Shetty", "Hindi", "India");
		m.user_calls_with_http_request("addPlaceAPI", "POST");
		m.verify_place_id_created_maps_to_using("Shetty", "getPlaceAPI");
		}
	}

}
