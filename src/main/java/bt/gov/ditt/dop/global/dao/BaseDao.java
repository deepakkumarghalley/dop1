package bt.gov.ditt.dop.global.dao;

import org.hibernate.Session;
import org.hibernate.transform.Transformers;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Properties;

/**
 * Created by Deepak on 8/14/2019.
 */
public abstract class BaseDao {

    protected EntityManager em;
    protected Properties properties;

    @PersistenceContext(name = "default")
    public void setEm(EntityManager em) {
        this.em = em;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    protected Session getCurrentSession() {
        return em.unwrap(Session.class);
    }

    protected Session getReportingSession() {
        return getCurrentSession();
    }

    protected Session getArchivalSession() {
        return getCurrentSession();
    }

    protected org.hibernate.Query hibernateQuery(String query, Class dtoClazz) {
        return getCurrentSession()
                .createSQLQuery(query)
                .setResultTransformer(Transformers.aliasToBean(dtoClazz));
    }

    protected org.hibernate.Query hibernateReportingQuery(String query, Class dtoClazz) {
        return getReportingSession()
                .createSQLQuery(query)
                .setResultTransformer(Transformers.aliasToBean(dtoClazz));
    }

    protected org.hibernate.Query hibernateArchivalQuery(String query, Class dtoClazz) {
        return getArchivalSession()
                .createSQLQuery(query)
                .setResultTransformer(Transformers.aliasToBean(dtoClazz));
    }

    protected org.hibernate.Query hibernateQuery(String query) {
        return getCurrentSession().createSQLQuery(query);
    }

    protected org.hibernate.Query hibernateReportingQuery(String query) {
        return getReportingSession().createSQLQuery(query);
    }

    protected org.hibernate.Query hibernateArchivalQuery(String query) {
        return getArchivalSession().createSQLQuery(query);
    }

    protected Query persistenceQuery(String query, Class entityClazz) {
        return em.createNativeQuery(query, entityClazz);
    }

    protected Query persistenceQuery(String query) {
        return em.createNativeQuery(query);
    }

}
