package com.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.command.LoginCommand;
import com.webapp.exception.IdPasswordNotMatchException;
import com.webapp.model.AuthInfo;
import com.webapp.service.AuthService;

@Controller
@RequestMapping("/login")
public class LoginController {
	static Log log = LogFactory.getLog(LoginController.class);

	// @ModelAttribute("login")
	// // 자세한 건 loginForm에 commandName참고.
	// LoginCommand getCommand() {
	// LoginCommand command = new LoginCommand();
	//
	// // command.setRemember(true);
	// // 기본 체크.
	// return command;
	// }

	@Autowired
	AuthService service;

	@RequestMapping(method = RequestMethod.GET)
	public String loginForm(@ModelAttribute("login") LoginCommand command) {
		log.info("loginForm()...");
		command.setRemember(true);

		return "login/loginForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String login(@ModelAttribute("login") LoginCommand login, Errors errors, HttpSession session) {
		// @ModelAttribute로 LoginCommand를 login으로 바꿔준다.
		log.info("login = " + login);

		/* validation */

		if (errors.hasErrors()) {
			errors.reject("idPasswordNotMatch");
			return "login/loginForm";
		}

		/*
		 * Login process
		 */

		try {
			AuthInfo auth = service.authenticate(login.getEmail(), login.getPassword());
			session.setAttribute("auth", auth);
			
		} catch (IdPasswordNotMatchException ex) {
			errors.reject("idPasswordNotMatch");
			return "login/loginForm";
		}

		return "redirect:/";
	}

}
