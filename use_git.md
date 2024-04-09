
1. Create github repo
2. Copy the URL for clonning the github repo
3. Visit the project folder where you want to clone the repo

4. Commands to follow
(Include Cloning, Commiting and pushing changes to the master branch)

	$ git clone URL
	
	$ git status

>> You can add the file or make changes as required in the repo
>> Important: add file to the stage changes of git

	$ git add any_file_you_modified_or_created_folder

>> Commit changes
	$ git commit -m "Added file"

>> Pushing changes

	$ git push -u origin master

// if this gives error change the pushing command

	$ git push origin main

// It will work
