package edu.neu.cs5200.main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import org.json.*;
import org.json.JSONArray;
import org.json.JSONObject;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.neu.cs5200.spur.subclass.Games;

public class GetGameInforBySeason {
	
	private final String FIND_SCHEDULE_BY_SEASON = "http://api.sportradar.us/nba-t3/zh/games/SEASON/reg/schedule.json?api_key=smucb9h4a4bwey25cj9cwnd9";

	public ArrayList<Games> findScheduleBySeason(String season){
		
		String urlStr = FIND_SCHEDULE_BY_SEASON.replace("SEASON", season);
        
		String json = getJsonStringForCoachUrl(urlStr);
		
		JSONObject obj;
		//JSONArray myArrayJsonObj = new JSONArray();
		try {
			obj = new JSONObject(json);
			
			ArrayList<Games> games = new ArrayList<Games>();
			
			ObjectMapper mapper = new ObjectMapper();
			
			JSONArray arr = obj.getJSONArray("games");
			
			for (int i = 0; i < 4; i++)
			{
			    String id = arr.getJSONObject(i).getString("id");
			    String status = arr.getJSONObject(i).getString("status");
			    String coverage = arr.getJSONObject(i).getString("coverage");
			    String scheduled = arr.getJSONObject(i).getString("scheduled");
			    String venue_id = arr.getJSONObject(i).getJSONObject("venue").getString("id");
			    String name = arr.getJSONObject(i).getJSONObject("venue").getString("name");
			    Long capacity = arr.getJSONObject(i).getJSONObject("venue").getLong("capacity");
			    String venue_address = arr.getJSONObject(i).getJSONObject("venue").getString("address");
			    String venue_city = arr.getJSONObject(i).getJSONObject("venue").getString("name");
			    String venue_state = arr.getJSONObject(i).getJSONObject("venue").getString("name");
			    String venue_zip = arr.getJSONObject(i).getJSONObject("venue").getString("name");
			    String venue_country = arr.getJSONObject(i).getJSONObject("venue").getString("country");
//			    String name = venue.getString("name");
//			    Long capacity = venue.getLong("capacity");
//			    String address = venue.getString("address");
//			    String city = venue.getString("city");
//			    String state = venue.getString("state");
//			    String zip = venue.getString("zip");
//			    String country = venue.getString("country");
			    
			    
				JSONObject mySingleJsonObj = new JSONObject();
			    mySingleJsonObj.put("id", id);
			    mySingleJsonObj.put("status", status);
			    mySingleJsonObj.put("coverage", coverage);
			    mySingleJsonObj.put("scheduled", scheduled);
			    mySingleJsonObj.put("venue_id", venue_id);
			    mySingleJsonObj.put("name", name);
			    mySingleJsonObj.put("capacity", capacity);
			    mySingleJsonObj.put("address", venue_address);
			    mySingleJsonObj.put("city", venue_city);
			    mySingleJsonObj.put("state", venue_state);
			    mySingleJsonObj.put("zip", venue_zip);
			    mySingleJsonObj.put("country", venue_country);
			    
			    String myNewData = mySingleJsonObj.toString();
			    games.add(mapper.readValue(myNewData, Games.class));			    
			}
			return games;
		} 
		catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return null;

	}

	
	public static String getJsonStringForCoachUrl(String urlStr1) {
		try {
			// create a url object to represent the string.
			URL url = new URL(urlStr1);
			// open a connection to the URL and convert it to a HTTP protocal
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			// We need to say what we want to do with this URL
			connection.setRequestMethod("GET");
			// give me back what I want, open a stream and steam back the data
			InputStream in = connection.getInputStream();
			// buffer the information
			InputStreamReader isr = new InputStreamReader(in);
			BufferedReader reader = new BufferedReader(isr);
			String out;
			StringBuffer json = new StringBuffer();
			while ((out = reader.readLine()) != null) {
				json.append(out);
			}
			// System.out.println(json);
			return json.toString();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		GetGameInforBySeason client = new GetGameInforBySeason();
		
		ArrayList<Games> games = client.findScheduleBySeason("2014");
		for(Games game : games){
			System.out.println("Player ID: " + game.getId());
			System.out.println("Status: " + game.getStatus());
			System.out.println("Full Name: " + game.getVenue().getAddress());
//			System.out.println("First Name: " + game.getFirst_name());
//			System.out.println("Last Name: " + game.getLast_name());
//			System.out.println("Abbr Name: " + game.getAbbr_name());
//			System.out.println("Height: " + game.getHeight());
//			System.out.println("Weight: " + game.getWeight());
//			System.out.println("Position: " + game.getPosition());
//			System.out.println("Primary Position: " + game.getPrimary_position());
//			System.out.println("Jersey Number: " + game.getJersey_number());
//			System.out.println("Experience: " + game.getExperience());
//			System.out.println("College: " + game.getCollege());
//			System.out.println("Birth Place: " + game.getBirth_place());
//			System.out.println("Brithdate: " + game.getBirthdate());
		}

	}

}
