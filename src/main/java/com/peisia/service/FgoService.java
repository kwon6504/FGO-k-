package com.peisia.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.peisia.dto.FgoDto;
import com.peisia.dto.SkillsInfo;

@Service
public class FgoService{
	
	
//	public List<FgoDto> getServantData(String className) {
//        String apiUrl = "https://api.atlasacademy.io/basic/KR/servant/search?className=" + className;
//
//        URI uri = new URI(apiUrl);
//
//	    RestTemplate restTemplate = new RestTemplate();
//	    HttpHeaders headers = new HttpHeaders();
//
//	    headers.setContentType(MediaType.APPLICATION_JSON);
//
//	    HttpEntity<String> entity = new HttpEntity<>(headers);
//
//	    // JSON 문자열을 SkillsInfo 객체로 직접 매핑
//	    ResponseEntity<FgoDto> response = restTemplate.exchange(uri, HttpMethod.GET, entity, FgoDto.class);
//
//	    return response.getBody();
//	}
//	
	
	public ArrayList<FgoDto> getServantData(String className) throws IOException{
		FgoDto info = new FgoDto(0, "", "", 0, "");
		String apiUrl = "https://api.atlasacademy.io/basic/KR/servant/search?className="+className;
		
		try {
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			
			int responseCode = connection.getResponseCode();
			if(responseCode == HttpURLConnection.HTTP_OK) {
				BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				StringBuilder response = new StringBuilder();
				String line;
				while((line = reader.readLine()) != null) {
					response.append(line);
				}
				reader.close();
				String jsonData = response.toString();
				
				Gson gson = new Gson();
				
				JsonArray jsonArray = gson.fromJson(jsonData, JsonArray.class);
				//JsonArray는 제이슨의 []를 List로 가져오는 명령어
				ArrayList<FgoDto> saberInfoList = new ArrayList<>();
				for (int i = 0; i < jsonArray.size(); i++) {
					JsonObject jsonObject = jsonArray.get(i).getAsJsonObject();
					int id = jsonObject.get("id").getAsInt();
					String name = jsonObject.get("name").getAsString();
					int rarity = jsonObject.get("rarity").getAsInt();
					String face = jsonObject.get("face").getAsString();
					info = new FgoDto(id,name,className,rarity,face);
					saberInfoList.add(info);
				}

				//콘솔 확인용
				for (FgoDto saberInfo : saberInfoList) {
	                 System.out.println("ID: " + saberInfo.getId());
	                 System.out.println("Name: " + saberInfo.getName());
	                 System.out.println("Class Name: " + saberInfo.getClassName());
	                 System.out.println("rarity:"+saberInfo.getRarity());
	                 System.out.println("face:"+saberInfo.getFace());
	                 System.out.println();
	             }
				 return saberInfoList;
				 
			} else {
				 System.out.println("Failed to fetch data from the URL. Response code: " + responseCode);
			}
			connection.disconnect();
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public SkillsInfo getStatusData(int id) throws IOException, URISyntaxException {
	    String apiUrl = "https://api.atlasacademy.io/nice/KR/servant/"+id;

	    URI uri = new URI(apiUrl);

	    RestTemplate restTemplate = new RestTemplate();
	    HttpHeaders headers = new HttpHeaders();

	    headers.setContentType(MediaType.APPLICATION_JSON);

	    HttpEntity<String> entity = new HttpEntity<>(headers);

	    // JSON 문자열을 SkillsInfo 객체로 직접 매핑
	    ResponseEntity<SkillsInfo> response = restTemplate.exchange(uri, HttpMethod.GET, entity, SkillsInfo.class);

	    return response.getBody();
    }
	
//	public SkillsInfo getStatusData(int id) throws IOException {
//		SkillsInfo babo = new SkillsInfo();
//		String apiUrl = "https://api.atlasacademy.io/nice/KR/servant/"+id;
//		try {
//			URL url = new URL(apiUrl);
//			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//			connection.setRequestMethod("GET");
//			
//			int responseCode = connection.getResponseCode();
//			if(responseCode == HttpURLConnection.HTTP_OK) {
//				BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
//				StringBuilder response = new StringBuilder();
//				String line;
//				while((line = reader.readLine()) != null) {
//					response.append(line);
//				}
//				reader.close();
//				String jsonData = response.toString();
//				ObjectMapper objectMapper = new ObjectMapper();
//				try {
//					babo = objectMapper.readValue(jsonData, SkillsInfo.class);
//				} catch(Exception e) {
//					e.printStackTrace();
//				}
//				System.out.println("바보같은나:"+babo.getSkills().get(0));
//				return babo; 
//			} else {
//				 System.out.println("Failed to fetch data from the URL. Response code: " + responseCode);
//			}
//				connection.disconnect();
//			} catch(IOException e) {
//				e.printStackTrace();
//			}
//		return null;
//	}
	
	
}
