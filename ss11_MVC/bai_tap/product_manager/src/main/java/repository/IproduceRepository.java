package repository;

import model.Produc;

import java.util.List;

public interface IproduceRepository {
    List<Produc> findAll() ;
    void save(Produc produc) ;
    void update(Produc produc);
    void remove (int id);
    Produc findById (int id ) ;
    List<Produc> search (String name) ;

}
