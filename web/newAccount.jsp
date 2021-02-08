<%-- 
    Document   : newAccount
    Created on : 5 févr. 2021, 20:48:28
    Author     : youan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <title>Nouveau compte</title>
    </head>
    <body>
      
     
           <%@ include file="menu.jsp" %>
            <ol>
           <a href="servlet?action=creerComptDeTest" class="btn btn-dark">Créer 4 comptes de test</a>
            <br> 
            <br>  
             <c:if test="${!empty param['message']}">
            <h2>Reçu message : ${param.message}</h2>
            </c:if>
            <h3>Créer un Compte</h3> <br>
            <form action="servlet" method="get" class="form"> <br>
                Num de compt : <input type="text" name="numcompt" class="form-control" placeholder="Saissir le numéro de compte"/><br> <br>
                Nom : <input type="text" name="nom" class="form-control" placeholder="Saissir le nom"/><br> <br>
                Prénom : <input type="text" name="prenom" class="form-control" placeholder="Saissir le prenom"/><br> <br>
                Montant : <input type="number" name="montant" class="form-control" placeholder="Saissir le montant"/><br> <br>
                <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->
                <input type="hidden" name="action" value="creerCompt"/>
                <input class="btn btn-dark" type="submit" value="Créer l'utilisateur" name="submit"/>
            </form>
            <br>
          </ol>
       
       </body>
</html>
