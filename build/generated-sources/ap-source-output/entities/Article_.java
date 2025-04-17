package entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Article.class)
public abstract class Article_ {

	public static volatile SingularAttribute<Article, Integer> id;
	public static volatile SingularAttribute<Article, String> contenu;
	public static volatile SingularAttribute<Article, Categorie> categorie;
	public static volatile ListAttribute<Article, Commentaire> commentaires;
	public static volatile SingularAttribute<Article, Date> datePublication;
	public static volatile SingularAttribute<Article, String> titre;

}

