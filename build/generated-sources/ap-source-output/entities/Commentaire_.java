package entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Commentaire.class)
public abstract class Commentaire_ {

	public static volatile SingularAttribute<Commentaire, Integer> id;
	public static volatile SingularAttribute<Commentaire, String> contenu;
	public static volatile SingularAttribute<Commentaire, Client> client;
	public static volatile SingularAttribute<Commentaire, Article> article;
	public static volatile SingularAttribute<Commentaire, String> auteur;

}

