# Git_Comands
# Configure Git with your username 
git config --global user.name "Your Name"
# Configure Git with your  email
git config --global user.email "youremail@example.com"
# Initialize a new Git repository in your directory
git init

# Add all files to staging
git add .

# Commit with a message
git commit -m "Initial commit"

# Connect your local repository to a GitHub repo
git remote add origin https://github.com/username/repo-name.git

# Push to GitHub (main/master branch)
git push -u origin main

# Clone a repository from GitHub
git clone https://github.com/username/repo-name.git

# List all branches
git branch

# Create a new branch
git branch branch-name

# Switch to a branch
git checkout branch-name

# Create and switch to a new branch
git checkout -b new-branch

# Push the new branch to GitHub
git push -u origin new-branch

# Stage specific files
git add file1 file2

# Stage all files
git add .

# Commit changes
git commit -m "Commit message"

# Push commits to the remote repository
git push

# Fetch updates from the remote repository
git fetch

# Pull updates from the remote repository and merge them into your current branch
git pull

# Merge a branch into your current branch
git merge branch-name

# View the status of your working directory
git status

# View the changes made to files
git diff

# Unstage a file but keep the changes
git reset file-name

# Discard changes in a file
git checkout -- file-name

# Revert a commit
git revert commit-hash

# Delete a local branch
git branch -d branch-name

# Delete a remote branch
git push origin --delete branch-name
# In git bash or terminal 
# Check if you have an SSH key
ls -al ~/.ssh

# Generate a new SSH key if needed
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Add the key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Copy your SSH public key to GitHub
cat ~/.ssh/id_rsa.pub

git clone git@github.com:username/repo-name.git
cd repo-name
# Merge 3 sub branches to one main branch
# Rename the branch
git branch -M student

# Push to GitHub and set it as the main branch
git push -u origin student

# Create and Switch to the student1 Branch
git checkout -b student1

# Add Two Files in the student1 Branch
echo "This is file1" > file1.txt
echo "This is file2" > file2.txt

# Add, commit, and push
git add .
git commit -m "Add file1 and file2 to student1 branch"
git push -u origin student1

# Create the studentinfo Branch
git checkout student   # Switch back to the `student` branch
git checkout -b studentinfo

# Add Two Files in the studentinfo Branch
echo "This is info1" > info1.txt
echo "This is info2" > info2.txt

# Add, commit, and push
git add .
git commit -m "Add info1 and info2 to studentinfo branch"
git push -u origin studentinfo

# Create the studentevent Branch
git checkout student  # Switch back to the `student` branch
git checkout -b studentevent

# Add Two Files in the studentevent Branch
echo "This is student_file1" > student_file1.txt
echo "This is student_file2" > student_file2.txt

# Add, commit, and push
git add .
git commit -m "Add student_file1 and student_file2 to student branch"

git push -u origin studentevent


git push -u origin student
