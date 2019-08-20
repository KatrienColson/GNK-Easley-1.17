# Challenge: The basics of Git

|Challenge Parameters  |Challenge Details              |
|:---------------------|:------------------------------|
|Repository            |`N/A`                          |
|Challenge type        |`learning challenge`           |
|Duration              |`1.5 Days`                     |
|Deadline              |`24/05/2019`                   |
|Deployment method     |`N/A`                          |
|Group composition     |`solo - help eachother`        |



## Goals

At the end of this chapter, you should have the following technical competencies:

- [ ] Understand what Git is.
- [ ] Understand what GitHub is.
- [ ] Understand the difference between Git and GitHub.
- [ ] Understand the terms: initiate, push, pull, commit, branch, checkout, revert, origin, ...
- [ ] Able to make a remote repository.
- [ ] Able to make a local repository.



## Introduction



### What is Git?

> Git is a free and open source distributed **version control system**, designed to handle everything from small to very large projects with speed and efficiency.

### What is Github

> Github is an online platform *made on top of* Git. It gives you an online interface that has the same features as Git.
It also serves as a place to put your code. It is the biggest online developer community.



## Installing Git



### Instructions (Linux)

Copy and paste the three lines below into a terminal. Do it one by one to make it easier on yourself to resolve problems. It might be possible you have to enter your password.

```shell 
sudo apt update
sudo apt upgrade
sudo apt install git
```

***Congratulations!** Git is now installed, wasn't that easy?*



## Configuring Git



### Generating an SSH key

At a later stage, we'll be using Git on our computers to start no projects and use version control on them. It is important we can "post" those projects on Github. To do this in a proper fashion, we'll first have to establish a secure link between our laptops and our GitHub account! We'll be doing that by means of an SSH key.

To get started, follow these tutorials:
1. [Making an SSH key.](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
2. [Adding an SSH key to your Github account.](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

***Note:** In the past, this has proven difficult for some people. So be sure to help eachother out as much as possible! I will be holding the exercises hostage until everyone has completed the configuration!*



## Exercises

~~`ERROR: hostage demand not met`~~  

In anticipation of the hostages being released, checkout [this awesome website](https://learngitbranching.js.org/) to get a bit more comfortable with Git commands!



### Exercise 1

Look up or make a cheatsheet with the most-used Git commands. Compare this with the other people at your table. Shortly discuss the pro's and cons of the different cheatsheets, and then pick one you would like to use.


### Exercise 2

This will be a group exercise (steps below)! In short, we are going to make a repository (project), and have different people work on it!

* **Step 1**  
Go to your Github account and go to repositories: click `New`. Give the repository the name `git-q-and-a` and initialize it with a `README.md`.

* **Step 2**  
Click the button to `Clone/download`. Now copy the SSH URL (you can copy the HTTPS URL but then you will have more work). Navigate your way to the terminal and perform the following command: `git clone url-you-just-copied`.

* **Step 3**  
Open the `README.md` in a text editor (easiest is to use a non-terminal-based editor, every OS normally has one installed by default). Write a question you would like to ask one of your group members. Then save the file.

* **Step 4**  
Execute the following steps to push your edited `README.md` online:
    * `git add .`
    * `git commit -m ""` (enter you own commit message between the quotes)
    * `git push`

* **Step 5**  
Add the people in your group as collaborators of you repository. You can do this in the settings of your repository. Once you have done this, they will receive an e-mail, where they can accept your invitation to collaborate.

* **Step 6**  
Clone the repository (`pull` if you already cloned it once) of one of the other people in your group. Open their `README.md` and answer the question. Then write a new question yourself. **Communicate about who is going to `push` and `pull` what at which point to avoid merge conflicts!**

* **Step 7**  
Execute the following steps to push your edited `README.md` online:
    * `git add .`
    * `git commit -m ""` (enter you own commit message between the quotes)
    * `git push`

Repeat step 6 & 7 until every `README.md` contains 5 questions and answers!


## Conclusion

<p align="center"> 
    <img src="./assets/in-case-of-fire.jpg" alt="GIT OUT!">
</p>
