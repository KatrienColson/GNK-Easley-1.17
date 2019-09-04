# Challenge: MySQL

|Challenge Parameters  |Challenge Details              |
|:---------------------|:------------------------------|
|Repository            |`My First MVC`                 |
|Challenge type        |`consolidation challenge`      |
|Duration              |`~10 days`                     |
|Deadline              |`23/09/2019 08h59`             |
|Deployment method     |`N/A`                          |
|Group composition     |`Groups of 3`                  |


## Introduction
Welcome to the final challenge, this will be something awesome to show off to companies and possible internship options.
We're going to build an MVC from the ground up (limited parts of it).



### Setup
**Virtual Host:**
When you open a file in your browser, you'll see file:// and then the path to the actual file on your pc.
A virtual host, like your `localhost`, will tell the browser to look in a certain location for your files.
It's kind of like a variable, 
````
$localhost = "/var/www/htdocs/"
````



#### Installing MySQL and setting it up together with PHPMyAdmin
- (Re)-execute step 2 of this [guide](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04#step-2-%E2%80%94-installing-mysql)
- Then follow this [guide](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-18-04) completely
- Now go to [localhost/phpmyadmin](http://localhost/phpmyadmin)

***You should see the following, if you do and you can login, you're ready to start working:***

![PHP My Admin login screen](./resources/phpmyadmin.png)

<hr/>




## Objectives:


### Step 1: Create a database
- Go to your local phpmyadmin
- Create a database, called `becode_genk`
- Create a table, called `hopper_2`
- Give it the following structure:
    - `id` | Primary Key & Index | Auto Increment
    - `first_name`
    - `last_name`
    - `username`
    - `linkedin` ***(if you don't have a linkedin profile, make one!)***
    - `github` ***(same)***
    - `email` 
    - `preferred_language` ***(use the `ISO 639-1` Codes, you can find them [here](https://www.constitution.org/lg/languagecode.html)***
    - `avatar` ***(a fun picture of yourself or something you want to use as an avatar)***
    - `video` ***(a youtube link to a music video you like)***
    - `quote` ***(a quote you like)***
    - `quote_author` ***(person who made the quote)***
    - `created_at` **(auto fills in the timestamp when you create an entry, lookup how to do this, hint:look for this column name)**

<!--    - `belikebill` ***(You have to get a picture from [here](https://www.belikebill.ga/), fill in your details and generate a fun picture.-->
<!--Then upload it anywhere and enter the URL of the picture in the `avatar` column)***  -->

### Step 2: Connect to the database
Enter the following code into `connection.php`:

`````php

function openConnection() {
    
 // Try to figure out what these should be for you
 $dbhost    = "DB_HOST";
 $dbuser    = "DB_USER";
 $dbpass    = "DB_USER_PASSWORD";
 $db        = "DB_NAME";
 
 // Try to understand what happens here 
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn->error);
 
 // Why we do this here
 return $conn;
}



// And why would we do this here ?
function closeConnection($conn) {
    $conn->close();
}
 
`````

### Step 3: 
- Create `index.php`, `insert.php`
- Include the `connection.php` file in both, but make sure your `PHP` code won't run if the connection file isn't included
- Create a form that allows you to fill in the table with your data in `insert.php`
- Make sure your form requires every column of the table to be filled
- Test by inserting your data
- Check phpmyadmin to see if all your data is correctly entered into the database


### Step 4:
> **WARNING: If you continue to this step and your code is buggy/not functional, you will tamper with online resources which will affect everyone. So test your code for bugs!**

Change your DB Credentials in `connection.php` to the following:
`````php
  
// Online dB credentials
$dbhost    = "136.144.221.129";
$dbuser    = "genk";
$dbpass    = "{)+O^O@iw!].zmjT";
$db        = "becode_genk";
 
 `````
        
This will connect you to a remote database I'm hosting, from this point forward, everything you enter in here, will be seen by everyone else in the group.
Now use your form on `insert.php` to push your details to the online database
 
### Step 5:
We have managed to push our info to a local & remote database, now let's try and pull that same information out of there,<br/>
follow these instructions:

- On `index.php`, list a table with summaries of most of the details of all people
- Make sure the table shows the following:
    - Their first name
    - Their last name
    - Their email
    - Their preferred language (in the form of an icon (flag))
    - A link to their personal page (`profile.php?user=$user_id`) (the link can also be, on their name or any other column you prefer)


### Step 6:
- On `profile.php` get the required user's details from the database
- Print them out on a profile page you design, if you need inspiration, you can look [here](https://www.google.com/search?q=profile+page+design&source=lnms&tbm=isch&sa=X&ved=0ahUKEwis5Juh07HkAhUIJFAKHeJKASYQ_AUIESgB&biw=2560&bih=1297#imgrc=jjirWCPSxqfBFM:)
- Include an API call to the following API: [Be Like Bill](https://github.com/gautamkrishnar/Be-Like-Bill), use the documentation to understand how you need to use it, do this using either `curl` in PHP or `ajax` in Javascript.
- The received image (from the api) needs to be worked into the profile page somewhere
- Every column of the database table needs to be shown someway
- The final result needs to be a coherent profile page


### Step 7:
Next up we want to create some delete and edit functionality, sadly though we can't yet.
Imagine a webapp where you can edit other people's info, or delete their profile... That wouldn't be good... 
So let's make a login / registration system:

- Create a `login.php` file and fill it up with a login form (email/password or username/password)
- Rename `insert.php` to `register.php` and add a password & password confirmation field to the form
- Create an `auth.php` file and write both the login and registration logic in them
- The registration logic should:
    - Check if the email is valid (validate all other fields as well if necessary)
    - Check if password and password confirm are equal
    - Hash the password and add it to the database in it's hashed form (**NEVER** store unhashed / unencrypted passwords).
    - If the registration fails, go back to the previous form, fill in all the previously filled in data (except the passwords) and show an error on the correct field
    - If the registration succeeds, go to `profile.php` and show the user's own profile.
- The login logic should:
    - Check if the filled in username / email can be found on a user with that credential
    - Check if the hashed database password, can be matched to the newly hashed (filled in) password
    - If not, go back to the login page, giving an error (**WATCH OUT:** never say whether the password or the username/email was incorrect, always say either one of them could be wrong) 
    - If it's correct, move to the `index.php` page
- Now, obviously we don't want non-logged-in people to see `index.php` with all our data, so protect `index.php` so that it checks for the user's login status and redirects to `login.php` when not logged in.



### Step 8:
So now that authentication is out of the way, we want to give the user's right to edit, though obviously we only want them to edit or remove their own profiles.

- On `profile.php` check if the logged in user's ID equals that of the one requested on the profile page, if so, show edit and delete buttons somewhere on the page.
- When those buttons are clicked, again your code should check whether this person has the rights to do the delete / edit action before executing it
- Obviously once executed, the edit action goes back to the profile, delete action, should go back to register page 

> This way, we eliminate any and all means of `hacking` our code


### Step 9: 
- Review for yourself, the different MySQLI / PDO functions you have learned
- Write down a small cheatsheet for yourself regarding the SQL functions 
- Congratulate yourself, you just taught yourself `MySQL` without any help, without any guidance... I'm impressed, honestly! :unicorn: 

    
    
[Go back](../)