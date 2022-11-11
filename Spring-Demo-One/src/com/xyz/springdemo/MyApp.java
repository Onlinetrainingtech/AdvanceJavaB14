package com.xyz.springdemo;

public class MyApp {

	public static void main(String[] args) {
		
		BaseballCoach b1=new BaseballCoach();
		
		TrackCoach b2=new TrackCoach();
		
		
		System.out.println("BaseBallCoach"+b1.getDailyWorkout());
		
		System.out.println("TrackCoach"+b2.getDailyWorkout());
		
		

	}

}
