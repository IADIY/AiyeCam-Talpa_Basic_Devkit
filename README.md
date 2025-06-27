# AiyeCam-Talpa-DB Quick Start Tutorial


This repository ***AiyeCam-Talpa_devkit*** includes the Talpa_SDK and exmaple codes for developer. Please follow the instructions below to set up your developement environment.
## SDK Overview

AiyeCam-Talpa_devkit package requires two operating systems: **Ubuntu 22.04 or later** for building the project, and **Windows 10 or later** for flashing the program into memory.

### Installing WSL on Windows
It is recommended to use the [Windows Subsystem for Linux (WSL)](https://www.microsoft.com/store/productId/9PDXGNCFSCZV?ocid=pdpshare) within the Windows environment and to connect to WSL using [Visual Studio Code (VSCode)](https://code.visualstudio.com/) for development purposes.


## Build the Project - Under Ubuntu

- Clone the repository under your Ubuntu enviroment:
```
git clone https://github.com/IADIY/AiyeCam-Talpa_devkit.git
```

- Execute the bash script to download the SDK and install the necessary tools:
 ```bash
   cd AiyeCam-Talpa_devkit
   bash install.sh
```

- Enable or Disable the automatic copy commands

FOR THE USER who are using Windows Subsystem for Linux(WSL), it is recommended to enable the automatic copy function:
The command lines below copies the compiled binary file to your Windows environment automaticallly.

Open the `Talpa_SDK/projects/createNBF.sh`, at the end of the file, you might see the command lines as below, following the instruction to assign your desitnated directory in Windows to the variable `WINDOWS_PATH`.

If you are non-WSL user or user who are not using this function, please comment / remove the following commands to disable the automatic copy function.
```
WINDOWS_PATH=""
printf "\n"
cd ..
cp HOST_v1.01a_60Hz.nbf  $WINDOWS_PATH
if [ "$?" != "0" ]; then
    printf "Copied file to ${WINDOWS_PATH} failed\n"
    exit
else
    printf "Copied file to ${WINDOWS_PATH} success\n"
    current_date_time=$(date)
    echo "Done at: $current_date_time"
fi
```

- To build your porject
```
   bash createNBF.sh
```
After building the project, you should find the ```.nbf file``` under the ```project``` directory and ensure it has been moved to your Windows environment.

## Flash the code to the memory
To flash the code to your memory, please follow the instructions below to setup your Windows environment.
- Download [`CH341A Driver`](https://www.iadiy.com/image/catalog/IADIY/products/camera-module/ai-camera-module/Download/CH341A_Driver_Win.zip) to Windows OS.
- Download [`SPI Flasher` ](https://www.iadiy.com/image/catalog/IADIY/products/camera-module/ai-camera-module/Download/CH341A_Programmer.zip) to Windows OS.

### For AiyeCam-Talpa-FPC
To flash the code to the memory on the AiyeCam-Talpa-FPC Extension Board, please follow the instructions and see the image below:

#### Step 1
Please unmount the AiyeCam-Talpa-FPC from the extension board.

#### Step 2
Follow the image below to connect a CH341A Programmer to the extension board.

![AI_SoC_FPC_Extension_Board_F](https://github.com/user-attachments/assets/88bdcff4-4811-4671-adcc-ddd691aeb6cd)

### Step 3
Check whether the memory is correctly detected by the programmer.


### For AiyeCam-Talpa-DB
#### Step 1
Please connect the AiyeCam-Talpa-DB via your USB-cable. 

#### Step 2
Hold the **reset button or turn the slide switch to the right side** to bring the CPU to the reset state. (see below) 

### Run the CH341A Programmer
- 1 Select the `.nbf` file that was moved to your Windows system.

- 2 Check the wheter the CH341A programmer detects the memory.

- 3 Click the `Program` icon to flash the program into memory.


![Flash](https://github.com/user-attachments/assets/5e15695d-a692-41ab-886a-a76852c5658f)
