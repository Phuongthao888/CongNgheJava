package model;

public class khoaModel {
	public String Makhoa;
	public String Tenkhoa;
	
	public khoaModel() {
		super();
	}

	public khoaModel(String makhoa, String tenkhoa) {
		super();
		this.Makhoa = makhoa;
		this.Tenkhoa = tenkhoa;
	}

	public String getMakhoa() {
		return Makhoa;
	}

	public void setMakhoa(String makhoa) {
		this.Makhoa = makhoa;
	}

	public String getTenkhoa() {
		return Tenkhoa;
	}

	public void setTenkhoa(String tenkhoa) {
		this.Tenkhoa = tenkhoa;
	}
	
}
