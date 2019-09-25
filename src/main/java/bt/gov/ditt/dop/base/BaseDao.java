package bt.gov.ditt.dop.base;

import org.hibernate.Session;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Properties;


public abstract class BaseDao {
    protected String sqlQuery;
    @PersistenceContext
    protected EntityManager entityManager;
    @Autowired
    @Qualifier("queryProps")
    protected Properties properties;


    protected Session getCurrentSession() {
        return entityManager.unwrap(Session.class);
    }

    protected org.hibernate.query.Query sqlQuery(String query, Class dtoClazz) {
        return getCurrentSession()
                .createSQLQuery(query)
                .setResultTransformer(new AliasToBeanResultTransformer(dtoClazz));
    }

    protected org.hibernate.query.Query sqlQuery(String query) {
        return getCurrentSession().createSQLQuery(query);
    }

    protected Query persistenceQuery(String query, Class entityClazz) {
        return entityManager.createNativeQuery(query, entityClazz);
    }

    protected void saveOrUpdate(Object obj) {
        getCurrentSession().saveOrUpdate(obj);
    }

    protected void deleteE(Object obj) {
        entityManager.remove(obj);
    }
}