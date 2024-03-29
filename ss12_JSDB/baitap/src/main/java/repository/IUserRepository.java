package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> findByAll();

    boolean add(User user);

    boolean delete(int id);

    boolean update(User user);

    User selectById(int id);

    List<User> seachCountry(String seach);
}