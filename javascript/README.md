# Code:You SQLite Exercise - JavaScript Edition
This SQLite exercise has been developed for the purpose of giving Code:YOU students local practice with SQLite queries. This will, ideally, help cement SQLite before students go and implement it in their own projects!





notes:
- Done in typescript. Why?
- The served instruction page was done in vanilla HTML/CSS/JS to keep it easy to wrap your head around.
- Over documented/commented. Why? For inquiring minds! 

## Synopsis

## Installation

## Port Troubleshooting
The default local port for the API to run on is 8000 (`localhost:8000`). If you attempt to run the project and get an error stating that the port is already in use, you may need to change the port listed in the .env file. If you feel that this port should not be taken and an old instance of the API is still running, some troubleshooting may be needed.

It's possible that the port supplied in the .env file is already in use. It's also possible to shut down the API without allowing it to close the port that it is running on. If this is the case, manual intervention is needed. For the easiest path, resetting your machine will likely free up that port. However, there are also easy ways to release the port without restarting your computer. See below for Windows and Mac instructions for doing so. **The below examples assume that the port is set to 8000.**

### Mac
If an error comes up for the port already being in use on a Mac, and you **KNOW** you want to terminate the port:
- Open a terminal and enter the below command to check the process id (PID) assigned to port 8000.
  - > sudo lsof -i:8000
  - Note: if the port was altered in the .env file, replace 8000 above with the assigned port.
- Take note of the process ID (PID). This is what you will look for in Activity Monitor to identify the process to terminate.
- Open Activity Monitor and look in the list for the process ID (PID) in the previous step. The process name should be "node".
- Select this node process and then click the stop sign icon with an X on the top. Quit the program and attempt to start the API again.

### Windows
If an error comes up for the port already being in use on a Windows PC, and you **KNOW** you want to terminate the port:
- Open a terminal and enter the below command to check the process id (PID) assigned to port 8000.
  - > netstat -ano | findstr :8000
  - Note: if the port was altered in the .env file, replace 8000 above with the assigned port.
- Take note of the process ID (PID). This is what you will look for in Task Manager  to identify the process to terminate.
- Open Task Manager:
  - Make sure "More details" is expanded (bottom left)
  - Go to the "Details" tap and look in the list for the process ID (PID) in the previous step. The process name should be "node.exe".
	- **If you do not see a PID column, it can be added by right clicking on the columns, clicking "Select columns", and adding "PID".**
- Right click on this node.exe process and select "End Process". Confirm and attempt to start the API again.

## Inquiring Minds
While this project is intended for practice with SQL and SQLite, the hope is that inquiring minds go digging to see what is going on "under the hood". There are many concepts in this exercise that have likely not yet been covered including TypeScript, Node, Express, file management, and a few others. Ideally, when these concepts are covered in class, this project can also serve as a reference so you can see these topics in action!

NOTE! Most developers would consider this project to be "overly commented". This has been done due to the educational nature of the project. Usually, there is no need to comment on every line of code but, since we're learning, we'll let the comments be a little more verbose. 