# Challenge: Terminal emulator

|Challenge Parameters  |Challenge Details              |
|:---------------------|:------------------------------|
|Repository Folder     |`5.terminal`                   |
|Challenge type        |`recap challenge`              |
|Duration              |`~3 days`                      |
|Deadline              |`30/08/2019 15h00`             |
|Deployment method     |`N/A`                          |
|Group composition     |`solo --help each other`       |


## Introduction
We're going to try to make a terminal emulator in our browser. This means that we're going to try to make our browser
window act like it **is** a terminal. 

### Setup
1. At the end of the exercise create a repository `Terminal` and push all your (final) files in there.
1. Follow the instructions step by step: commit & push at the end of every step.
1. Create `terminal.php` & `index.php`

### Objectives:
Choose which version you want to try:
- **Fully explained:** These instructions are fully laid out, so you can follow step by step what to do
- **OG Objectives:** These instructions are more towards a realistic explanation of a project like this, this requires some thinking to be done by you

I suggest that you try to challenge yourself at first and when you feel like you are stuck you can switch to the more throughly explained instructions, 
this way you know for sure at the end of this exercise, you will have good code, in a good structure. **Good luck!** :panda_face:  
**<details><summary>Fully explained instructions</summary>**

### Objectives
1. On `index.php` create a form with an input field
1. Use javascript to submit the form when the 'enter' key is pressed and send the input field over a `POST` request
1. Use javascript to empty the input field and add the command above the input field (like in a terminal), on the same enter keypress
1. Use your awesome css skills, to make the whole screen look like a terminal:
    - Background-color
    - Font family: consolas
    - White, grey, green, ... text color
    - Look at your terminal to see any other details
1. Make sure their is a blinking cursor at the end of the input field
1. Once enough commands have been entered and your input field is close to the bottom of the page, start auto scrolling down and make sure the input field is always visible (scrolling without animation)
1. Create a class called `terminal` in the file `terminal.php`
1. Try to create a schematic of what the `terminal` class should have in form of properties and methods 

#### Structure of the class
1. Give the class the following:
    - A property called: **commands**, which contains an array with all known commands `[6548 => "command", 8794 => "command", 1267 => "command", ...]`
    - A property called: **responses**, which contains an array with all responses for all commands `[6548 => "response for command #6548", ...]`
    - A property called: **history**, which contains an array with all commands and responses formulated as such `["command" => "response", ...]`
    - A method that gets the command as a parameter and returns the appropriate response (if applicable, after executing the command)
    - A method that adds the current command-response combo to the list of previous commands (history) and saves / updates the list in the `$_COOKIE` global

#### Structure of `index.php`
***NOTE: Do the following at the top of the page!!***
1. Check if a command has been executed or if this is first load
1. If a command has been executed:
    - Get it from `$_POST`
    - Execute the class method that executes the command
    - Either make sure that first class method also saves the command, or execute the second method
    - Save the returned result of the command in a variable
    - Save the full history of the terminal (taken from the class) in a variable

***NOTE: Do the following at the right location in your HTML***
- Echo the history of previous commands and their responses
- Echo the current command and it's response
-  Make sure after all of this, that the input field is below all the previous lines of code and their responses
</details>

**<details><summary>OG Objectives</summary>**

### Objectives
1. On `index.php` emulate a terminal
1. Make sure it looks like a terminal
1. Create a class called `terminal` in the file `terminal.php`
1. Use the `terminal` class to:
    - Execute commands
    - Keep track of the full history (use `$_COOKIE`)
    - Give feedback to commands
    - Save a list of known commands
1. Make sure a text cursor is constantly blinking on the page

</details>

<hr/>

**Finish the objectives, before continuing with the bonus objectives!**
<br/>


### Bonus objectives
1. Whatever happens when you press the up arrow in the terminal, should happen in the browser as well
1. Disable CTRL-V in javascript, only SHIFT-INSERT should work
1. Use `AJAX` instead of a post request so the page does not need to reload every time you enter a command

***And finally a fun final objective for the hardcore developers!*** :ok_hand: 
1. Add the following functionality whenever someone starts a command with `sudo`:
    - Ask for a password to run the command
    - If this is the first time the user does it:
        - Ask to create a password
        - Ask to confirm the password
        - Go back to asking for a password to run the command
    - Whatever password is typed, it can not show the typed characters (either show nothing, or asterisks)
    - Then check if password is correct
    - If not:
        - Display wrong password message
        - Let user retype password (for up to three times)
        - If they fail three times in a row, lock sudo commands for 5 minutes (also give feedback about it being locked if the user tries to use them)
    - If yes: 
        - Execute command
        - Put sudo in an unlocked state for 5 minutes (a.k.a. you don't need password to sudo for 5 minutes)
        
[Go back](../)