package swing;

public class spModel {
	private String masp;
	private String tensp;
	private int dongia;
	private String xuatxu;
	private String loaisp;
	
	public spModel() {
		super();
	}

	public spModel(String masp, String tensp, int dongia, String xuatxu, String loaisp) {
		super();
		this.masp = masp;
		this.tensp = tensp;
		this.dongia = dongia;
		this.xuatxu = xuatxu;
		this.loaisp = loaisp;
	}

	public String getMasp() {
		return masp;
	}

	public void setMasp(String masp) {
		this.masp = masp;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public int getDongia() {
		return dongia;
	}

	public void setDongia(int dongia) {
		this.dongia = dongia;
	}

	public String getXuatxu() {
		return xuatxu;
	}

	public void setXuatxu(String xuatxu) {
		this.xuatxu = xuatxu;
	}

	public String getLoaisp() {
		return loaisp;
	}

	public void setLoaisp(String loaisp) {
		this.loaisp = loaisp;
	}
	
	
}
