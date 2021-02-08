<%-- 
    Document   : menu
    Created on : Feb 8, 2021, 11:47:52 AM
    Author     : MOHAMED
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <div class="jumbotron text-center">
  <h1>Bienvenue sur notre gestionnaire de compte</h1>
  <p>Créer et gerer des comptes bancaires en toute simplicité!</p>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3> <a href="index.jsp" class="btn btn-dark">Accueil</a></h3>
    </div>
    <div class="col-sm-4">
      <h3> <a href="newAccount.jsp" class="btn btn-dark">Nouveau compte</a></h3>
     
    </div>
    <div class="col-sm-4">
      <h3>  <a href="servlet?action=listeAccount" class="btn btn-dark">Liste des comptes</a></h3>
      <p></p>
    </div>
  </div>
</div>
