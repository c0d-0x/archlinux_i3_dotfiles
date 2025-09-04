# Author: c0d_0x
# Description: Global variable and functions
#
set -e
# colours
OK="$(tput setaf 2)[OK]$(tput sgr0)"
ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"
NOTE="$(tput setaf 3)[NOTE]$(tput sgr0)"
WARNING="$(tput setaf 166)[WARNING]$(tput sgr0)"
ACTION="$(tput setaf 6)[ACTION]$(tput sgr0)"
RESET=$(tput sgr0)

# Function to run a bash script
run_script() {
    # Check if script exists
    if [ ! -f "$1" ]; then
        echo $ERROR: "Script '$1' does not exist."
        return 1
    fi

    # Check if script is executable
    if [ ! -x "$1" ]; then
        echo $ERROR: "Script '$1' is not executable. Run 'chmod +x $1' to make it executable."
        return 1
    fi

    # Run the script
    source $1 # source the script inoder to read return values.
    sh "$1"
    # Capture the exit code of the script
    script_exit_code=$?

    # Return the exit code of the script (optional)
    return $script_exit_code
}
