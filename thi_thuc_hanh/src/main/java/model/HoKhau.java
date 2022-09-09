package model;

public class HoKhau {
    private int hokhauId ;
    private String hokhauName ;
    private int hokhauSoluong ;
    private String hokhauNgayNhap ;
    private String hokhauDiaChi ;

    public HoKhau() {
    }

    public HoKhau(String hokhauName, int hokhauSoluong, String hokhauNgayNhap, String hokhauDiaChi) {
        this.hokhauName = hokhauName;
        this.hokhauSoluong = hokhauSoluong;
        this.hokhauNgayNhap = hokhauNgayNhap;
        this.hokhauDiaChi = hokhauDiaChi;
    }

    public HoKhau(int hokhauId, String hokhauName, int hokhauSoluong, String hokhauNgayNhap, String hokhauDiaChi) {
        this.hokhauId = hokhauId;
        this.hokhauName = hokhauName;
        this.hokhauSoluong = hokhauSoluong;
        this.hokhauNgayNhap = hokhauNgayNhap;
        this.hokhauDiaChi = hokhauDiaChi;
    }

    public int getHokhauId() {
        return hokhauId;
    }

    public void setHokhauId(int hokhauId) {
        this.hokhauId = hokhauId;
    }

    public String getHokhauName() {
        return hokhauName;
    }

    public void setHokhauName(String hokhauName) {
        this.hokhauName = hokhauName;
    }

    public int getHokhauSoluong() {
        return hokhauSoluong;
    }

    public void setHokhauSoluong(int hokhauSoluong) {
        this.hokhauSoluong = hokhauSoluong;
    }

    public String getHokhauNgayNhap() {
        return hokhauNgayNhap;
    }

    public void setHokhauNgayNhap(String hokhauNgayNhap) {
        this.hokhauNgayNhap = hokhauNgayNhap;
    }

    public String getHokhauDiaChi() {
        return hokhauDiaChi;
    }

    public void setHokhauDiaChi(String hokhauDiaChi) {
        this.hokhauDiaChi = hokhauDiaChi;
    }
}
