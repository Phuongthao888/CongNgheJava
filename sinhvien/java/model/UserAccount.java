package model;

public class UserAccount {
	public static final String GENDER_MALE="M";
	public static final String GENDER_FEMALE="M";
	
	private String username;
	private String gender;
	private String password;
	
	public UserAccount() {
		super();
	}

	public UserAccount(String username, String gender, String password) {
		super();
		this.username = username;
		this.gender = gender;
		this.password = password;
	}

	public UserAccount(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public UserAccount(UserAccount us) {
		super();
		this.username = us.username;
		this.gender = us.gender;
		this.password = us.password;
	}

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public static String getGenderMale() {
		return GENDER_MALE;
	}

	public static String getGenderFemale() {
		return GENDER_FEMALE;
	}
	
	
}
