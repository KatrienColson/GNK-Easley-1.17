# Challenge: Terminal emulator

|Challenge Parameters  |Challenge Details              |
|:---------------------|:------------------------------|
|Repository Folder     |`5.terminal`                   |
|Challenge type        |`recap challenge`              |
|Duration              |`~3 days`                      |
|Deadline              |`29/08/2019 8h59`              |
|Deployment method     |`N/A`                          |
|Group composition     |`solo --help each other`       |


## Introduction
We're going to try to make a terminal emulator in our browser. This means that we're going to try to make our browser
window act like it **is** a terminal. 

### Setup
1. At the end of the exercise create a repository `Terminal` and push all your (final) files in there.
1. Follow the instructions step by step: commit & push at the end of every step.
1. Create `terminal.php` & `index.php`

**<details><summary>Fully explained instructions</summary>**

### Objectives
1. On `index.php` create a form with an input field
1. Use your awesome css skills, to make the whole screen look like a terminal
1. Create a class called `terminal` in the file `terminal.php`
1. Try to create a schematic of what the `terminal` class should be able to do 
1. Use javascript to submit the form when the 'enter' key is pressed
1. When a line of code is sent to `PHP` (with `POST`), make sure the following happens:
    - The line of code gets 'executed' (make up for yourself what commands exist and what they do)
    - The return message from executing the command gets saved (and echo'ed)
    - The line of code gets appended to the history of executed commands
    - The history gets saved to the `$_COOKIE` variable so the page always looks the same on reload
1. Next to that, make sure that:
    - The design makes it look like a terminal
    - It reacts like a terminal (for example, when new line requires a scroll, it does it automatically , without animation)
    - You can't make out the input field
    - A text cursor is constantly blinking
    
</details>


**<details><summary>OG Objectives</summary>**

### Objectives
1. On `index.php` emulate a terminal
1. Make sure it looks like a terminal
1. Create a class called `terminal` in the file `terminal.php`
1. Use the `terminal` class to:
    - Execute commands
    - Keep track of past commands
    - Give feedback to commands
    - Save a list of known commands
1. Make sure a text cursor is constantly blinking on the page

</details>

### Bonus objectives
1. Whatever happens when you press the up arrow in the terminal, should happen in the browser as well
1. Disable CTRL-V in javascript, only SHIFT-INSERT should work
1. Use `AJAX` instead of a post request so the page does not need to reload every time you enter a command
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
    - If yes: 
        - Execute command
        
[Go back](../)