EmployeeDao.getAllEmployees = Select * from employee;

PassportDAO.getApplicationSequenceNo = SELECT CONSTANT_VAL FROM CONSTANT_MST WHERE CONSTANT_NAME =:constantName AND CONSTANT_YEAR =:constantYear AND CONSTANT_STATUS =:constantStatus;

CommonDAO.getExistingPassports= SELECT passport_Type, CONCAT(first_Name , ' ' , middle_Name , ' ' , last_Name) AS  full_Name ,date_Of_Birth ,issue_Date ,passport_Expiry_Date ,blacklist_flag, place_Of_Birth, passport_No FROM t_passport_dtls WHERE cid_Number =:value1 AND passport_Type=:value2

PassportDAO.fetchSubmittedDetails=SELECT a.cid_Number, a.first_Name, a.middle_Name, a.last_Name, a.date_Of_Birth, a.gender, a.place_Of_Birth, a.mother_Name, g.Nationality_Desc, f.Occupation_Desc,a.father_CID_No, a.Father_Name, a.app_Submission_Date, a.mother_CID_No, a.spouse_CID_No, a.spouse_Name, a.married_Status, a.retain_Passport, a.other_Travel_Doc, a.priv_TrDoc_IssuedBy, b.Village_Name, c.Gewog_Name,d.Dzongkhag_Name, a.cont_No_Mobile,  a.cont_No_Resi, a.cont_No_Office, a.spl_Reason, a.emr_Address, a.emr_Phone_No, a.emr_Name, a.scc_No, a.passport_Type, a.payment_Mode, a.receipt_DD_No,a.created_By, h.constant_Desc, a.passport_No, a.validation_Period, a.collector_Info, a.files_Checked, a.remarks, a.transaction_Type, a.processed_Passport_No, a.application_Fee,a.service_Fee, a.app_Payment_date,  a.payment_Recipt_No FROM t_pass_application a LEFT OUTER JOIN t_village_lookup b ON b.Village_Serial_No = a.village_Serial_No LEFT OUTER JOIN t_gewog_lookup c ON c.Gewog_Serial_No = b.Gewog_Serial_No LEFT OUTER JOIN t_dzongkhag_lookup d ON d.Dzongkhag_Serial_No = c.Dzongkhag_Serial_No LEFT OUTER JOIN t_occupation_lookup f ON f.Occupation_Id = a.occupation_Id LEFT OUTER JOIN t_nationality_lookup g ON g.Nationality_Id = a.nationality_Id LEFT OUTER JOIN constant_mst h ON h.constant_Val = a.ordinary_Pass_Reason WHERE a.application_Number=:value1

CommonDAO.getUploadedDocs=SELECT a.Document_Type, a.Document_Name, a.Upload_URL, a.UUID FROM T_PASS_APPLICATION b LEFT JOIN t_document a ON (b.Application_Number = a.Application_Number) WHERE b.Application_Number=:value1

PassportDAO.downloadFiles= SELECT * FROM t_document WHERE UUID = :value1

PassportDAO.download=SELECT upload_URL FROM t_document WHERE UUID = :value1