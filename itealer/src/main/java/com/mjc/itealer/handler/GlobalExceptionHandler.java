package com.mjc.itealer.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.mjc.itealer.dto.ResponseDto;

@ControllerAdvice
@RestController
public class GlobalExceptionHandler {

	@ExceptionHandler(value=Exception.class) // 해당 오류 발생 시 실행
	public ResponseDto<String> handleException(Exception e) {
		return new ResponseDto<String>(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());
	}
}
