package model.person;

import java.time.LocalDate;

public class Employee extends Person {
    private String trinhDo;
    private String viTri;
    private double price ;

    public Employee() {
    }

    public Employee(String code, String name, LocalDate birth, String sex, String soCMND, String numPhone, String trinhDo, String viTri, double price) {
        super(code, name, birth, sex, soCMND, numPhone);
        this.trinhDo = trinhDo;
        this.viTri = viTri;
        this.price = price;
    }


    public String getTrinhDo() {
        return trinhDo;
    }

    public void setTrinhDo(String trinhDo) {
        this.trinhDo = trinhDo;
    }

    public String getViTri() {
        return viTri;
    }

    public void setViTri(String viTri) {
        this.viTri = viTri;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
