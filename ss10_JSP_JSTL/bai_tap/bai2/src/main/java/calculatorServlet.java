import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "calculatorServlet", value = "/calculator")
public class calculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(request.getParameter("firstOperand"));
        double secondOperand = Double.parseDouble(request.getParameter("secondoperand"));
        String operator = request.getParameter("operator");
        double result = 0 ;
        String x = "";
        switch (operator){
            case "Addition" :
                x = "+";
                result = firstOperand + secondOperand ;
                break;
            case "Subtraction" :
                x = "-";
                result = firstOperand - secondOperand ;
                break;
            case "Division" :
                x = "%";
                result = firstOperand / secondOperand ;
                break;
            case "Multiplication" :
                x = "*";
                result = firstOperand * secondOperand ;
                break;
            default:
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("firstOperand" , firstOperand);
        request.setAttribute("secondOperand" , secondOperand);
        request.setAttribute("result" , result);
        request.setAttribute("x" , x);
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
