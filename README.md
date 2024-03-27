# ASSIGNMENT 2 DBMS
> ## Alli Khadga Jyoth - 19024, DSE

## How to Use?
* If you use jupyter notebook (suggested) do, `from khadga19024_A2_DBMS import *` then you can call `Connections()` to connect to mysql server. 
* To use operations(CREATE, SELECT, ...) do `Connections().SELECT()(or some other operation)`
* If you use python Console do `python` in the terminal which starts a python instance. Then write `from khadga19024_A2_DBMS import *`
* Call `Connections() to coneecct`. To call other functions do `Connections().someotheroper`.
### Note: if you run the script directly `C:\Users\~\ python khadga19024_A2_DBMS.py`    you will not be able to use embedded functions `SELECT, INSERT ,...`
#### Some operations to get you started:
### CHECK the .ipynb file as it contains some pre made executables to get started (its not in .py file).
#### The same are below:

``` python
cfg = {
    "user": "root",
    "password": "", # Your password
    "host": "localhost",
    "database": None,
    "raise_on_warnings": True,
}
test_usr_config = {
    "user": "test_user1",
    "password": "test_user_pwd",
    "host": "localhost",
    "database": None,
    "raise_on_warnings": True,
}

1. con = Connections(cfg)

2. con.CREATE(database = "Classes",table = "Courses",columns = {'course_name':'varchar(25)','Course_id':'varchar(7)'})

3. con.INSERT(database = "Classes",table = 'Courses',values = (("DBMS",'DSE-312'),('DSML','DSE-302'),('ALGORITHMS','DSE-304'))) 

4. con.INSERT(database = "Classes",table = 'Courses',values = ("DBMS",'DSE-312'))

5. con.SELECT(database  = 'Classes', query = 'Select * from courses where course_name = "DBMS"')

6. con.UPDATE(database = 'Classes',table = 'Courses',columns = {'course_id':'DSE-310'},where = 'where course_name = "DBMS"')

7. con.SELECT(database  = 'Classes', query = 'Select * from courses where course_name = "DBMS"')

8. con.ALTER_TABLE('Classes',table='Courses',columns={'course_name':'varchar(50)'},modifier='modify')

9. con.NOTNULL(database = "Classes",table = "Courses",columns = {'course_name':'varchar(30)','course_id':'varchar(7)'})

10. con.PRIMARY_KEY(database = 'Classes',table = 'Courses',columns = ('course_id'))

11. con.CREATE(database = "Classes",table='instructor', columns={'inst_id' :'int not null','course_id' :'varchar(7)'})

12. con.PRIMARY_KEY(database = 'Classes',table = 'instructor',columns = ('inst_id'))        

13. con.FOREIGN_KEY(database = "Classes",table = "instructor", columns = {"Courses": "course_id"}, constraint_name = {'Courses':"cid_fkey"})

14. con.new_user(user_name='test_user1',user_pwd='test_user_pwd')

15. con.grant_priv(user_name='test_user1',privlage='ALL',database='Classes')

16. con.SELECT(database='Classes',query = 'SELECT * from courses')

17. con.revoke_priv(user_name='test_user1',revoke='ALL')

18. con2 = Connections(test_usr_config)

19. con2.SELECT(database='Classes',query = 'SELECT * from courses')

20. con.drop_user(user_name='test_user1') #RUN THIS 

21. con.DROP(database = 'classes') #RUN THIS
```
