package bt.gov.ditt.dop.dao;

import bt.gov.ditt.dop.base.BaseDao;
import bt.gov.ditt.dop.dto.CommonDTO;
import bt.gov.ditt.dop.dto.DocumentDTO;
import bt.gov.ditt.dop.dto.PassportDTO;
import bt.gov.ditt.dop.entity.PassportEntity;
import org.apache.commons.io.IOUtils;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.sql.DataSource;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@Repository
public class PassportDAO extends BaseDao {
    @PersistenceContext
    EntityManager entityManager;
    @Autowired
    CommonDAO commonDAO;

    private DataSource dataSource;
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Transactional
    public PassportEntity save(PassportEntity passportEntity) {
        PassportEntity pEntity = new PassportEntity();
        try {
            saveOrUpdate(passportEntity);

            if (passportEntity.getApplication_Number() != null) {
                pEntity.setApplication_Number(passportEntity.getApplication_Number());

            }

        } catch (Exception e) {
            System.out.print("Exception in PassportDAO # getGuidelines: " + e);
            e.printStackTrace();
            pEntity.setApplication_Number("Exception:" + e);
        }
        return pEntity;
    }


    @Transactional
    public synchronized long getApplicationSequenceNo(String sequenceConstantName, int currentYear, String passportActiveFlagActive, int sequenceConstantTypeId) {
        long seqNo = 0;
        try {
            /* String sql = properties.getProperty("PassportDAO.getApplicationSequenceNo");*/
            String sql = ("SELECT constant_val FROM constant_mst  WHERE constant_name =:value1 AND constant_year =:value2 AND constant_status =:value3");
            Query query = sqlQuery(sql).setParameter("value1", sequenceConstantName).setParameter("value2", currentYear).setParameter("value3", passportActiveFlagActive);
            seqNo = Long.parseLong((String) query.getSingleResult());
            //  String seqNoValue =String.valueOf(seqNo);
            seqNo++;
            if (seqNo <= 1) {
                Query query1 = sqlQuery("INSERT INTO constant_mst(constant_Name,constant_Desc,constant_Type_Id,constant_Val,constant_Year,constant_Status) VALUES(:value1,:value2,:value3,:value4,:value5,:value6)")
                        .setParameter("value1", sequenceConstantName).setParameter("value2", sequenceConstantName)
                        .setParameter("value3", sequenceConstantTypeId).setParameter("value4", String.valueOf(seqNo))
                        .setParameter("value5", currentYear).setParameter("value6", passportActiveFlagActive);

                query1.executeUpdate();
            } else {

                Query query1 = sqlQuery("UPDATE constant_mst SET constant_Val=:value1 WHERE constant_Name=:value2 AND constant_Year=:value3 AND constant_Status=:value4");
                query1.setParameter("value1", String.valueOf(seqNo));
                query1.setParameter("value2", sequenceConstantName);
                query1.setParameter("value3", currentYear);
                query1.setParameter("value4", passportActiveFlagActive);
                query1.executeUpdate();
            }
        } catch (Exception e) {
            System.out.print("Exception in PassportDAO # getGuidelines: " + e);
            e.printStackTrace();
        }
        return seqNo;
    }

    @Transactional
    public List<PassportDTO> populateSubmittedForm(String appNo) {
        PassportDTO passportDTO = new PassportDTO();

        try {
            // String sqlQuery=("SELECT first_Name,middle_Name,last_Name FROM t_pass_application WHERE application_Number=:val");
            String sql = properties.getProperty("PassportDAO.fetchSubmittedDetails");
            org.hibernate.Query query = sqlQuery(sql, PassportDTO.class).setParameter("value1", appNo);
            return query.list();

        } catch (Exception e) {
            System.out.print("Exception in populateSubmittedForm # : " + e);
            e.printStackTrace();
            return null;
        }

    }

    @Transactional
    public DocumentDTO getDownloadDocsList(String uuid) {
       // List<DocumentDTO> downloadList = new ArrayList<DocumentDTO>();
        DocumentDTO downloadList =new DocumentDTO();
        try {
            sqlQuery = properties.getProperty("PassportDAO.downloadFiles");
            Query doQuery = sqlQuery(sqlQuery, DocumentDTO.class).setParameter("value1", uuid);
            downloadList = (DocumentDTO) doQuery.list().get(0);
            return downloadList;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    @Transactional
    public byte[] downloadFile(String uuid) {


        try {
           // List<DocumentDTO> downloadList = new ArrayList<DocumentDTO>();
            DocumentDTO doc = new DocumentDTO();
            sqlQuery = properties.getProperty("PassportDAO.download");
            Query query = sqlQuery(sqlQuery, DocumentDTO.class).setParameter("value1", uuid);
            doc = (DocumentDTO) query.getSingleResult();

            //return filePath;
            String filePath = doc.getUpload_URL();
            FileInputStream fileInputStream = new FileInputStream(filePath);
            return IOUtils.toByteArray(fileInputStream);

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}


// String Upload_URL=

// String filePath = downloadList.get("")

            /*Connection connection = null;
            String sql = "SELECT * FROM t_document WHERE UUID = ?";
            connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,uuid);
            String filePath = resultSet.getString("Upload_URL");
            ResultSet resultSet = ps.getResultSet();
            resultSet.next();*/



