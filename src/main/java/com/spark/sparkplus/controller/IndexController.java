package com.spark.sparkplus.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.GetMapping;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.HashMap;

@Controller
@EnableAutoConfiguration
public class IndexController {
    
    String createQrURL = "https://community.sparkplus.co/user/qr/getQrImageUrl";
    
    @ResponseBody
    @RequestMapping(value = "/retry", method = RequestMethod.GET)
    public String retry() throws IOException {
        
        HashMap<String, String> params = new HashMap<String, String>();
        /*
        params.put("seq_visit_booking", "11ED5B0149552A6F8FB50AE9EC11143E");
        params.put("type", "always");
        
        Document doc = Jsoup.connect(createQrURL)
                .timeout(3000)
                .header("Origin", "https://community.sparkplus.co/")
                .header("Referer", "https://community.sparkplus.co/")
                .header("Accept", "application/json, text/javascript, * / *; q=0.01")
                .header("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
                .header("Accept-Encoding", "gzip, deflate, br")
                .header("Accept-Language", "ko-KR,ko;q=0.8,en-US;q=0.6,en;q=0.4")
                .cookie("session", "771bj2or3cj19n74vqt576272chgqaf6; Path=/; HttpOnly; Expires=Sat, 11 Feb 9999 10:59:42 GMT;")
                .data(params)
                .ignoreContentType(true)
                .post();
        
        Elements links = doc.select("html body");
        @SuppressWarnings("deprecation")
        JsonParser parser = new JsonParser();
        
        @SuppressWarnings("deprecation")
        JsonElement _status = parser.parse(links.text()).getAsJsonObject().get("result");
        
        String statusCode =  _status.toString().replace("\"", "");
        String base64img = "";
        
        
        
        
        
        if("00".equals(statusCode)) {
            @SuppressWarnings("deprecation")
            JsonElement mainJson = parser.parse(links.text()).getAsJsonObject().get("url");
            base64img = mainJson.toString().replace("data: ;base64,", "").replace("\"", "");
        }
        
        */
        JsonObject obj =new JsonObject();
        
        //obj.addProperty("statusCode", statusCode);
        //obj.addProperty("base64img", base64img);
        
      
        return obj.toString();
        
    }
    
    // TODO 당일 예약 하는 방법
    @GetMapping({"/","/myqr"})
    public String welcome(Map<String, Object> model) throws IOException {
        
        @SuppressWarnings({"rawtypes","unchecked"})
        HashMap<String, String> params = new HashMap();

        params.put("seq_visit_booking", "11ED5B0149552A6F8FB50AE9EC11143E");
        params.put("space", "11ECF2B87C7BCF788FB50AE9EC11143E");
        params.put("type", "always");

        Document doc = Jsoup.connect(createQrURL)
                .timeout(3000)
                .header("Origin", "https://community.sparkplus.co")
                .header("Referer", "https://community.sparkplus.co/user/qr/my_property")
                .header("Accept", "application/json, text/javascript, */*; q=0.01")
                .header("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
                .header("Accept-Encoding", "gzip, deflate, br")
                .header("Accept-Language", "ko-KR,ko;q=0.8,en-US;q=0.6,en;q=0.4")
                .cookie("session", "dbaih0n4u5t45u9rp7bl06ula2ta3mg9; Path=/; HttpOnly; Expires=Sat, 11 Feb 9999 10:59:42 GMT;")
                .data(params)
                .ignoreContentType(true)
                .post();
        
        Elements links = doc.select("html body");

        @SuppressWarnings("deprecation")
        JsonParser parser = new JsonParser();
        
        @SuppressWarnings("deprecation")
        JsonElement _status = parser.parse(links.text()).getAsJsonObject().get("result");
        
        String statusCode =  _status.toString().replace("\"", "");
        
        model.put("statusCode",statusCode);
        
        //System.out.println(result2.toString().replace("\"", "") + "," + result2.toString().replace("\"", "").equals("00"));
        
        if("00".equals(statusCode)) {
            @SuppressWarnings("deprecation")
            JsonElement mainJson = parser.parse(links.text()).getAsJsonObject().get("url");
//          System.out.println(mainJson.toString().replace("data: ;base64,", "").replace("\"", ""));

            model.put("base64img", mainJson.toString().replace("data: ;base64,", "").replace("\"", ""));
        }

        return "qrview";
    }
    
    
}

/* 예약 Request
//get
//https://community.sparkplus.co/user/qr/my_property
//cookie: space=11ECF2B87C7BCF788FB50AE9EC11143E; session=r75tcms3pr481hpfjq1pc1j9hb7ftv51
//referer: https://community.sparkplus.co/user/qr/my_property
*/