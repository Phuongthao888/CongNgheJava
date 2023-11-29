package model;

public class ProductModel {
	public int ID;
	public String Name;
	public String Type;
	public int Price;
	public String Image;
	
	public ProductModel() {
		
	}
    
	public ProductModel(int iD, String name, String type, int price, String image) {
		
		ID = iD;
		Name = name;
		Type = type;
		Price = price;
		Image = image;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}
	
}
