# Process Management Script

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

1. **List Processes**: Displays a list of running processes along with their PIDs and names.

2. **View Process Details**: Allows viewing detailed information about a specific process.

3. **Filter Processes**: Enables filtering processes based on criteria such as name, PID, or owner.

4. **Check Process Dependencies**: Checks dependencies for a given process.

5. **Monitor Process Resources**: Monitors CPU and memory usage of a specified process and sends notifications if thresholds are exceeded.

6. **Log Process Activity**: Logs CPU and memory usage of a process to a file.

7. **Restart Process**: Terminates and restarts a specified process.

8. **Send Notification**: Sends a notification message.

9. **Adjust Process Priority**: Modifies the priority of a process.

10. **Interactive Mode**: Provides an interactive menu for easy navigation of available actions.

## Usage:

- Run the script without any arguments to enter interactive mode.
- Specify action and optional PID as command-line arguments for direct execution.

### Available Actions:

- list: List Processes
- details: View Process Details
- dependencies: Check Process Dependencies
- monitor: Monitor Process Resources
- log: Log Process Activity
- restart: Restart Process
- priority: Adjust Process Priority
- exit: Exit

## Notes:

- Make sure to configure thresholds and other settings in the configuration file (config.conf).
- Error handling is in place to guide users in case of invalid input or unavailable features.


# Explore Additional Features
Feel free to explore additional features and functionalities provided by the script, such as error handling, process grouping, resource usage trends, and more.

# Contribute (Optional)
If you have ideas, suggestions, or improvements, consider contributing to the project by opening an issue or submitting a pull request on GitHub.

## Contributions
Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.

