<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Display Grades</title>
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
                    crossorigin="anonymous">
            </head>
            <form class="form" action="/save" method="post">
                <input type="hidden" value="${newGrade.id}" name="id">
                
                <label for="name">Name</label>
                <input type="text" value="${newGrade.name}" placeholder="${newGrade.name}" name="name">
                
                <label for="type">Type</label>
                <input type="text" value="${newGrade.type}" placeholder="${newGrade.type}" name="type">
                
                <label for="score">Score</label>
                <input type="text" value="${newGrade.score}" placeholder="${newGrade.score}" name="score">
                
                <label for="total">Total</label>
                <input type="text" value="${newGrade.total}" placeholder="${newGrade.total}" name="total">
                
                <input type="submit" value="Submit"> 
                <a href="/" class="button">Display Grades</a>
    
            </form>

            <body>

            </body>

            </html>