package model;

public class UserAccount {
	public static final String GENDER_MALE="M";
	public static final String GENDER_FEMALE="M";
	
	private String userName;
	private String gender;
	private String password;
	
	public UserAccount() {
		super();
	}

	public UserAccount(String userName, String gender, String password) {
		super();
		this.userName = userName;
		this.gender = gender;
		this.password = password;
	}

	public UserAccount(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	
	public UserAccount(UserAccount us) {
		super();
		this.userName = us.userName;
		this.gender = us.gender;
		this.password = us.password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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
