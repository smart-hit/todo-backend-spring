package com.todo.myTodoManagement.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {
    @RequestMapping("/hello")
    @ResponseBody
	public String sayHello() {
		return "Hello";
	}
    
    @RequestMapping("/hellohtml")
    @ResponseBody
	public String sayHelloHtml() {
    	StringBuffer sb= new StringBuffer();
    	sb.append("<html>");
    	sb.append("<head>");
    	sb.append("<title>My first html</title>");
    	sb.append("</head>");
    	sb.append("<body>");
    	sb.append("My first");
    	sb.append("</body>");
    	sb.append("</html>");
		return sb.toString();
	}
    
    @RequestMapping("/hellojsp")
    
	public String sayHellojsp() {
		return "sayHello";
	}
}
