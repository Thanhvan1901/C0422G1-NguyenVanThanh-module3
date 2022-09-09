package service.impl;

import model.HoKhau;
import repository.IHoKhaurRepository;
import repository.impl.HoKhauRepository;
import service.IHoKhauService;

import java.util.List;

public class HokhauService implements IHoKhauService {
    private IHoKhaurRepository iHoKhaurRepository = new HoKhauRepository();

    @Override
    public List<HoKhau> findAll() {
        return iHoKhaurRepository.findAll();
    }

    @Override
    public boolean create(HoKhau hoKhau) {
        return iHoKhaurRepository.create(hoKhau);
    }

    @Override
    public HoKhau findById(int hokhauId) {
        return iHoKhaurRepository.findById(hokhauId);
    }

    @Override
    public boolean edit(HoKhau hoKhau) {
        return iHoKhaurRepository.edit(hoKhau);
    }

    @Override
    public boolean delete(int hokhauId) {
        return iHoKhaurRepository.delete(hokhauId);
    }

    @Override
    public List<HoKhau> search(String nameSearch, String addressSearch, String phoneSearch) {
        return iHoKhaurRepository.search(nameSearch, addressSearch, phoneSearch);
    }
}
