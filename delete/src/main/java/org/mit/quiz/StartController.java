package org.mit.quiz;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class StartController {
	
	@RequestMapping("start")
	public void start() {
		
	}
	@RequestMapping("add")
	public void add(Model model) {
	}
	@RequestMapping("sub")
	public void sub(Model model) {
	}
	@RequestMapping("result")
	public void result(Integer num1,Integer num2, Integer num3,String add,String sub,String random,Model model) {
		Integer result=0;
		log.info(add);
		log.info(sub);
		if(add!=null) {
			if(add.equals("0")){
				result=num1+num2+num3;
			}
		}
		if(sub!=null) {
			if(sub.equals("1")){
				result=num1-num2-num3;
			}
		}
		List<Integer> rnum = new ArrayList<>();
		if(random!=null) {
			if(random.equals("2")) {
				if((num2-num1+1)>=num3) {
					for(int i=0;i<num3;i++) {
						int com=(int)(Math.random()*(num2-num1+1)+num1);
						rnum.add(i,com);
						for(int j=0;j<i;j++) {
							if(rnum.get(i)==rnum.get(j)) {
								rnum.remove(i);
								i--;
							}
						}
					}
				}else {
					log.info("범위보다, 카운트 값이 큽니다. \n범위나 카운트를 다시 설정해주세요.");
				}		
			}
		}
		for(int num:rnum) {
			log.info(num);
		}
		
		model.addAttribute("add",add);
		model.addAttribute("sub",sub);
		model.addAttribute("random",random);
		model.addAttribute("result",result);	
		model.addAttribute("rnum",rnum);	
		
	}
	@RequestMapping("random")
	public void random() {
		
	}
}