package com.itwill.test;

public class MainClass {
	// 총점 - 일반메서드(인스턴스
	public void total(int kor, int math, int eng) {
		System.out.println("총점 : " + (kor + math + eng) + "점");
	}
	public void total(Student s) {
		System.out.println("총점(Studnet) : " + (s.getKor() + s.getMath() + s.getEng()));
	}

	
	
	// 평균 - 스테틱 메서드
	public void avg(int kor, int math, int eng) {
		System.out.println("평균 : " + (double) (kor + math + eng) / 3);
	}

	
	public static void main(String[] args) {
		String name = "홍길동";
		int kor = 60;
		int math = 87;
		int eng = 88;

		MainClass mc = new MainClass();

		// 학생의 총점 / 평균 출력
		mc.total(kor, math, eng);
		mc.avg(kor, math, eng);

		// 총점 메서드 오버로딩을 사용하여 생성
		// 학생 정보를 저장하는 객체 -> 전달해서 출력
		Student s = new Student();
		s.setName("홍길동");
		s.setKor(77);
		s.setEng(88);
		s.setMath(99);

		mc.total(s);

		System.out.println();
		// 계산기 객체 (총점(), 평균())
		// Cal
		Calc c = new Calc();
		System.out.println(c.sum(s));
	}

}
