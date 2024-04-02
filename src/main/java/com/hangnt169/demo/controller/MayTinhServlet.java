package com.hangnt169.demo.controller;

import com.hangnt169.demo.entity.MayTinh;
import com.hangnt169.demo.repository.MayTinhRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;

import java.io.IOException;
import java.util.List;

/**
 * @author hangnt169
 */
@WebServlet(name = "SanPhamServlet", value = {
        "/may-tinh/hien-thi",  // GET
        "/may-tinh/add",      // POST
        "/may-tinh/update",      // POST
        "/may-tinh/delete",    // GET
        "/may-tinh/view-update",// GET
        "/may-tinh/detail"    // GET
})
public class MayTinhServlet extends HttpServlet {

    private MayTinhRepository mayTinhRepository = new MayTinhRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("hien-thi")) {
            this.hienThiSanPham(request, response);
        } else if (uri.contains("view-update")) {
            this.viewUpdate(request, response);
        } else if (uri.contains("detail")) {
            this.detailSanPham(request, response);
        } else if (uri.contains("delete")) {
            this.deleteSanPham(request, response);
        } else {
            this.hienThiSanPham(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("add")) {
            this.addSanPham(request, response);
        } else if (uri.contains("update")) {
            this.updateSanPham(request, response);
        } else {
            this.hienThiSanPham(request, response);
        }
    }
    private void hienThiSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MayTinh> mayTinhs = mayTinhRepository.getAll();
        request.setAttribute("lists", mayTinhs);
        request.getRequestDispatcher("/view/san-pham.jsp").forward(request, response);
    }

    private void viewUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
        MayTinh mayTinh = mayTinhRepository.getOne(Long.valueOf(id));
        request.setAttribute("mt", mayTinh);
        request.getRequestDispatcher("/view/update-san-pham.jsp").forward(request, response);
    }

    private void detailSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        MayTinh mayTinh = mayTinhRepository.getOne(Long.valueOf(id));
        request.setAttribute("mt", mayTinh);
        List<MayTinh> mayTinhs = mayTinhRepository.getAll();
        request.setAttribute("lists", mayTinhs);
        request.getRequestDispatcher("/view/san-pham.jsp").forward(request, response);
    }

    private void deleteSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        MayTinh mayTinh = mayTinhRepository.getOne(Long.valueOf(id));
        mayTinhRepository.delete(mayTinh);
        response.sendRedirect("/may-tinh/hien-thi");
    }

    @SneakyThrows
    private void addSanPham(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        MayTinh mayTinh = new MayTinh();
        BeanUtils.populate(mayTinh,request.getParameterMap());
        mayTinhRepository.addOrUpdate(mayTinh);
        response.sendRedirect("/may-tinh/hien-thi");

    }

    @SneakyThrows
    private void updateSanPham(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
        MayTinh mayTinh = mayTinhRepository.getOne(Long.valueOf(id));
        BeanUtils.populate(mayTinh,request.getParameterMap());
        mayTinhRepository.addOrUpdate(mayTinh);
        response.sendRedirect("/may-tinh/hien-thi");
    }
}
