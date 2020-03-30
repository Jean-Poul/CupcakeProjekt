package PresentationLayer;
/**
 @author Mark, Nicolas, Henrik, Jean-Poul
 */
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession(); // gets session
        session.invalidate(); // terminates session
        session.removeAttribute("user");
        request.getSession().invalidate(); // terminates request on session

        return "index";
    }
}
