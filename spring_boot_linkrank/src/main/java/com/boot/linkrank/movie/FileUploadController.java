package com.boot.linkrank.movie;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {

	//파일명 변경없이 파일 업로드 처리
	@ResponseBody
	@RequestMapping("/movieImgUpload")
	public String fileOriginalNameUpload(@RequestParam("uploadFile")MultipartFile file, 
										Model model) throws IOException {
		
		//1.파일 저장 경로 설정: 실제 서비스되는 위치로 
		String uploadPath = "/image/rating/";
		
		//2. 원본 파일 이름 알아오기
		String originalFileName = file.getOriginalFilename();
		
		//3. 파일 생성
		File file1 = new File(uploadPath + originalFileName);
		
		//4.서버로 전송
		file.transferTo(file1);
		
		// model로 저장
		model.addAttribute("originalFileName", originalFileName);
		
		return "redirect:/";
	}
	
	
}
