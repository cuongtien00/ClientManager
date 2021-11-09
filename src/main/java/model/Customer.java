package model;

public class Customer {
    private int id;
    private String name;
    private String add;
    private String img;

    public Customer() {
    }


    public Customer(int id, String name, String add, String img) {
        this.id = id;
        this.name = name;
        this.add = add;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
