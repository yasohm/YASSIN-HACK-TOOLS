# YASSIN HACK TOOLS - Advanced Penetration Suite

![Version](https://img.shields.io/badge/version-2.0-blue.svg)
![License](https://img.shields.io/badge/license-GPL%20v3-green.svg)
![Platform](https://img.shields.io/badge/platform-Ubuntu-red.svg)

## 🚀 Overview

Yassin Hack Tools is a comprehensive penetration testing suite designed to transform your Ubuntu system into a powerful hacking machine. This tool provides an easy-to-use interface for installing and managing various security testing tools commonly used in ethical hacking and penetration testing.

## ⚠️ **IMPORTANT DISCLAIMER**

This tool is designed for **educational purposes** and **authorized security testing only**. Users are responsible for ensuring they have proper authorization before testing any systems. The developers are not responsible for any misuse of these tools.

## 🛠️ Features

### Core Tools Installation
- **Network Scanning**: Nmap for network discovery and security auditing
- **Password Attacks**: Hydra for brute force attacks
- **SQL Injection**: SQLMap for automated SQL injection detection
- **Exploitation Framework**: Metasploit Framework
- **Tunneling**: ngrok for secure tunneling

### Web Application Security
- **Fuzzing**: angryFuzzer for web application fuzzing
- **Vulnerability Scanner**: RED_HAWK for web application security testing
- **Phishing**: Weeman for web phishing attacks
- **SQL Injection**: viSQL for visual SQL injection testing

### Information Gathering
- **IP Geolocation**: IPGeoLocation for IP address tracking
- **Password Generation**: Cupp for custom password list creation
- **Social Media**: Instagram and Twitter bruteforce tools

### Additional Tools
- **Hash Cracking**: Hash-Buster for hash cracking
- **Network Detection**: D-TECT for network reconnaissance
- **Router Exploitation**: RouterSploit for router security testing

## 📋 Prerequisites

- Ubuntu Linux (recommended)
- Python 3.x
- Git
- Internet connection
- Sudo privileges

## 🚀 Quick Start

### Method 1: Using the Run Script (Recommended)
```bash
# Make the script executable
chmod +x run.sh

# Run the tool
./run.sh
```

### Method 2: Direct Python Execution
```bash
# Make the Python script executable
chmod +x yassin_HackTools.py

# Run the tool
python3 yassin_HackTools.py
```

## 📖 Usage

1. **Launch the tool** using one of the methods above
2. **Choose an option** from the menu:
   - `00`: Install all tools at once (recommended for first-time users)
   - `1-19`: Install individual tools
   - `99`: Exit the program

3. **Follow the prompts** to complete installation

## 🛠️ Available Tools

| Option | Tool | Description |
|--------|------|-------------|
| 00 | **Complete Suite** | Install all tools at once |
| 1 | **Nmap** | Network discovery and security auditing |
| 2 | **Hydra** | Brute force password attacks |
| 3 | **SQLMap** | Automated SQL injection detection |
| 4 | **Metasploit** | Exploitation framework |
| 5 | **ngrok** | Secure tunneling service |
| 6 | **Kali Nethunter** | Mobile penetration testing |
| 7 | **angryFuzzer** | Web application fuzzing |
| 8 | **RED_HAWK** | Web application security scanner |
| 9 | **Weeman** | Web phishing framework |
| 10 | **IPGeoLocation** | IP address geolocation |
| 11 | **Cupp** | Custom password list generator |
| 12 | **Instahack** | Instagram bruteforce tool |
| 13 | **TwitterSniper** | Twitter bruteforce tool |
| 14 | **Ubuntu** | Ubuntu environment setup |
| 15 | **Fedora** | Fedora environment setup |
| 16 | **viSQL** | Visual SQL injection tool |
| 17 | **Hash-Buster** | Hash cracking tool |
| 18 | **D-TECT** | Network reconnaissance tool |
| 19 | **RouterSploit** | Router exploitation framework |

## 📁 Installation Locations

Most tools are installed in your home directory (`~`) in their respective folders:
- `~/sqlmap/` - SQLMap
- `~/metasploit-framework/` - Metasploit
- `~/ngrok/` - ngrok
- `~/angryFuzzer/` - angryFuzzer
- `~/RED_HAWK/` - RED_HAWK
- `~/weeman/` - Weeman
- `~/IPGeoLocation/` - IPGeoLocation
- `~/cupp/` - Cupp
- `~/instahack/` - Instahack
- `~/TwitterSniper/` - TwitterSniper
- `~/viSQL/` - viSQL
- `~/Hash-Buster/` - Hash-Buster
- `~/D-TECT/` - D-TECT
- `~/routersploit/` - RouterSploit

## 🔧 Post-Installation

After installation, you can run individual tools from their respective directories:

```bash
# Example commands for some tools
cd ~/sqlmap && python3 sqlmap.py --help
cd ~/metasploit-framework && ./msfconsole
cd ~/RED_HAWK && php rhawk.php
cd ~/weeman && python3 weeman.py
```

## 🐛 Troubleshooting

### Common Issues

1. **Permission Denied**: Ensure you have sudo privileges
2. **Git Clone Failed**: Check your internet connection
3. **Python Import Errors**: Install missing dependencies with `pip3 install -r requirements.txt`
4. **Metasploit Installation Issues**: May take a long time, be patient

### Dependencies

The tool automatically installs most dependencies, but you may need to manually install some:

```bash
sudo apt update
sudo apt install -y git python3 python3-pip wget
```

## 📄 License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## ⚖️ Legal Notice

This tool is for educational and authorized testing purposes only. Users must comply with all applicable laws and regulations. The authors are not responsible for any misuse of these tools.

## 📞 Support

For support or questions, please open an issue on the project repository.

---

**Remember**: Always use these tools responsibly and only on systems you own or have explicit permission to test.
