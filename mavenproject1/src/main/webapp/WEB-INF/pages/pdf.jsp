<%-- 
    Document   : pdf
    Created on : Oct 31, 2023, 10:35:12 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
        #pdf-viewer {
            width: 100%;
            height: 600px;
        }
 </style>

<div id="pdf-viewer"></div>
 

<script>
        // Lấy thông tin về tệp PDF từ server
        const url = `<c:url value="/pdf/${pdf.id}/data"/>`;

        // Hiển thị tệp PDF
        PDFObject.embed(url, "#pdf-viewer");
</script>
