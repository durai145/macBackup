select  g.grp_id GroupId, i.usr_id UserId , i.Food_type FoodType, email_id   myusername, g.grp_name GroupName from GID001TB i, GRP001TB g where g.grp_id  = i.grp_id and  i.email_id ='durai145@live.in' and i.password ='1qaz2wsx'



USR_ID         
F_NAME     
L_NAME     
EMAIL_ID   
CUR_BAL    
PEND_AMT   
LEDGER     
ACCT_TYPE  
PASSWORD   
LAST_LOGIN 
PEND_Q_CNT 
APVD_Q_CNT 
GRP_ID     
LANG       
DT_CREATED 
DT_MODIFIED
MKR_ID     
ATH_ID     
STATUS     
OTPE       
OTP        



insert into DBHSP.GID001TB
(
USR_ID       ,
F_NAME     	,
L_NAME     	,
EMAIL_ID   	
)
select  distinct
usr_id     	USR_ID      ,
F_name     	F_NAME     	,
L_name     	L_NAME     	,
email_id   	EMAIL_ID   	
from db1021977_dev.GID001TB;