package repository.impl;

import model.Produc;
import repository.IproduceRepository;

import java.util.*;

public class ProducRepository implements IproduceRepository {
    private static Map<Integer, Produc> producMap ;
    static {
        producMap = new HashMap<>();
        producMap.put(1,new Produc(1, "Iphone X", "9.000.000","Còn 2 máy ","Apple"));
        producMap.put(2,new Produc(2, "Iphone Pro Max", "9.000.000","Còn 1 Máy ","Apple"));
        producMap.put(3,new Produc(3, "Iphone 12", "12.000.000","Hết Hàng","Apple"));
        producMap.put(4,new Produc(4, "Iphone 12 Pro", "18.000.000","Còn 15 Máy","Apple"));
        producMap.put(5,new Produc(5, "Iphone 13", "20.000.000","Còn 10 Máy","Apple"));
        producMap.put(6,new Produc(6, "Iphone 13 Pro Max", "28.000.000","Còn 20 Máy","Apple"));
    }
    @Override
    public List<Produc> findAll() {
        return new ArrayList<>(producMap.values());
    }

    @Override
    public void save(Produc produc) {
        int id = produc.getId();
        if(id == 0 ){
            List<Produc> producList = new ArrayList<>(producMap.values());
            id = producList.get(producList.size()-1).getId() + 1 ;
            produc.setId(id);
            producMap.put(id,produc);
        }else {
            producMap.put(produc.getId(), produc);
        }
    }

    @Override
    public void update(Produc produc) {
        producMap.put(produc.getId(),produc);
    }

    @Override
    public void remove(int id) {
        producMap.remove(id);
    }

    @Override
    public Produc findById(int id) {
       return producMap.get(id);
    }

    @Override
    public List<Produc> search(String name) {
        List<Produc> producSearch = new ArrayList<>();

        for (Produc p : producMap.values()){
            if (p.getName().toLowerCase().contains(name.toLowerCase())){
                producSearch.add(p);
            }
        }
        return producSearch;
    }
}
