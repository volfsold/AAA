package zaksim.community.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import zaksim.community.service.CommunityEditServiceImpl;
import zaksim.dto.CommunityGroup;

// 커뮤니티 편집
@Controller
@RequestMapping(value="/zaksim/community")
public class CommnuityEditController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityMainController.class);
	@Autowired CommunityEditServiceImpl communityEditServiceImpl;
	@Autowired ServletContext context;

	// 커뮤니티 만들기 POST
	@RequestMapping(value="/createCommunity", method=RequestMethod.POST)
	public String createCommnunityProcess(CommunityGroup communityGroup, MultipartFile file) {

		logger.info("타이틀 : "+communityGroup.getTitle());
		logger.info("이미지 : "+communityGroup.getImage());
		logger.info("인원 : "+communityGroup.getMax());
		logger.info("비밀여부 : "+communityGroup.getSecret());
		
		String path = "/resources/upload/community/";

		String realpath = context.getRealPath(path);

		String uid = UUID.randomUUID().toString().split("-")[4];

		String stored = uid+"_"+file.getOriginalFilename();

		File dest = new File(realpath, stored);



		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

//		communityGroup.setImage(file.getOriginalFilename());
		communityGroup.setImage("/resources/upload/community/"+stored);

		
		logger.info("toString : "+communityGroup.toString());

		communityEditServiceImpl.createGroup(communityGroup);
		
		String result = "redirect:/zaksim/community/communityMain";

		return result;
	}

	// 커뮤니티 정보 수정 POST
	@RequestMapping(value="/community/")
	public String updateCommnunityProcess(CommunityGroup communityGroup) {
		return "";
	}

	//		// 커뮤니티 삭제 POST
	//		@RequestMapping(value="/community/")
	//		public String deleteCommnunityProcess(CommunityGroup communityGroup) {
	//			return "";
	//		}



}
