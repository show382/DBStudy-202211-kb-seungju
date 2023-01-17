package example;

import java.util.Scanner;

class User {
	final static String EMAIL = "qwer@qwer";
	final static String PASSWORD= "qwer";
}

public class Example01 {
	
	// 로그인 프로세스
	public static void main(String[] args) {

		// 1. 사용자로부터 이메일 주소와 비밀번호를 받음
		Scanner sc = new Scanner(System.in);
		System.out.println("email : ");
		String email = sc.nextLine();
		System.out.println("password : ");
		String password = sc.nextLine();

		System.out.println("email - " + email + " / password :" + password);
		// 2. 이메일과 비밀번호가 모두 존재하는지 확인
		if (email.length() > 0 && password.length() > 0) {	
			// 3. 입력한 이메일과 비밀번호가 존재하는 인스턴스와 일치하는지 확인
			if (email.equals(User.EMAIL) &&password.equals(User.PASSWORD)) {
				// 4. '로그인에 성공했습니다.' 출력
				System.out.println("로그인에 성공했습니다.");
			}
			// 3-1. 일치하지 않는다면 '로그인 정보가 일치하지 않습니다.' 출력
			else {
				System.out.println("로그인 정보가 일치하지 않습니다.");				
			}
		}		
		// 2-1. 둘중 하나라도 존재하지 않는다면 '모두 입력하세요.' 출력
		else {
			System.out.println("모두 입력해");
		}
	}

}
