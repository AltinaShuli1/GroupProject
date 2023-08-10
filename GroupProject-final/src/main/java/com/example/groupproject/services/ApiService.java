package com.example.groupproject.services;

import com.example.groupproject.models.ApiDataItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class ApiService {

    private final String API_URL = "https://book-finder1.p.rapidapi.com/api/search";
    private final String API_KEY = "cbd72f4473mshe051356c670e17cp18724djsna234e4990082";
    private static final Logger logger = LoggerFactory.getLogger(ApiService.class);

    public List<ApiDataItem> fetchData() {
        RestTemplate restTemplate = new RestTemplate();
        List<ApiDataItem> items = new ArrayList<>();

        HttpHeaders headers = new HttpHeaders();
        headers.set("X-RapidAPI-Key", API_KEY);
        headers.set("X-RapidAPI-Host", "book-finder1.p.rapidapi.com");
        HttpEntity<String> entity = new HttpEntity<>(headers);

        try {
            ResponseEntity<ApiDataItem[]> response = restTemplate.exchange(API_URL, HttpMethod.GET, entity, ApiDataItem[].class);
            items = Arrays.asList(response.getBody());
        } catch (Exception e) {
            logger.error("Error fetching data from the API: {}", e.getMessage());
        }

        return items;
    }

    public String getAPI_URL() {
        return API_URL;
    }

    public String getAPI_KEY() {
        return API_KEY;
    }
}
