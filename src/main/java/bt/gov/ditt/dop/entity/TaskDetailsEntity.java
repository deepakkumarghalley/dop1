package bt.gov.ditt.dop.entity;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="t_task_dtls")
public class TaskDetailsEntity {
    @Id
    @Column(name="Task_Id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int Task_Id;
    @Column(name="Seq_Details_Id")
    private int Seq_Details_Id;
    @Column(name="Application_Number")
    private String Application_Number;
    @Column(name="Assigned_User_Id")
    private String Assigned_User_Id;
    @Column(name="Assigned_Priv_Id")
    private int Assigned_Priv_Id;
    @Column(name="Task_State_Id")
    private int Task_State_Id;
    @Column(name="Task_Remark")
    private String Task_Remark;
    @Column(name="Action_Date")
    private Date Action_Date;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "Instance_Id", referencedColumnName = "Instance_Id")
    private WorkflowEntity work;



    public TaskDetailsEntity() {

    }
    public TaskDetailsEntity(WorkflowEntity work) {
        this.work = work;
    }

    public TaskDetailsEntity(int seq_Details_Id, String application_Number, String assigned_User_Id, int assigned_Priv_Id, int task_State_Id, String task_Remark, Date action_Date) {
        Seq_Details_Id = seq_Details_Id;
        Application_Number = application_Number;
        Assigned_User_Id = assigned_User_Id;
        Assigned_Priv_Id = assigned_Priv_Id;
        Task_State_Id = task_State_Id;
        Task_Remark = task_Remark;
        Action_Date = action_Date;

    }

    public WorkflowEntity getWork() {
        return work;
    }

    public void setWork(WorkflowEntity work) {
        this.work = work;
    }

    public int getTask_Id() {
        return Task_Id;
    }

    public void setTask_Id(int task_Id) {
        Task_Id = task_Id;
    }

    public int getSeq_Details_Id() {
        return Seq_Details_Id;
    }

    public void setSeq_Details_Id(int seq_Details_Id) {
        Seq_Details_Id = seq_Details_Id;
    }

    public String getApplication_Number() {
        return Application_Number;
    }

    public void setApplication_Number(String application_Number) {
        Application_Number = application_Number;
    }

    public String getAssigned_User_Id() {
        return Assigned_User_Id;
    }

    public void setAssigned_User_Id(String assigned_User_Id) {
        Assigned_User_Id = assigned_User_Id;
    }

    public int getAssigned_Priv_Id() {
        return Assigned_Priv_Id;
    }

    public void setAssigned_Priv_Id(int assigned_Priv_Id) {
        Assigned_Priv_Id = assigned_Priv_Id;
    }

    public int getTask_State_Id() {
        return Task_State_Id;
    }

    public void setTask_State_Id(int task_State_Id) {
        Task_State_Id = task_State_Id;
    }

    public String getTask_Remark() {
        return Task_Remark;
    }

    public void setTask_Remark(String task_Remark) {
        Task_Remark = task_Remark;
    }

    public Date getAction_Date() {
        return Action_Date;
    }

    public void setAction_Date(Date action_Date) {
        Action_Date = action_Date;
    }


}
