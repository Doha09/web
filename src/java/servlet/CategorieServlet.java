/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao2.CategorieDao;
import entities.Categorie;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.CategorieService;

/**
 *
 * @author ouahm
 */
@WebServlet(name = "CategorieServlet", urlPatterns = {"/CategorieServlet"})
public class CategorieServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CategorieServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CategorieServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    CategorieDao catDao = new CategorieDao();
    List<Categorie> categories = catDao.findAll();

    request.setAttribute("categories", categories);
    request.getRequestDispatcher("categories.jsp").forward(request, response);
}

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        CategorieService categorieService = new CategorieService();

        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            categorieService.supprimerCategorie(id);

        } else if ("create".equals(action)) {
            String nom = request.getParameter("nom");
            if (nom != null && !nom.trim().isEmpty()) {
                categorieService.ajouterCategorie(nom);
            }
        }

        // Rafraîchir la liste et renvoyer uniquement les lignes HTML
        List<Categorie> categories = categorieService.listerToutes();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/WEB-INF/fragments/categorie_table.jsp").forward(request, response);
    }
}


