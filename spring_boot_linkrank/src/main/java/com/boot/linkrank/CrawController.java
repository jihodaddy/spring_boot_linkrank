package com.boot.linkrank;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CrawController {

	 @RequestMapping("/crawring")
	    public String main() {
	        return "craw/craw";
	    }
	    
	    @RequestMapping(value="craw/craw_select.ajax")
	    @ResponseBody
	    public Map<String,Object> craw_select(String user_id,HttpServletRequest req,HttpServletResponse resp)throws Exception {
	        boolean result =false;

	        //원하는 정보 가져올 URL
	        String url = "https://flixpatrol.com/top10/netflix/south-korea/";
	        //사이트 연결 및 데이터 저장
	        Document doc =Jsoup.connect(url).get();
	        //원하는 태그 선택
	        Elements ele = doc.select("body > div:nth-child(3) > div.flex.flex-wrap.justify-center.md\\:-mx-3 > div:nth-child(1) > div > div > div.w-3\\/4 > div > div > table > tbody");
	        //body > div:nth-child(3) > div.flex.flex-wrap.justify-center.md\\:-mx-3 > div:nth-child(1) > div > div > div.w-3\\/4 > div > div > table > tbody > tr:nth-child(1) > td:nth-child(3) > a
	        
	        int chamLength = ele.size();
	        System.out.println("div개수"+chamLength);
	        
	             
	        //데이터 파싱
	        List<String> DramaResult = new ArrayList<>();
	        //List<String> MovieResult = new ArrayList<>();
	        DramaResult.add(ele.select("tr.table-td a").text()); //드라마 이름
	        DramaResult.add(ele.select(" tr:nth-child(1) > td:nth-child(3) > a").text()); //드라마 이름
	        //MovieResult.add(ele.select(".Played .title").text());
	        System.out.println(DramaResult);
	        Map<String,Object> resultMap = new HashMap<String,Object>();
	        resultMap.put("NameResult", DramaResult);
	        //resultMap.put("PlayedResult", MovieResult);
	            result =true;
	        
//	        PrintWriter writer = resp.getWriter();
//	        resp.setCharacterEncoding("UTF-8"); 
//	        resp.setContentType("text/html;charset=UTF-8");
//	        writer.println(result);
	        
	        return resultMap;
	    }
	
}
