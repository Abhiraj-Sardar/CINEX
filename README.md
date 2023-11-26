# CINEX
<h1>Introduction</h1>
CINEX is an OTT platform where user can Binge,Watch and Enjoy. Like Other OTT platforms you can find here movies based on your choice like Action,Drama,Romance,Thriller etc. This software also contains an interactive Admin Dashboard with the features of adding a movie,view number of active users,Admin can create another admin to share the auyhiority, can also view transactions etc.
<h1>Technology Stack</h1>
<ol>
   <li><b>HTML5:</b>https://www.w3schools.com/html/</li>
    <li><b>CSS5:</b> https://www.w3schools.com/css/</li>
    <li><b>Bootstrap:</b>https://getbootstrap.com/</li>
    <li><b>JavaScript:</b>https://www.w3schools.com/js/</li>
    <li><b>Java:</b>https://www.w3schools.com/java/</li>
  <li><b>Jdbc:</b>https://www.geeksforgeeks.org/introduction-to-jdbc/</li>
  <li><b>Mysql:</b>https://www.mysql.com/</li>
</ol>
<h1>Software Structure</h1>
The Structure of the Software is based on MVC (Model,View,Controller).The presentation logics are implemented in the view section it contains all the html or jsp pages. The Controller portion is used for bussiness logic like for taking decisions it conatins servlets. Model portion deals with the databases.
This has two different views one is Homepage another is Adminpage.

<h1>How To Install and Run This Software</h1>
<b>before installing it some database configurations need to be done please consider the end of this readme file for that</b>
  <ol type="1">
    <li>Copy The link from Github and paste it at git bash after this command <b>$git clone<pre><copied link></pre></b></li>
    <li>in your local system create a directory and open it in Eclipse</li>
       <li>now import the cloned project from Eclipse</li>
      <li>run index.jsp file for client side view</li>
       <li>run adminlogin.html for admin side view</li>
  </ol>
      <b>don't forget to set the tomcat server i.e, setting the port and http requests</b>
<h1>Home Page</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/beforelogin.gif)
<h1>Sign Up Page</h1>
<img src="https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/Sign%20up.png" height=750 width=650>
<h1>Sign In Page</h1>
<img src="https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/Signin.png" height=750 width=650>

<h1>Client Side View</h1>
lets see the client side view of this software--

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/afterlogin.gif)

<h1>Subscription Plan</h1>
Like other OTT platforms one can buy subscription offers through net banking to avail our offer

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/plan.png)
![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/subscriptionplan.gif)

<h1>Admin Side View</h1>
lets see the admin side view of this software--
<h1>Admin Login</h1>
Here the admin have to login himself or herself by using his personal credentials like username and password
<img src="https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/adminlogin.png" height=750 width=650>
<h1>Admin Dashboard</h1>
it is an interactive dashboard for the admin to track users, see transactions,add new movies etc.<br>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/admindashboard.gif)

<h1>Upload Movies</h1>
in this section the user can upload new movies in the software. it is recommended to use the movies folder in the given project to upload movies and movie banner to our software.<br>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/uploadmovies.png)
![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/uploadmoviesform.png)

<h1>Active Members</h1>
here the Admin can see The number of Active Members and make decision how much popularity CINEX is gaining.<br>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/ActiveMembers.png)

<h1>Add Admin</h1>
it allows the admin to add another admin. It is one of the better way of sharing the authiority of the software among multiple admins.hence it makes administration more effective.<br>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/addadmin.png)

<h1>Database Schema Design</h1>
Before we clone this project some configuratons are needed to be mend. as it uses Mysql so you must need to use that so before clonning this project we must perform the below database configurations.
<h1>Create Database and Tables</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/database1.png)

<h1>Database Schema of admin</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/databaseadmin.png)

<h1>Database Schema of user</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/databaseuser.png)
<h1>Database Schema of movie</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/databasemovie.png)
<h1>Database Schema of transaction</h1>

![](https://github.com/Abhiraj-Sardar/CINEX/blob/master/Output/databasetransaction.png)

<h1>Future Scope</h1>
<ol>
   <li>in future it can be upgraded to provide more functionalities like two step verfication for the user,secure transaction using Razorpay etc</li>
   <li>It based on MVC so who want to understand the MVC Model in basic they can refer this project</li>
</ol>
