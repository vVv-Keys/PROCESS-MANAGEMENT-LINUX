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


This script provides a set of tools for managing and monitoring processes on a Linux system. It allows users to perform various actions such as listing processes, viewing process details, monitoring resource usage, checking process dependencies, restarting processes, adjusting process priorities, and more.

## Features
```
- **List Processes**: View a list of running processes with their PIDs and names.
- **View Process Details**: Display detailed information about a specific process, including its PID, user, CPU usage, memory usage, and name.
- **Monitor Resource Usage**: Continuously monitor the CPU and memory usage of a specific process and receive notifications when usage exceeds specified thresholds.
- **Check Process Dependencies**: Verify if any dependencies required by a process are missing or not running.
- **Restart Process**: Terminate and restart a specific process.
- **Adjust Process Priority**: Change the priority of a process to adjust its CPU scheduling priority.
- **Interactive Mode**: Enter an interactive mode to perform multiple actions without restarting the script for each action.
```

## Installation

1. Clone the repository:

bash
git clone https://github.com/your-username/process-management-script.git

2. Navigate to the script directory:
cd process-management-script

3. Run the script:
```./main.sh [action] [pid]```

```Replace [action] with one of the available actions (e.g., list, details, monitor) and [pid] with the PID of the target process (if required).```

Step 4: Perform Actions
Choose an action from the list provided, such as:
- list: View a list of running processes.
- details: View detailed information about a specific process.
- monitor: Monitor the resource usage of a specific process.
- dependencies: Check if any dependencies required by a process are missing.
- restart: Restart a specific process.
- priority: Adjust the priority of a process.
- exit: Exit the interactive mode.

5. Provide PID (if required)

For actions that require a PID (Process ID), such as details, monitor, dependencies, restart, and priority, provide the PID of the target process when prompted.


6: Configuration
The script supports configuration via a config.conf file. You can customize settings such as CPU and memory usage thresholds in this file.
```If needed, you can customize settings such as CPU and memory usage thresholds in the config.conf file.```


Step 7: Explore Additional Features
Feel free to explore additional features and functionalities provided by the script, such as error handling, process grouping, resource usage trends, and more.

Step 8: Contribute (Optional)
If you have ideas, suggestions, or improvements, consider contributing to the project by opening an issue or submitting a pull request on GitHub.

# Future Enhancements

```
Error Handling: Implement more robust error handling to gracefully handle unexpected errors.
Process Grouping: Allow users to group related processes together for easier management.
Resource Usage Trends: Provide graphical visualization or trend analysis of process resource usage over time.
Remote Process Management: Extend the script to support managing processes on remote systems.
Integration with Monitoring Tools: Integrate the script with existing monitoring tools or frameworks.
```

# Contributions
Contributions are welcome! If you have any ideas, suggestions, or improvements, feel free to open an issue or submit a pull request.
