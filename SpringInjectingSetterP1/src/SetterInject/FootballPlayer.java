package SetterInject;

public class FootballPlayer implements Player
{
	
	private String football;

	@Override
	public void play() {
		
		System.out.println("I am playing with::"+football);
		
	}

	public String getFootball() {
		return football;
	}

	public void setFootball(String football) {
		this.football = football;
	}
	
	

}
