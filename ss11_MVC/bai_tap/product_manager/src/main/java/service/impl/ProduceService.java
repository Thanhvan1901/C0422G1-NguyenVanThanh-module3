package service.impl;

import model.Produc;
import repository.IproduceRepository;
import repository.impl.ProducRepository;
import service.IProduceService;

import java.util.List;

public class ProduceService implements IProduceService {
    private IproduceRepository iproduceRepository = new ProducRepository();
    @Override
    public List<Produc> findAll() {
        return iproduceRepository.findAll();
    }

    @Override
    public void save(Produc produc) {
        iproduceRepository.save(produc);
    }

    @Override
    public void update( Produc produc) {
        iproduceRepository.update(produc);
    }

    @Override
    public void remove(int id) {
        iproduceRepository.remove(id);
    }

    @Override
    public Produc findById(int id) {
        return iproduceRepository.findById(id);
    }

    @Override
    public List<Produc> search(String name) {
        return iproduceRepository.search(name);
    }
}
