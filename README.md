NOTE:  $ ls -la      :gives much more detailed list results. Better than just "ls"

Git
1) I created a repo from my github in browser.
2) I included a readme fyi.
3) From git bash
	<br />$ git config --list :shows the current user details.
	
4) Change the email
	<br />$ git config --global user.email "nate@ncterry.com"
	
5) View the current email:
	<br />$ git config --global user.email
	<br />nate@ncterry.com
	
6) Show the config help
	<br />$ git config --help

7) Move to directory with the code.

8) Initialize:
	<br />$ git init

9) Now we have our .git in the folder. If you want to STOP tracking this with git then use:
	<br />$ rm -rf .git 
	
10) Check this location, on it's git status:
	<br />$ git status
		On branch master

		No commits yet
		Untracked files:
		  (use "git add <file>..." to include in what will be committed)
				README
				myfirstprogram.bat
		nothing added to commit but untracked files present (use "git add" to track)
	--> We have these 2 files that are here, but have not been committed.
	
11) We are in are working directors, we can push to the staging area, then a final
	<br />push to the repository. This is good because you can selectively make that final
	<br />push so that the commits can show the step by step procedures that you have taken
	<br />when making this code. 
	
12) Add to staging area:
	<br />$ git add -A 					:Adds ALL
	<br />$ git add myfirstprogram.bat			:Adds just this file 
	:--> now if you run $ git status    then those files will be green instead of red. 
		They have been staged.
	
13) Remove files from staging area.
	<br />$ git reset myfirstprogram.bat 				:remove file from staging area
	<br />$ git reset						:remove all files from staging area.
	
	
14) Make the first total commit full procedure.
	<br />$ git add -A
	<br />$ git commit -m "Initial committ comment"
	<br />$ git status
	<br />$ git log		:show commit we just made
	<br />-----------------START---------------------------
	<br />&nbsp;&nbsp;&nbsp;EXAMPLES
	<br />$ git add -A
	<br />$ git commit -m "Initial commit"
	<br />&nbsp;&nbsp;&nbsp;	[master (root-commit) 95647b3] Initial commit
	<br />&nbsp;&nbsp;&nbsp;	2 files changed, 30 insertions(+)
	<br />&nbsp;&nbsp;&nbsp;	create mode 100644 README
	<br />&nbsp;&nbsp;&nbsp;	create mode 100644 myfirstprogram.bat
	<br />$ git status
	<br />&nbsp;&nbsp;&nbsp;	On branch master
	<br />&nbsp;&nbsp;&nbsp;	nothing to commit, working tree clean
	<br />$ git log
	<br />&nbsp;&nbsp;&nbsp;	commit 95647b37a0093bae80298ea6c27699bfede24cbb (HEAD -> master)
	<br />&nbsp;&nbsp;&nbsp;	Author: Nate Terry <nate@ncterry.com>
	<br />&nbsp;&nbsp;&nbsp;	Date:   Sat Jul 28 14:49:25 2018 -0600
	<br />&nbsp;&nbsp;&nbsp;	Initial commit
	<br />------------------END---------------------------
	
15) Now we need to clone a current repository, and place it in our local directory.
	<br />$ git clone <url> <where to clone>
	<br />$ example
	<br />$ git clone https://github.com/ncterry/scripts.git .
	<br />:period after = current local directory
	

---------------------Start------------------------
16) I just created a new folder in my local directory:	"scriptsClonedRepo"
	<br />$ git clone https://github.com/ncterry/scripts.git .
		<br />Cloning into '.'...
		<br />remote: Counting objects: 3, done.
		<br />remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
		<br />Unpacking objects: 100% (3/3), done.
		<br />--> so we pulled everything from the github repo that we created on github.
		
	<br />$ ls -la
		total 9
		drwxr-xr-x 1 terryn 1049089  0 Jul 28 14:58 ./
		drwxr-xr-x 1 terryn 1049089  0 Jul 28 14:56 ../
		drwxr-xr-x 1 terryn 1049089  0 Jul 28 14:58 .git/
		-rw-r--r-- 1 terryn 1049089 44 Jul 28 14:58 README.md
-------------------END--------------------------

17) View information about the remote repository
	$ git remote -v			:
	$ git branch -a			:
	
	
	$ git remote -v
		origin  https://github.com/ncterry/scripts.git (fetch)
		origin  https://github.com/ncterry/scripts.git (push)

	$ git branch -a
		* master
		  remotes/origin/HEAD -> origin/master		:red text
		  remotes/origin/master						:red text 
		  
18) Commit changes to code 
	$ git diff			:see whats different
	$ git status		:see status of local 
	$ git add -A
	$ git commit -m "Modified the function sexyFunc"
	
19) Then push	
	$ git pull origin master
	$ git push origin master
	
	------------------------START----------------------------------------------------------
	EXAMPLE
	$ git status			===============RED TEXT SHOWS WE HAVE NOT COMMITTED===========================================
		On branch master
		Your branch is up to date with 'origin/master'.

		Untracked files:
		  (use "git add <file>..." to include in what will be committed)
				myfirstprogram.bat		:NOTE RED TEXT = UNCOMMITTED
		nothing added to commit but untracked files present (use "git add" to track)

	$ git add -A			================ADD ALL LOCAL FILES TO COMMIT==========================================

	$ git status			================SEE THAT WE HAVE ADDED==========================================
		On branch master
		Your branch is up to date with 'origin/master'.
		Changes to be committed:
			(use "git reset HEAD <file>..." to unstage)
				new file:   myfirstprogram.bat    :NOTE GREEN TEXT = COMMITTED

	$ git commit -m "First commit to remote repo"		===========LOCALLY COMMIT===================
		[master 0528e74] First commit to remote repo
		1 file changed, 13 insertions(+)
		create mode 100644 myfirstprogram.bat
		
	-->Make sure that we are up to date with our remote repo
	$ git pull origin master
		From https://github.com/ncterry/scripts
		 * branch            master     -> FETCH_HEAD
		Already up to date.

	------------------------END----------------------------------------------------------
	NOTE: Had email set to private on github, had to set to public to be able to push.
	NOTE: Had been using another github account and had those permissions saved in Windows. Must remove:
		 I had this problem too but managed to solve it, 
		 the error is that ur computer has saved a git username 
		 and password so if you shift to another account the error 403 will appear. Below is the solution
				For Windows you can find the keys here:
					control panel > 
					user accounts > 
					credential manager > 
					Windows credentials > 
					Generic credentials
			Next remove the Github keys.


	