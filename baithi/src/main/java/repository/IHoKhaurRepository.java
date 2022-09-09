package repository;

import model.HoKhau;

import java.util.List;

public interface IHoKhaurRepository {
    List<HoKhau> findAll();

    boolean create(HoKhau hoKhau);

    HoKhau findById(int idFind);

    boolean edit(HoKhau hoKhau);

    boolean delete(int idDelete);

    List<HoKhau> search(String nameSearch, String addressSearch, String phoneSearch);
}