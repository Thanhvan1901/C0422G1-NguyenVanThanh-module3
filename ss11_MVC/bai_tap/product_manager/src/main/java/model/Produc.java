package model;

public class Produc {
    private int id ;
    private String name ;
    private String price ;
    private String description ;
    private String production ;

    public Produc() {
    }

    public Produc(int id, String name, String price, String description, String production) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.production = production;
    }

    public Produc(String name, String price, String description, String production) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.production = production;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProduction() {
        return production;
    }

    public void setProduction(String production) {
        this.production = production;
    }
}
