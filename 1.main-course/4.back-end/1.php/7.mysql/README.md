# Challenge: MySQL

|Challenge Parameters  |Challenge Details              |
|:---------------------|:------------------------------|
|Repository Folder     |`6.mysql`                      |
|Challenge type        |`learning challenge`           |
|Duration              |`~3 days`                      |
|Deadline              |`04/09/2019 15h00`             |
|Deployment method     |`N/A`                          |
|Group composition     |`solo --help each other`       |


## Introduction
We've touched the basis of `PHP` now it's time to learn about his partner in crime, 
let's look at `MySQL` and what it does / how it works..


### Setup
Let's install MySQL, PHPMyAdmin, make sure you have all of them correctly configured. <br/>
Some of you might have done this already, you can check by going to one of the following addresses:
- [localhost/phpmyadmin](http://localhost/phpmyadmin)
- [localhost:8080](http://localhost:8080)
- [localhost:8000](http://localhost:8000)

> If you don't see a login page for **php my admin**, or you do and can't login, then you need to follow the setup path.

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


    
    
[Go back](../)