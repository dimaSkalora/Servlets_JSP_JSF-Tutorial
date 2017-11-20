package servlets.proselyte_net_servlet.lesson_19;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;


public class SendEmailDemo extends HttpServlet {

    static final String SENDER_EMAIL_ADDRESS = "ENTER YOUR EMAIL";
    static final String SENDER_EMAIL_PASSWORD = "ENTER YOUR PASSWORD";
    static final String SENDER_HOST = "smtp.gmail.com";
    static final String SENDER_PORT = "587";
    static final String RECEIVER_EMAIL_ADDRESS = "ENTER RECEIVER EMAIL";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Properties properties = new Properties();
        properties.put("mail.smtp.host", SENDER_HOST);
        properties.put("mail.smtp.port", SENDER_PORT);
        properties.put("mail.from", SENDER_EMAIL_ADDRESS);
        properties.put("mail.smtp.password", SENDER_EMAIL_PASSWORD);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(SENDER_EMAIL_ADDRESS, SENDER_EMAIL_PASSWORD);
                    }
                });

        response.setContentType("text/html");

        String docType = "<!DOCTYPE html>";
        String title = "Send Email Demo";

        PrintWriter writer = response.getWriter();

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SENDER_EMAIL_ADDRESS));
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(RECEIVER_EMAIL_ADDRESS));
            message.setSubject("Proselyte Servlets Tutorial");
            message.setText("Send Email Demo");
            Transport.send(message);
            String sendEmailResultMessage = "Email is successfully sent!";
            writer.println(docType + "<html>" +
                    "<head>" +
                    "<title>" + title + "</title>" +
                    "</head>" +
                    "<body>" +
                    "<h1>" + sendEmailResultMessage + "</h1>" +
                    "</body>" +
                    "</html>");


        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
