package com.itwill.test;

public class Calc {
	public int sum(int k, int m, int e) {
		return k + m + e;
	}

	public int sum(Student s) {
		return s.getEng() + s.getKor() + s.getMath();
	}

	public void avgCalc(int k, int m, int e) {
		System.out.println("평균(Cal) : " + sum(k, m, e) / 3.0);
	}

}
