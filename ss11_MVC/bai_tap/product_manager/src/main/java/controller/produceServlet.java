package controller;

import model.Produc;
import service.IProduceService;
import service.impl.ProduceService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "produceServlet", value = "/product")
public class produceServlet extends HttpServlet {
    private IProduceService iProduceService = new ProduceService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null ){
            action = "";
        }
        switch (action){
            case "create" :
                create(request,response);
                break;
            case "edit" :
                edit(request,response);
                break;
            case "delete" :
                delete(request,response);
                break;
            case "confirm_delete"  :
                confirm_delete(request,response);
            break;
            case "search":
                search(request,response);
                break;
            default:
                listPoduc(request,response);
                break;
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("Product/search.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void confirm_delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        iProduceService.remove(id);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("id",id);
            request.getRequestDispatcher("Product/delete.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("product",iProduceService.findById(id));
        try {
            request.getRequestDispatcher("Product/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("Product/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listPoduc(HttpServletRequest request, HttpServletResponse response) {
        List<Produc> productList = this.iProduceService.findAll();
        request.setAttribute("productList" , productList);
        try {
            request.getRequestDispatcher("/Product/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action") ;
        if(action == null ){
            action = "";
        }
        switch (action){
            case "create" :
                craeteProduct(request,response);
                break;
            case "edit" :
                editProduct(request,response);
                break;
            case "delete" :
                break;
            case "view" :
                view(request,response);
            default:
                break;
        }
    }

    private void view(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
       List<Produc> producSearch = iProduceService.search(name);
       request.setAttribute("productSearch" ,producSearch);
        try {
            request.getRequestDispatcher("Product/view.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name") ;
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String production = request.getParameter("production") ;
        Produc produc = new Produc(id,name,price,description,production);
        iProduceService.update(produc);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void craeteProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name") ;
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        String production = request.getParameter("production") ;
        Produc produc = new Produc(name,price,description,production);
        iProduceService.save(produc);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
