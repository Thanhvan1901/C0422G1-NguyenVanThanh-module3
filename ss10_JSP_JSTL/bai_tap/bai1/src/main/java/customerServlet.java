import customer.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerServlet", value = "/customer")
public class customerServlet extends HttpServlet {
    private static List<customer>  customerList = new ArrayList<>();
    static {
        customerList.add(new customer("Nguyễn Văn Thanh", "19-01-1999", "Đà Nẵng", "https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-nam-buon-nhat.jpg"));
        customerList.add(new customer("Mai Văn Hoàng ", "20-08-1983", "Nghệ AN ", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB7SneQQjT7IkYPm1roQIQ-3R1bRnDTkwLqkLWSyPXfogeu3kKGA5pJUfYcgM31bg7bk8&usqp=CAU"));
        customerList.add(new customer("Nguyễn Văn Nam ", "28-08-1990", "Vũ Trụ  ", "https://img4.thuthuatphanmem.vn/uploads/2020/05/07/hinh-anh-superman-dep_094429904.jpg"));
        customerList.add(new customer("Nguyễn Thái Hòa ", "01-01-1991", "Trái Đất", "https://tapchianhdep.com/wp-content/uploads/2022/03/hinh-anh-dep-va-de-thuong-cua-Pikachu-479x650.jpg"));
        customerList.add(new customer("Nguyễn Hữu Linh", "09-09-1999", "Quảng Nam", "https://kenh14cdn.com/thumb_w/660/2020/7/17/brvn-15950048783381206275371.jpg"));
        }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/customer/display.jsp");
        request.setAttribute("customerList", customerList);
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
