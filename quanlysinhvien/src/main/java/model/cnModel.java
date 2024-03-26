package model;

import java.util.List;

public class cnModel {
	public String Macn;
	public String Tencn;
	public khoaModel khoaFK;
	
	public cnModel() {
		super();
	}
	
	public cnModel(String macn) {
		super();
		Macn = macn;
	}



	public cnModel(String macn, String tencn) {
		super();
		Macn = macn;
		Tencn = tencn;
	}

	public cnModel(String macn, String tencn, khoaModel khoaFK) {
		super();
		Macn = macn;
		Tencn = tencn;
		this.khoaFK = khoaFK;
	}

	public String getMacn() {
		return Macn;
	}

	public void setMacn(String macn) {
		Macn = macn;
	}

	public String getTencn() {
		return Tencn;
	}

	public void setTencn(String tencn) {
		Tencn = tencn;
	}

	public khoaModel getKhoaFK() {
		return khoaFK;
	}

	@Override
	public String toString() {
		return "cnModel [Macn=" + Macn + ", Tencn=" + Tencn + ", khoaFK=" + khoaFK + "]";
	}

	public void setKhoaFK(khoaModel khoaFK) {
		this.khoaFK = khoaFK;
	}
	
	
	
}
