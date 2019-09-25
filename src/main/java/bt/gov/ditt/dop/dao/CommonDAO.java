package bt.gov.ditt.dop.dao;
import bt.gov.ditt.dop.base.BaseDao;
import bt.gov.ditt.dop.dto.CommonDTO;
import bt.gov.ditt.dop.dto.DocumentDTO;
import bt.gov.ditt.dop.dto.DropdownDTO;
import bt.gov.ditt.dop.entity.DocumentEntity;
import bt.gov.ditt.dop.entity.TaskDetailsEntity;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CommonDAO extends BaseDao {

    @PersistenceContext
     EntityManager entityManager;



    @Transactional
    public List<CommonDTO> getExistingDetails(String cidNumber, String applyFor) {
        List<CommonDTO> existingPassport = new ArrayList<CommonDTO>();

        try {

            sqlQuery = properties.getProperty("CommonDAO.getExistingPassports");
            Query pQuery = sqlQuery(sqlQuery, CommonDTO.class).setParameter("value1",cidNumber).setParameter("value2",applyFor);
            existingPassport=pQuery.list();

            return existingPassport;
            //.setParameter("value3",ProtocolConstant.PASSPORT_ACTIVE_FLAG_ACTIVE);
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
       //return null;
    }
    @Transactional
    public String saveDocuments(DocumentEntity docEntity) {
      try {
          saveOrUpdate(docEntity);
          return "Success";
      }catch (Exception e){
          e.printStackTrace();
          System.out.print("Exception in CommonDAO # saveDocuments: "+e);
          return "Exception from CommonDAO+"+e;
      }
     }
    @Transactional
    public List<DropdownDTO> getDzongkhagList() {
      List<DropdownDTO> dtoDzoList = new ArrayList<DropdownDTO>();
        try {
            String sql = "SELECT d.`Dzongkhag_Serial_No` header_id, d.`Dzongkhag_Name` header_name FROM t_dzongkhag_lookup d ";
            Query query = sqlQuery(sql, DropdownDTO.class);
            dtoDzoList=query.list();
        }catch(Exception e){
            System.out.print("Exception in CommonDAO # getDzongkhagList: "+e);
        }
        return dtoDzoList;
    }

    @Transactional
    public List<DropdownDTO> getDropdownList(String sl_no, String type) {
      List<DropdownDTO> dtoList =new ArrayList<DropdownDTO>();
        String sql ="";
        Query query=null;
        try {
            if(type.equalsIgnoreCase("gewog_list")){
                sql = "SELECT g.`Gewog_Name` header_name,g.`Gewog_Serial_No` header_id FROM t_gewog_lookup g WHERE g.`Dzongkhag_Serial_No`=:type AND g.`Gewog_Name`!='Unknown'";

            }
            if(type.equalsIgnoreCase("village_List")){
                sql = "SELECT g.`Village_Name` header_name,g.`Village_Serial_No` header_id FROM t_village_lookup g WHERE g.`Gewog_Serial_No`=:type AND g.`Village_Name`!='Unknown'";

            }
            if(type.equalsIgnoreCase("country")){
               // sql = "SELECT a.`Country_Name` header_name,a.`Country_Id` header_id `t_country_lookup` a WHERE a.`Activity_No`=:activity_Sl_no AND a.`Type`=:type1";
            }
            if(type.equalsIgnoreCase("country")){
                query = sqlQuery(sql,DropdownDTO.class);
                query.setParameter("sl_no", sl_no);
                query.setParameter("type",type);
            }
            else{
                query = sqlQuery(sql,DropdownDTO.class).setParameter("type", sl_no);
            }
            dtoList=query.list();
        }

        catch(Exception e){
        System.out.print("Exception in CommonDAO # getDropdownList: "+e);
        }
        return dtoList;
        }
        @Transactional
            public List<DropdownDTO> getCountryList() {
                List<DropdownDTO> dtoCountryList = new ArrayList<DropdownDTO>();
                try {
                    String sql = "SELECT `Country_Id` header_id, `Country_Name` header_name FROM t_country_lookup ";
                    Query query = sqlQuery(sql, DropdownDTO.class);
                    dtoCountryList=query.list();
                }catch(Exception e){
                    System.out.print("Exception in CommonDAO # getCountryList: "+e);
                }
                return dtoCountryList;
            }
        @Transactional
        public List<DropdownDTO> getOccupationList() {
            List<DropdownDTO> dtoOccupationList = new ArrayList<DropdownDTO>();
            try {
                String sql = "SELECT `Occupation_Id` header_id, `Occupation_Desc` header_name FROM t_occupation_lookup ";
                Query query = sqlQuery(sql, DropdownDTO.class);
                dtoOccupationList=query.list();
            }catch(Exception e){
                System.out.print("Exception in CommonDAO # getOccupationList: "+e);
            }
            return dtoOccupationList;
    }
    @Transactional
    public int getprivilegeId(int request_service_id, String Submitter) {
        int privilegeId=0;
        String sql = "SELECT PRIV_ID FROM t_privilege_lookup WHERE  PRIV_SHORT_DESC=:param1 AND SERVICE_ID=:param2";
        Query query = sqlQuery(sql).setParameter("param1", "Submitter").setParameter("param2",request_service_id);
        if(query.list().size()>0)
            privilegeId=(Integer)query.list().get(0);

        return privilegeId;
    }
    @Transactional
    public TaskDetailsEntity saveWorkflow(TaskDetailsEntity taskEntity) {
        try {
            saveOrUpdate(taskEntity);
            taskEntity.setTask_Remark("Success");
        }catch(Exception e){
            System.out.print("Exception in CommonDAO # saveWorkflow: "+e);
            taskEntity.setTask_Remark("Exception in CommonDAO # saveWorkflow: "+e);
        }
        return taskEntity;
    }

    @Transactional
    public List<DocumentDTO> getListOfUploadedDocuments(String applicationNo) {
        List<DocumentDTO> docList =new ArrayList<DocumentDTO>();
        try{
           sqlQuery = properties.getProperty("CommonDAO.getUploadedDocs");
            //String sqlQuery = "SELECT a.Document_Type, a.Document_Name, a.Upload_URL, a.UUID FROM T_PASS_APPLICATION b LEFT JOIN t_document a ON (b.Application_Number = a.Application_Number) WHERE b.Application_Number=:value";
             Query dQuery = sqlQuery(sqlQuery, DocumentDTO.class).setParameter("value1",applicationNo);
             docList=dQuery.list();
            return docList;
        }catch (Exception e){
            System.out.print("Exception in CommonDAO # getListOfUploadedDocuments: "+e);
            return null;
        }

    }


}


