package org.mit.quiz;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class StartController {
	
	@RequestMapping("start")
	public void start() {
		
	}
	@RequestMapping("add")
	public void add() {
		
	}
	@GetMapping("/add1")
	public void add1() {
	
	}
	
	@RequestMapping("sub")
	public void sub() {
		
	}
	
	@GetMapping("/sub1")
	public void sub1() {
	
	}
	
	@RequestMapping("result")
	public void result(Integer[] num,Integer num1,Integer num2,Integer num3,String add,String sub,String random,Model model) {
		Integer result=0;
		log.info(add);
		log.info(sub);
		if(add!=null) {
			if(add.equals("0")){
				for(Integer cal:num) 
					result += cal;				
			}
		}
		if(sub!=null) {
			if(sub.equals("1")){
				result=num[0]*2;
				for(Integer cal:num) 
					result -= cal;
			}
		}
		/*
		if(sub!=null) {
			if(sub.equals("1")){
				result=num[0];
				for(int i=1;i<num.length;i++) {
					result -= num[i];
				}
			}
		}
		*/
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
