# 🗂️Get-ListOfFilesInPath | [Based on files extension] 
<div align="center">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/joaomacedx/Get-ListOfFilesInPath?style=flat" >
  <img alt="Made by João Macêdo" src="https://img.shields.io/badge/made%20by-João%20Macêdo-blue">
 </div>
<br>

## Description

This repository provides an efficient and versatile PowerShell solution for simplifying the task of searching for and listing files based on a specific extension within a directory and its subdirectories. With the goal of automating and streamlining this process with ease, this project was designed to save time and effort.

## Features

- **Comprehensive Recursion:** The solution is designed to recursively traverse a main directory and all its subdirectories, ensuring that no relevant files are left out.

- **Customizable Extension Selection:** Users can specify the desired file extension as a parameter, making the search highly flexible and adaptable to various needs.

- **Export to CSV Format:** After the search, the results are compiled in an organized manner and exported to a CSV file, providing easy visualization and integration with other tools and systems.

- **Optimized PowerShell Script:** The PowerShell code has been optimized to ensure efficient execution, minimizing processing time and system resource consumption.

- **User-Friendly:** Clear documentation and usage instructions are included in the repository to facilitate use, even for those with limited experience in PowerShell.

## Usage

To use this solution, follow these steps:

1. Clone or download this repository to your local machine.

2. Open a PowerShell terminal as an administrator.

3. Navigate to the project directory.

4. Open the `config.json` file and modify the "files-path" variable to the path where you want to search for files and the "files-extension" variable to the desired extension:

   ``` json
   {
     "files-path": "\\path\\to\\find\\files",
     "files-extension": ".xyz"
   }
   ```

5. Execute the Main.ps1 script:
    ``` powershell
    PS Disk:\Get-ListOfFilesInPath> .\Main.ps1
   ```
6. Once the search is complete, a CSV file containing the list of files will be generated in the project directory.
   
         Make sure to replace "\\path\\to\\find\\files" with the actual path where you want to search for files and ".xyz" with the desired file extension in the "config.json" section.
