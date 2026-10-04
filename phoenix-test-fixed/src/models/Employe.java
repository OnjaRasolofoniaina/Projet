package models;

public class Employe {

    private int id;
    private String nom;
    private String poste;

    public Employe() {
    }

    public Employe(int id, String nom, String poste) {
        this.id = id;
        this.nom = nom;
        this.poste = poste;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public String getPrenom() {
        return nom;
    }

    public void setPrenom(String prenom) {
        this.nom = prenom;
    }
}
