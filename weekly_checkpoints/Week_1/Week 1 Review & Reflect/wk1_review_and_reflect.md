# Week 1: Review & Reflect

### 1. Command Line:
* Q: What is a shell? What is "bash?"
* A: A shell is another word for bash, which both represent the command line console, or terminal.  It is a quick and efficient method for accessing many of the common operations which would normally be performed using the GUI.  However, it is able to do much deeper operations in many cases; like start the rails server.

* Q: In your own words, write what each of the following commands does:

```pwd``` : Print working directory.  Indicates which directory we are currently in.
```ls``` : List contents of directory, such as sub-directories or files.
```mv``` : Move a file.
```cd``` : Change directory.  Switch from one directory to the other.
```touch``` : Create a new file.
```mkdir``` : Make a new directory.
```rm``` : Remove a file or an empty directory.  Use rm -rf to remove dir. w/ contents.
```help``` : Lists the most common or powerful commands available.
```find``` : Find a file.
```grep``` : Find a file containing a certain string, like "code"

### 2. Git:
* Q: What is version control and why do developers use it?
* A: Version control allows us the ability to backup our work in a location easily accessible by us or others to share or in the event that we lose our local versions.  It is also helpful to revert to previous save points or rolling back the clock on testing work that didn't turn out as planned.

* Q: What is a commit? What are the best practices for commit messages?
* A: A commit is when we move our work to the repo.  It is good to commit early and often.  A good rule of thumb is, if you wonder if you should commit, you probably should.  It's important to have a good commit message, which is short and brief, yet very descriptive, such as "Scaffolded products and created CSV import/export pages/links/buttons."


* Q: What is a branch?
* A: If thinking of the project folder as a tree, the master branch might be analagous to the trunk.  From there, one or several branches could grow out of the trunk.  This provides us the ability to work separately from the master branch so that several people could be working on the same project at the time and each branch can be verified before merging back into the master.  This is where the tree analogy departs from the git hub model, in that github branches, unlike tree branches can be merged back into the master branch, or trunk.

* Q: What are the 3 stages of a git change and how do you move a file from one stage to the other?
* A: The three stages of the git process are Untracked, Staged, and Committed.  Untracked files are ones which are not tracked by Git, typically very new files.  These should be added to the Staged stage, by typing ```git add [file]``` or ```git add .``` for all.  This will allow it to be tracked, but not committed.  When files are untracked they will be red and when staged they will be green when entering ```git status``` in command line.  The final stage is when you are satisfied with your changes and would like to commit them to your main branch by typing ```git commit -m "added search methods for products"```


### 3. GitHub:
* Q: Write an explanation of and compare Git and GitHub to one another.
* A: Git is a version control or revision control tool we can use locally on our computer to backup our work and have save points and branches.  GitHub is a web service providing a GUI to view such versions, save points, and branches.

* Q: In your own words, write instructions to create, clone and update a repository.
* #### A: Create Repository:
* Simply create a folder (directory) on your local environment either through the GUI or, via command line by entering ```git mkdir [name]```.  Then switch into the new directory via```cd [dir_name]``` then add the new directory to Git by entering in command line ```git init```, ```git add .```, then commit the new files via ```git commit -m "[First Commit]"```.  

* #### A: Clone Repository:  
* First navigate into the local target directory for the destination cloned project (where you'd like to have the project cloned into).  Then check if there is already a git file there (there should never be two), by entering ```ls -la``` then go to GitHub and copy the url of the project and enter in the command line, by entering ```git clone [copied-url]```.  You will be prompted to enter your username and password, then enter ```ls``` to check that the folder has been added, then navigate into it, by entering ```cd [directory/file name]```.

* #### A: Update Repository:
* To update your repository, you should first be using testing or development branches, so you can isolate your changes until you are satisfied and ready to merge into the master project.  When ready to merge, you need to make a Pull Request, push the feature branch to GitHub, then navigate to that project in GitHub and compare the versions, then approve.  This is typically the workflow for collaborative projects, but when working on a solo project, you can usually just commit then push the branch to the master.

* Q: In your own words, write instructions to fork, (clone and update) a repository.
* A: Part of this question was answered above, unless I'm misunderstanding the question. Forking a repository is similar to cloning, except that when cloning, you actually save a distinct copy for yourself, which is able to go in its own direction.  Forking is also saving your own version, but as the source is changed, those changes will flow down to your version, too.  Also, you can push your changes to the master project, but need to first be approved by the author/owner of the original project folder.  For collaborative projects, it would typically be better to fork than to clone, because it is easier to track and merge the changes.  To fork a project, simply navigate to the source project on GitHub then click fork, and choose where you would like it to be forked to, then view it in your own account page.   

* Q: What is a pull request and how do you create and merge one?
* A: A pull request is when you would like to merge your changes into the master project.  This gives the author or owner an opportunity to compare the changes side by side before merging into the master or source project.  This can all be done by first pushing your local committed changes to your GitHub version, then visit the master or source version of the project on GitHub and click the button for a pull request.  Enter a message in the text area, and wait to be approved.

* Q: Why are pull requests preferred when working with teams?
* A: Pull requests are preferred when working with teams because the changes can be inspected before merging into the master/source project. This helps prevent errors.
