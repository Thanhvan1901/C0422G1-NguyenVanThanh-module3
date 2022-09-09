package repository.impl;

import model.HoKhau;
import repository.BaseRepository;
import repository.IHoKhaurRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HoKhauRepository implements IHoKhaurRepository {
    private static final String FIND_ALL = "select * from hokhau where is_delete = 0;";
    private static final String INSERT = "insert into hokhau(hokhau_ten, hokhau_soluong, hokhau_ngaylap, " +
            "hokhau_diachi) " +
            "values(?,?,?,?);";
    private static final String FIND_BY_ID = "select * from HoKhau where hokhau_id = ? and is_delete = 0;";
    private static final String UPDATE = "update HoKhau set hokhau_id = ? ,  hokhau_ten = ?, " +
            "hokhau_soluong = ?, hokhau_ngaylap = ?, hokhau_diachi = ? where hokhau_id = ? and is_delete = 0;";
    private static final String DELETE = "update HoKhau set is_delete = 1 where hokhau_id = ? and is_delete = 0;";
//    private static final String SEARCH = "select * from HoKhau where is_delete = 0 and customer_name like ? and " +
//            "customer_address like ? and customer_phone like ?;";

    @Override
    public List<HoKhau> findAll() {
        List<HoKhau> hoKhauList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int hokhauId = resultSet.getInt("hokhau_id");
                String hokhauName = resultSet.getString("hokhau_ten");
                int hokhauSoluong = resultSet.getInt("hokhau_soluong");
                String hokhauNgayNhap = resultSet.getString("hokhau_ngaylap");
                String hokhauDiaChi = resultSet.getString("hokhau_diachi");


                HoKhau hoKhau = new HoKhau(hokhauId,hokhauName,hokhauSoluong,hokhauNgayNhap,hokhauDiaChi);
                hoKhauList.add(hoKhau);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hoKhauList;
    }

    @Override
    public boolean create(HoKhau hoKhau) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, hoKhau.getHokhauName());
            preparedStatement.setInt(2, hoKhau.getHokhauSoluong());
            preparedStatement.setString(3, hoKhau.getHokhauNgayNhap());
            preparedStatement.setString(4, hoKhau.getHokhauDiaChi());
            int num = preparedStatement.executeUpdate();
            return (num == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public HoKhau findById(int idFind) {
        HoKhau hoKhau = null;
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, idFind);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int hokhauId = resultSet.getInt("hokhau_id");
                String hokhauName = resultSet.getString("hokhau_ten");
                int hokhauSoluong = resultSet.getInt("hokhau_soluong");
                String hokhauNgayNhap = resultSet.getString("hokhau_ngaylap");
                String hokhauDiaChi = resultSet.getString("hokhau_diachi");

                hoKhau = new HoKhau(hokhauId, hokhauName, hokhauSoluong, hokhauNgayNhap, hokhauDiaChi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hoKhau;
    }

    @Override
    public boolean edit(HoKhau hoKhau) {
        boolean rowUpdated = false;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1, hoKhau.getHokhauId());
            preparedStatement.setString(2, hoKhau.getHokhauName());
            preparedStatement.setInt(3, hoKhau.getHokhauSoluong());
            preparedStatement.setString(4, hoKhau.getHokhauNgayNhap());
            preparedStatement.setString(5, hoKhau.getHokhauDiaChi());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowUpdated;
    }

    @Override
    public boolean delete(int idDelete) {
        boolean rowDelete = false;
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, idDelete);
            rowDelete = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowDelete;
    }

    @Override
    public List<HoKhau> search(String nameSearch, String addressSearch, String phoneSearch) {
//        List<HoKhau> customerList = new ArrayList<>();
//        Connection connection = BaseRepository.getConnectDB();
//
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
//            preparedStatement.setString(1, "%" + nameSearch + "%");
//            preparedStatement.setString(2, "%" + addressSearch + "%");
//            preparedStatement.setString(3, "%" + phoneSearch + "%");
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//                int customerId = resultSet.getInt("customer_id");
//                String customerName = resultSet.getString("customer_name");
//                String customerBirthday = resultSet.getString("customer_birthday");
//                int customerGender = resultSet.getInt("customer_gender");
//                String customerIdCard = resultSet.getString("customer_id_card");
//                String customerPhone = resultSet.getString("customer_phone");
//                String customerEmail = resultSet.getString("customer_email");
//                String customerAddress = resultSet.getString("customer_address");
//                int customerTypeId = resultSet.getInt("customer_type_id");
//
////                HoKhau hoKhau = new HoKhau(customerId, customerName, customerBirthday, customerGender, customerIdCard,
////                        customerPhone, customerEmail, customerAddress, customerTypeId);
////                customerList.add(hoKhau);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
        return null ;
    }
}