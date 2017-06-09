package beks.kz.model;

public class Student {
	private Long id;
		
	private String word;
	
	public Long getId() {
		return id;
	}

	public String getUserName() {
		return word;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setUserName(String word) {
		this.word = word;
	}	

}
