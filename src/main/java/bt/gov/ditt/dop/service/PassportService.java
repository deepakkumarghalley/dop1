package bt.gov.ditt.dop.service;

import bt.gov.ditt.dop.common.constant.ProtocolConstant;
import bt.gov.ditt.dop.common.utils.DateConversionUtil;
import bt.gov.ditt.dop.dao.CommonDAO;
import bt.gov.ditt.dop.dao.PassportDAO;
import bt.gov.ditt.dop.dto.CommonDTO;
import bt.gov.ditt.dop.dto.DocumentDTO;
import bt.gov.ditt.dop.dto.PassportDTO;
import bt.gov.ditt.dop.entity.DocumentEntity;
import bt.gov.ditt.dop.entity.PassportEntity;
import bt.gov.ditt.dop.entity.TaskDetailsEntity;
import bt.gov.ditt.dop.entity.WorkflowEntity;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

@Service
public class PassportService {
    @Autowired
    PassportDAO passportDAO;

    @Autowired
    CommonDAO commonDAO;

    String applicationNo = null;
    @Transactional
    public PassportDTO save(PassportDTO passportDTO) {
        try {
            PassportEntity passportEntity = convertToEntity(passportDTO);
            applicationNo = this.generatePassportApplNumber();
            passportDTO.setApplication_Number(applicationNo);
            System.out.println("app:"+ applicationNo);
            if (applicationNo != null) {
                    passportEntity.setApplication_Number(applicationNo);
                    passportEntity.setApp_Submission_Date(new Date());
                    passportEntity.setRequest_Service_Id(221);
                    PassportEntity pEntity = passportDAO.save(passportEntity);

                    if(!pEntity.getApplication_Number().contains("Exception")){
                    WorkflowEntity workflowEntity = new WorkflowEntity();
                    workflowEntity.setApplication_Number(applicationNo);
                    workflowEntity.setStatus_Id(1);
                    workflowEntity.setService_Id(passportEntity.getRequest_Service_Id());
                    workflowEntity.setAction_Date(new Date());
                    workflowEntity.setActor_Name("CITIZEN");
                    workflowEntity.setActor_Id("CITIZEN");
                    workflowEntity.setRole_Id(11);
                    workflowEntity.setRole_Name("CITIZEN");

                    TaskDetailsEntity taskEntity = new TaskDetailsEntity();
                    taskEntity.setApplication_Number(applicationNo);
                    int privilegeId = commonDAO.getprivilegeId((int) passportEntity.getRequest_Service_Id(),"Submitter");
                    taskEntity.setAssigned_Priv_Id(privilegeId);
                    taskEntity.setAssigned_User_Id("CITIZEN");
                    taskEntity.setAction_Date(new Date());
                    taskEntity.setSeq_Details_Id(1);
                    taskEntity.setTask_State_Id(5);
                    //taskEntity.setTask_Remark("jghg");
                    taskEntity.setAction_Date(new Date());
                    taskEntity.setWork(workflowEntity);
                    TaskDetailsEntity status =commonDAO.saveWorkflow(taskEntity);

                    if(status.getTask_Remark().equalsIgnoreCase("Success")){
                        passportDTO.setRemarks("Success");
                    }
                    return passportDTO;
                }
                else{
                    return null;
                }
            }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return passportDTO;
    }
    private PassportEntity convertToEntity(PassportDTO passportDTO) {
        PassportEntity passportEntity = new PassportEntity();
        BeanUtils.copyProperties(passportDTO, passportEntity);
        return passportEntity;

    }

    private String generatePassportApplNumber() {
        DecimalFormat seqFormat = new DecimalFormat("000000");
        int currentYear = Integer.parseInt(DateConversionUtil.getDateInSpecificFormat(new java.util.Date(), "yyyy"));
        String applicationNo = null;
        long appSequence = passportDAO.getApplicationSequenceNo(
                ProtocolConstant.SEQUENCE_CONSTANT_NAME, currentYear,
                ProtocolConstant.PASSPORT_ACTIVE_FLAG_ACTIVE,
                ProtocolConstant.SEQUENCE_CONSTANT_TYPE_ID);
        if (appSequence > 0) {
            applicationNo = ProtocolConstant.PASSPORT_APPLICATION_NO_PREFIX
                    + seqFormat.format(appSequence)
                    + String.valueOf(new java.util.Date()).substring(26);
        }

        return applicationNo;
    }

    @Transactional
    public List<PassportDTO>  populateSubmittedForm(String appNo) {
        return passportDAO.populateSubmittedForm(appNo);
    }


    @Transactional
    public DocumentDTO getDownloadDocsList(String uuid) {
        return passportDAO.getDownloadDocsList(uuid);
    }

    public byte[] downloadFile(String uuid) {
        return passportDAO.downloadFile(uuid);
    }


    /*public List<CommonDTO> getExistingPassport() {
        return passportDAO.getExistingPassport();

    }*/
}
