# Welcome to PHP

## Warning
Please only start with this section **if and when** you have finished the [setup process](1.setup).
On your localhost, you should have a phpinfo page (purple header page with all the php info)

**Only** once this is done, can you move on with this part !<br/>
Good luck :)

## Preparatory work
New chapter, new repository !

Create a repository called `learning-php`, in the repository, should be:
- A `readme.md`
- A folder called `exercises`
- An `index.html`
- An `assets` folder

You can leave these empty for now, until we start with the exercises.


## Introduction

So just like Javascript, php is first and foremost also a scripting language.
Let's talk about some of the core features of PHP:

1. Where JS has the DOM, PHP has the server
1. PHP Can communicate through the server to a Database (don't know what a database is? Look it up!)
1. PHP Runs before the page is loaded visually (this means you can use PHP for the preparatory work for your page as well)
1. Your PHP code (even if it is in the same file with the HTML code) can **not** be seen by the browser / user.


## Usage

**So how do we use PHP ?**
First of all, we start with creating a file, just like we would for HTML. This time though, give it the extension `.php`.
A `.php` file is basically a HTML file that will first look for **ANY** PHP code inside of it

So how does it work (chronologically):

1. Server gets a request for the page
1. Server looks for the file
1. Server sees file (`index.php`) and reads it
1. Any PHP Code in that file, the server will execute **FIRST**
1. The result from the **executed** PHP code combined with the HTML code in the file will be sent to the browser
1. This means no actual PHP Code is left in the file when sending to the browser
1. The browser reads it like regular HTML and shows it to the user

Good luck and have fun with the exercises!