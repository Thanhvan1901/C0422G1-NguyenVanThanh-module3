package service;

import model.HoKhau;

import java.util.List;

public interface IHoKhauService {
    List<HoKhau> findAll();

    boolean create(HoKhau hoKhau);

    HoKhau findById(int hokhauId);

    boolean edit(HoKhau hoKhau);

    boolean delete(int hokhauId);

    List<HoKhau> search(String nameSearch, String addressSearch, String phoneSearch);
}
