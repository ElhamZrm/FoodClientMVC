package edu.mum.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class ClientOrderAspect {
	@Pointcut("execution(* edu.mum.service..sumbitOrder(..))")
	public void sumbitOrderMethod() {}
	
	@Before("sumbitOrderMethod()")
	public void doSumbitOrder(JoinPoint joinPoint) {
		System.out.println();
		System.out.println("********** CLIENT ORDER ASPECT--->ClientOrderAspect.doSumbitOrder()  :" + joinPoint.getSignature().getDeclaringTypeName() + "." +
				joinPoint.getSignature().getName()+ " **********");
	}
}
