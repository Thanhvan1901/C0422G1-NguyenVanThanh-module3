package controller;

import model.HoKhau;
import service.IHoKhauService;
import service.impl.HokhauService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HoKhauServlet", value = "/hokhau")
public class CustomerServlet extends HttpServlet {
    private IHoKhauService iHoKhauService = new HokhauService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteHoKhau(request, response);
                break;
            case "search":
                searchHoKhau(request, response);
                break;
            default:
                findAll(request, response);
        }
    }

    private void searchHoKhau(HttpServletRequest request, HttpServletResponse response) {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
//
//        String name = request.getParameter("nameSearch");
//        String address = request.getParameter("addressSearch");
//        String phone = request.getParameter("phoneSearch");
//
//        List<Customer> customerList = iCustomerService.search(name, address, phone);
//        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
//
//        for (Customer customer : customerList) {
//            String[] arr = customer.getCustomerBirthday().split("-");
//            customer.setCustomerBirthday(arr[2] + "/" + arr[1] + "/" + arr[0]);
//        }
//
//        request.setAttribute("customerList", customerList);
//        request.setAttribute("customerTypeList", customerTypeList);
//
//        try {
//            dispatcher.forward(request, response);
//        } catch (ServletException | IOException e) {
//            e.printStackTrace();
//        }
    }

    private void findAll(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");

        List<HoKhau> hoKhauList = iHoKhauService.findAll();

        request.setAttribute("hoKhauList", hoKhauList);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteHoKhau(HttpServletRequest request, HttpServletResponse response) {
        int idDelete = Integer.parseInt(request.getParameter("idDelete"));
        boolean check = iHoKhauService.delete(idDelete);
        String mess = "Delete Customer failed.";
        if (check) {
            mess = "Delete Customer successfully.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);
        findAll(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int hokhauId = Integer.parseInt(request.getParameter("hokhauId"));
        HoKhau hoKhau = iHoKhauService.findById(hokhauId);
        RequestDispatcher dispatcher;

        if (hoKhau == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("hoKhau", hoKhau);
            dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
        }

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createHoKhau(request, response);
                break;
            case "edit":
                updateHoKhau(request, response);
                break;
            default:
                break;
        }
    }

    private void createHoKhau(HttpServletRequest request, HttpServletResponse response) {
        String hokhauName = request.getParameter("hokhauName");
        int hokhauSoluong = Integer.parseInt(request.getParameter("hokhauSoluong"));
        String hokhauNgayNhap = request.getParameter("hokhauNgayNhap");
        String hokhauDiaChi = request.getParameter("hokhauDiaChi");
        HoKhau hoKhau = new HoKhau(hokhauName, hokhauSoluong, hokhauNgayNhap, hokhauDiaChi);

        boolean check = iHoKhauService.create(hoKhau);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        String mess = "Update Customer successfully.";

        if (!check) {
            mess = "Update Customer failed.";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void updateHoKhau(HttpServletRequest request, HttpServletResponse response) {
        int hokhauId = Integer.parseInt(request.getParameter("hokhauId"));
        String hokhauName = request.getParameter("hokhauName");
        int hokhauSoluong = Integer.parseInt(request.getParameter("hokhauSoluong"));
        String hokhauNgayNhap = request.getParameter("hokhauNgayNhap");
        String hokhauDiaChi = request.getParameter("hokhauDiaChi");
        HoKhau hoKhau = new HoKhau(hokhauId, hokhauName, hokhauSoluong, hokhauNgayNhap, hokhauDiaChi);
        boolean check = iHoKhauService.edit(hoKhau);
        String mess = "Cập Nhập Hộ Khẩu Thành Công";
        if (!check) {
            mess = "Cập Nhập Hộ Khẩu Không Thành Công ";
        }

        request.setAttribute("mess", mess);
        request.setAttribute("check", check);

        showCreateForm(request, response);
    }
}
