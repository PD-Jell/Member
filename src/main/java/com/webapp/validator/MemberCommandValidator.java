package com.webapp.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.webapp.command.MemberCommand;

public class MemberCommandValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return MemberCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberCommand member = (MemberCommand) target;

		/*
		 * validation
		 */

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "required");

		// if(member.getName().length() > 40){
		// errors.rejectValue("name", "length", new Object[]{40},"");
		// }

		// Email length check 64 이하
		if (member.getEmail().matches("^.{65,}$")) {
			errors.rejectValue("email", "length", new Object[] { 64 }, null);
		}

		// Email Pattern Check xxx@yyy.co.kr, +는 한자리 이상.
		// String pattern =
		// "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[A-Za-z0-9]+\\.[A-Za-z]{2,3}$";
		String pattern = "^[a-zA-Z0-9\\-]+@([a-zA-Z0-9]+\\.){1,2}[A-Za-z]{2,3}$";
		if (!member.getEmail().matches(pattern)) {
			errors.rejectValue("email", "pattern");
		}

		// Password length check 8 이상
		if (!member.getPassword().matches("^.{8,64}$")) {
			errors.rejectValue("password", "length", new Object[] { 8, 64 }, null);
		}

		// Password pattern check
		// 1. 영문 & 숫자
		// 2. 영문 연속 3자리 이상 X
		// 3. 숫자 연속 3자리 이상 X

		if (!Pattern.compile("[A-Za-z]").matcher(member.getPassword()).find())
			errors.rejectValue("password", "pattern");

		if (!Pattern.compile("[0-9]").matcher(member.getPassword()).find())
			errors.rejectValue("password", "pattern");

		if (Pattern.compile("[A-Za-z]{3,}").matcher(member.getPassword()).find() && !errors.hasFieldErrors("password"))
			errors.rejectValue("password", "pattern");

		if (Pattern.compile("[0-9]{3,}").matcher(member.getPassword()).find() && !errors.hasFieldErrors("password"))
			errors.rejectValue("password", "pattern");

		// Name length check 12 이하
		if (member.getName().matches("^.{13,}$")) {
			errors.rejectValue("name", "length", new Object[] { 12 }, null);
		}
		// Comment length check 255 이하. matches는 newLine까지만 체크한당.
		if (member.getComment().length() > 255) {
			errors.rejectValue("comment", "length", new Object[] { 255 }, null);
		}

	}

}
