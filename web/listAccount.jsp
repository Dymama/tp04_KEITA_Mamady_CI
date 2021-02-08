<%-- 
    Document   : listAccount
    Created on : 5 févr. 2021, 20:48:52
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
        <title>Liste de comptes</title>
    </head>
    <body>
            <%@ include file="menu.jsp" %>
        <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->
        <div class="container">
        <ul>
            <a href="servlet?action=listeAccount" class="btn btn-dark">Afficher/raffraichir</a>
            <p>
        </ul>
           
        <!-- Fin du menu -->

        <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->
        <c:if test="${param['action'] == 'listeAccount'}" >
            <h2>Liste des comptes</h2>

            <table border="10" class="table">
                <!-- La ligne de titre du tableau des comptes -->
                <tr>
                    <td><b>Nom</b></td>
                    <td><b>Prénom</b></td>
                    <td><b>Numéro de Compt</b></td>
                    <td><b>Sold</b></td>
                </tr>

                <!-- Ici on affiche les lignes, une par utilisateur -->
                <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->
                <c:set var="total" value="0"/>

               <c:forEach var="compt" items="${requestScope['listeDesCompts']}">
                    <tr>
                        <td>${compt.firstName}</td>
                        <td>${compt.lastName}</td>
                        <td>${compt.accountNumber}</td>
                        <td>${compt.balance}</td>
                        <!-- On compte le nombre de users -->
                        <c:set var="total" value="${total+1}"/>
                    </tr>
                </c:forEach>

                <!-- Affichage du solde total dans la dernière ligne du tableau -->
                <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>
            </table>
            <br>
            <h3><a href="newAccount.jsp" class="btn btn-dark">Ajouter un compte</a></h3> 
        </c:if>
            </div>
        </div>
    </body>
</html>
