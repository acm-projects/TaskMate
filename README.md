
<p align="center"> <img src="https://media.giphy.com/media/3oKHWtXlzTHeuVewtq/giphy.gif" /> </p>

<h1 align="center"> TaskMate </h1>

<div align="center"> Are you tired of simply crossing off the next item in your boring to-do list to make yourself feel better about the pile of work you offloaded to your always-growing to-do list? Well then, this app is for you. TaskMate is a social productivity app that will transform the way you go about completing your daily tasks, making your tasks seamlessly come together with your social life. Your to-do list will no longer be a sad, boring chore, but instead, it will evolve into a vibrant and engaging activity intertwined with the lives of your friends, family, and colleagues. With TaskMate, productivity becomes a rewarding shared experience, not a solitary slog, allowing you to turn your ‘to-dos’ into ‘ta-das.’
</div>

## MVP 💰

 -  User Account
	 -   User authentication with username and password
	 -   Personalization - ex: profile photo, personal info, etc.
    -   Add Friends 

 - Live Feed
	 -   Users are able to create an interactive to-do list that is displayed on a live feed for friends
	 -   Give users the ability to post a completed task with a picture of that task on their live feed
    -   Allow users to comment on posts on their feed

 -   Task Tracker
	 -   Ability to set tasks
	 -   Push-Notifications for whenever a task from the user’s to-do list is due soon
     -   Track how many to-do tasks were completed by the user each day
     -   Add categories for tasks (like education, work, home, etc)
     -   Allow users to notify their friends when a task is completed


      
 - Collaborative To-Do List
	 -   Allow for collaborative to-do lists that allows multiple users to work on one to-do list

## Stretch Goals 🙆
-   Add group project feature
-  Add chat feature for user’s friends 
-   Add motivating social/productivity challenges that users can join in on 
-   Create a stats/streaks system that tracks how consistent you are with completing tasks and display data on profile page
-   Add achievements and rewards as you progress through tasks

## Milestones 🏃‍♂️
|Week| Deliverables/Tasks |
|--|--|
| 1 | Meet team, set up development environment, explore ideas using similar apps |
| 2 & 3 | *Front end:* plan pages, create wireframes & code initial screens, get familiar with Flutter widgets, and start designing the UI for the user profile and to-do list. *Back end:* Firebase, create the Firebase project, and set up Firebase Authentication. Set up Firestore for user data. Implement user authentication and creation of user profiles in Firebase. Allow users to add friends. (Week 3)|
| 4 |*Front end:* 50% of app screens, *Back-end:* Implement the interactive to-do list in Firestore, including the ability for users to create, update, and delete tasks. Integrate with Front End|
| 5 | *Front end:* complete 75% of screens, *Back end:* Implement the live feed feature in Firestore. Enable users to post completed tasks with pictures and allow users to comment on these posts,Implement push notifications using Firebase Cloud Messaging (FCM). Notifications should be sent when a task is due soon. Continue to integrate with frontend as needed | 
| 6 & 7 | *Front end:* 100% of app screens, enhancing features/animations, *Back end:* Implement collaborative to-do lists in Firestore. Implement task categories in Firestore. Tasks should be categorizable |
| 8 & 9 | Implement functionality for tracking how many to-do tasks were completed by the user each day, finish integration of Front End and Back End|
| 10 | Practice presentation, final touches|
| 11 | Presentation Night!!|

## Tech Stack 💻
Wireframing: [Figma](https://www.figma.com/)  
Front-end: [Flutter](https://docs.flutter.dev/get-started/install)   
Back-end: Dart & [Firebase](https://firebase.google.com/)   
 
## Helpful Resources/Tutorials 📚
Installation & Set Up:  
[Flutter Installation for Mac OS](https://www.youtube.com/watch?v=fzAg7lOWqVE)    
[Installation guide pt 2 for Mac OS](https://www.youtube.com/playlist?list=PL82uaKJraAII8HJjA98l-M6qb_teI97kW)  
[Flutter Installation for Windows](https://www.youtube.com/watch?v=5JBlvjH8ChA)  
[Flutter Installation for Windows pt 2](https://www.youtube.com/watch?v=fDnqXmLSqtg)  
[Firebase w/ Flutter Set Up](https://www.youtube.com/watch?v=EXp0gq9kGxI&t=15s)  
[Install Android Studios](https://developer.android.com/studio/install?gclid=CjwKCAiAuOieBhAIEiwAgjCvcjwYSPTJuW9nn167xix8BzL8KzlDuCIwczz-JaqpBWLl1LyPWHwV1xoCWf0QAvD_BwE&gclsrc=aw.ds#mac)  
[VS Code](https://code.visualstudio.com/download)  
[Git](https://git-scm.com/downloads)  
[Xcode (for Mac users and the ios emulator and packages](https://apps.apple.com/us/app/xcode/id497799835?mt=12)


Tutorials:  
[Flutter Tutorial](https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ)  
[Figma Tutorial](https://www.youtube.com/watch?v=FTFaQWZBqQ8)  
[Dart Tutorial](https://www.youtube.com/watch?v=veMhOYRib9o&t=812s)  
[Git Tutorial](https://www.youtube.com/watch?v=USjZcfj8yxE)  
[Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)  


[How to implement push notifications with Flutter and Firebase Cloud Messaging](https://www.youtube.com/watch?v=AUU6gbDni4Q)  
[Working with Firebase CRUD and REST API's](https://www.youtube.com/watch?v=ErP_xomHKTw)

    

Quick Read :)
[How to be Successful in Projects](https://docs.google.com/document/d/18Zi3DrKG5e6g5Bojr8iqxIu6VIGl86YBSFlsnJnlM88/edit)

## GitHub Cheat Sheet ᛘ


| Command | Description |
| ------ | ------ |
| **cd "Task-Mate"** | Change directories over to our repository |
| **git branch** | Lists branches for you |
| **git branch "branch name"** | Makes new branch |
| **git checkout "branch name"** | Switch to branch |
| **git checkout -b "branch name"** | Same as 2 previous commands together |
| **git add .**| Finds all changed files |
| **git commit -m "Testing123"** | Commit with message |
| **git push origin "branch"** | Push to branch |
| **git pull origin "branch"** | Pull updates from a specific branch |
| get commit hash (find on github or in terminal run **git log --oneline** ) then **git revert 2f5451f --no-edit**| Undo a commit that has been pushed |
| **git reset --soft HEAD~** | Undo commit (not pushed) but *keep* the changes |
| get commit hash then **git reset --hard 2f5451f** | Undo commit (not pushed) and *remove*  changes |

## Developers 👥
Shrimoy Satpathy   
Jasper Yin    
Zubiya Syeda   
Ubaid Mohammed


Ridwan Amin - *Project Manager*  
Saman Attar - *Industry Mentor*
test