#  LINUX BASH Process Management Script

```
██ ▄█▀▓█████▓██   ██▓  ██████ 
██▄█▒ ▓█   ▀ ▒██  ██▒▒██    ▒  
▓███▄░ ▒███    ▒██ ██░░ ▓██▄   
▓██ █▄ ▒▓█  ▄  ░ ▐██▓░  ▒   ██▒
▒██▒ █▄░▒████▒ ░ ██▒▓░▒██████▒▒
▒ ▒▒ ▓▒░░ ▒░ ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░
░ ░▒ ▒░ ░ ░  ░▓██ ░▒░ ░ ░▒  ░ ░
░ ░░ ░    ░   ▒ ▒ ░░  ░  ░  ░  
░  ░      ░  ░░ ░           ░  
              ░ ░ 
```
# Linux Process Management Script

This script provides a set of tools for managing and monitoring processes on a Linux system. It allows users to perform various actions such as listing processes, viewing process details, monitoring resource usage, checking process dependencies, restarting processes, adjusting process priorities, and more.

## Features:

- **List Processes:** Displays a list of running processes along with their PIDs and names.
- **View Process Details:** Allows viewing detailed information about a specific process.
- **Filter Processes:** Enables filtering processes based on criteria such as name, PID, or owner.
- **Check Process Dependencies:** Checks dependencies for a given process.
- **Monitor Process Resources:** Monitors CPU and memory usage of a specified process and sends notifications if thresholds are exceeded.
- **Log Process Activity:** Logs CPU and memory usage of a process to a file.
- **Restart Process:** Terminates and restarts a specified process.
- **Send Notification:** Sends a notification message.
- **Adjust Process Priority:** Modifies the priority of a process.
- **Interactive Mode:** Provides an interactive menu for easy navigation of available actions.

## Usage:

- Run the script without any arguments to enter interactive mode.
- Specify action and optional PID as command-line arguments for direct execution.

## Available Actions:

- **list:** List Processes
- **details:** View Process Details
- **dependencies:** Check Process Dependencies
- **monitor:** Monitor Process Resources
- **log:** Log Process Activity
- **restart:** Restart Process
- **priority:** Adjust Process Priority
- **exit:** Exit

## Notes:

- Make sure to configure thresholds and other settings in the configuration file (config.conf).
- Error handling is in place to guide users in case of invalid input or unavailable features.

Feel free to explore additional features and functionalities provided by the script, such as error handling, process grouping, resource usage trends, and more.

## Contributions
Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.

