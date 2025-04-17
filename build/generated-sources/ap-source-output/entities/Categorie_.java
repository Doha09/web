package entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Categorie.class)
public abstract class Categorie_ {

	public static volatile SingularAttribute<Categorie, Integer> id;
	public static volatile ListAttribute<Categorie, Article> articles;
	public static volatile SingularAttribute<Categorie, String> nom;

}

