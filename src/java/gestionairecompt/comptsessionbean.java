/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionairecompt;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import comptbancaire.CompteBancaire;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author youan
 */
@Stateless
public class comptsessionbean {
@PersistenceContext
    private EntityManager em;

public void creeUnCompteDeTest() {
        creeUnCompte("Dymama", "Le dur", "1234K", 1000);
        creeUnCompte("Youan", "BI mon pote", "500c", 20);
        creeUnCompte("Eunice", "YEDE Fabienne", "054c", 100);
        creeUnCompte("KEITA", "Mamady", "250c", 2000);
    }

    public CompteBancaire creeUnCompte(String firstName,String lastName,String accountNumber, double balance) {
        CompteBancaire compt = new CompteBancaire( firstName, lastName, accountNumber, balance);
        em.persist(compt);
        return compt;
    }
    
    public Collection<CompteBancaire> getAllCompts() {
        // Exécution d'une requête équivalente à un select *
        Query q = em.createQuery("select compt from CompteBancaire compt");
        return q.getResultList();
    }

}

