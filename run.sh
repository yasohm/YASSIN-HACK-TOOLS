#!/bin/bash

# YASSIN HACK TOOLS - Run Script
# Version: 2.0
# Author: Yassin
# License: GPL v3

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[+]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

print_error() {
    echo -e "${RED}[-]${NC} $1"
}

print_info() {
    echo -e "${BLUE}[i]${NC} $1"
}

# Function to check if running as root
check_root() {
    if [[ $EUID -eq 0 ]]; then
        print_warning "This script should not be run as root!"
        print_info "Please run as a regular user with sudo privileges."
        exit 1
    fi
}

# Function to check system requirements
check_requirements() {
    print_info "Checking system requirements..."
    
    # Check if running on Ubuntu/Debian
    if ! command -v apt &> /dev/null; then
        print_error "This tool is designed for Ubuntu/Debian systems."
        print_info "Please run this on a compatible system."
        exit 1
    fi
    
    # Check if Python 3 is installed
    if ! command -v python3 &> /dev/null; then
        print_warning "Python 3 is not installed. Installing..."
        sudo apt update && sudo apt install -y python3
    fi
    
    # Check if git is installed
    if ! command -v git &> /dev/null; then
        print_warning "Git is not installed. Installing..."
        sudo apt update && sudo apt install -y git
    fi
    
    print_status "System requirements check completed."
}

# Function to display banner
show_banner() {
    clear
    echo -e "${CYAN}"
    echo "     )        (   (   (       )                          "
    echo "  ( /(  (     )\ ))\ ))\ ) ( /(                          "
    echo "  )\()) )\   (()/(()/(()/( )\())                         "
    echo " ((_)((((_)(  /(_))(_))(_)|(_)\                          "
    echo "__ ((_)\ _ )\(_))(_))(_))  _((_)                         "
    echo "\ \ / (_)_\(_) __/ __|_ _|| \| |                         "
    echo " \ V / / _ \ \__ \__ \| | | .\` |                         "
    echo "  |_| /_/ \_\|___/___/___||_|\_|     )     )  (    (     "
    echo " ( /(  (       (    ( /(    *   ) ( /(  ( /(  )\ ) )\ )  "
    echo " )\()) )\      )\   )\()) \` )  /( )\()) )\())(()/((()/(  "
    echo "((_)((((_)(  (((_)|((_)\   ( )(_)|(_)\ ((_)\  /(_))/(_)) "
    echo " _((_)\ _ )\ )\___|_ ((_) (_(_())  ((_)  ((_)(_)) (_))   "
    echo "| || |_/_\(_|(/ __| |/ /  |_   _| / _ \ / _ \| |  / __|  "
    echo "| __ |/ _ \  | (__  | <     | |  | (_) | (_) | |__\__ \  "
    echo "|_||_/_/ \_\  \___|_|\_\    |_|   \___/ \___/|____|___/  "
    echo ""
    echo "                    YASSIN HACK TOOLS"
    echo "                 Advanced Penetration Suite"
    echo "                     Version 2.0"
    echo -e "${NC}"
    echo "============================================="
    echo "============================================="
    echo -e "${YELLOW}  MODIFIED BY YASSIN${NC}"
    echo ""
    echo -e "${GREEN}Ver: 2.0${NC}"
    echo "----"
    echo -e "${RED}ONLY FOR UBUNTU!${NC}"
    echo "----"
    echo "=========================================="
}

# Function to display disclaimer
show_disclaimer() {
    echo -e "${RED}"
    echo "============================================="
    echo "           ⚠️  IMPORTANT DISCLAIMER  ⚠️"
    echo "============================================="
    echo -e "${NC}"
    echo "This tool is designed for EDUCATIONAL PURPOSES and"
    echo "AUTHORIZED SECURITY TESTING ONLY."
    echo ""
    echo "Users are responsible for ensuring they have proper"
    echo "authorization before testing any systems."
    echo ""
    echo "The developers are not responsible for any misuse"
    echo "of these tools."
    echo ""
    echo -e "${YELLOW}By using this tool, you agree to use it responsibly${NC}"
    echo "and only on systems you own or have permission to test."
    echo ""
    echo -e "${RED}=============================================${NC}"
    echo ""
    
    read -p "Do you accept these terms? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "Exiting..."
        exit 0
    fi
}

# Function to check if Python script exists
check_script() {
    if [[ ! -f "yassin_HackTools.py" ]]; then
        print_error "yassin_HackTools.py not found in current directory!"
        print_info "Please make sure you're in the correct directory."
        exit 1
    fi
}

# Function to make script executable
make_executable() {
    if [[ ! -x "yassin_HackTools.py" ]]; then
        print_info "Making yassin_HackTools.py executable..."
        chmod +x yassin_HackTools.py
    fi
}

# Main execution
main() {
    show_banner
    show_disclaimer
    
    print_info "Starting Yassin Hack Tools..."
    
    # Check if not running as root
    check_root
    
    # Check system requirements
    check_requirements
    
    # Check if script exists
    check_script
    
    # Make script executable
    make_executable
    
    print_status "Launching Yassin Hack Tools..."
    echo ""
    
    # Run the Python script
    python3 yassin_HackTools.py
}

# Handle script interruption
trap 'echo -e "\n${YELLOW}[!]${NC} Script interrupted. Exiting..."; exit 1' INT

# Run main function
main
