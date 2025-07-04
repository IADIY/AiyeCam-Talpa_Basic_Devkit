# AiyeCam-Talpa-DB Quick Start Tutorial

**AiyeCam-Talpa_Basic_Devkit** repository provides the Talpa_SDK and basic example code for developers. Please follow these instructions to set up your development environment.

For further applications that include abilities please visist our other repository: https://github.com/IADIY/AiyeCam-Talpa-AI_Model

For more information about the AiyeCam-Talpa series products, please visit: https://www.iadiy.com/ai-smart-camera

## SDK Overview

The AiyeCam-Talpa_devkit package requires two operating systems: **Ubuntu 22.04 or later** for building projects and **Windows 10 or later** for flashing the program into memory.

### Installing WSL on Windows

We recommend using the [Windows Subsystem for Linux (WSL)](https://www.microsoft.com/store/productId/9PDXGNCFSCZV?ocid=pdpshare) within your Windows environment and connecting to WSL using [Visual Studio Code (VSCode)](https://code.visualstudio.com/) for development.

---

## Build the Project - Under Ubuntu

* **Clone the repository** in your Ubuntu environment:
    ```
    git clone https://github.com/IADIY/AiyeCam-Talpa_devkit.git
    ```

* **Execute the bash script** to download the SDK and install the necessary tools:
    ```bash
    cd AiyeCam-Talpa_devkit
    bash install.sh
    ```

* **Enable or Disable Automatic Copy Commands**:

    For users utilizing **Windows Subsystem for Linux (WSL)**, we highly recommend enabling the automatic copy function. The commands below automatically copy the compiled binary file to your Windows environment.

    Open `Talpa_SDK/projects/createNBF.sh`. At the end of the file, you'll find the command lines shown below. Follow the instructions to assign your designated directory in Windows to the `WINDOWS_PATH` variable.

    If you're a non-WSL user or prefer not to use this function, please **comment out or remove** the following commands to disable automatic copying.

    ```
    WINDOWS_PATH=""
    printf "\n"
    cd ..
    cp HOST_v1.01a_60Hz.nbf $WINDOWS_PATH
    if [ "$?" != "0" ]; then
        printf "Copied file to ${WINDOWS_PATH} failed\n"
        exit
    else
        printf "Copied file to ${WINDOWS_PATH} success\n"
        current_date_time=$(date)
        echo "Done at: $current_date_time"
    fi
    ```

* **To build your project**:
    ```
    bash createNBF.sh
    ```
    After building, you should find the `.nbf` file under the `project` directory. Ensure it has been successfully moved to your Windows environment.

---

## Flash the Code to Memory

To flash the code to your memory, please follow these instructions to set up your Windows environment.

* Download the [`CH341A Driver`](https://www.iadiy.com/image/catalog/IADIY/products/camera-module/ai-camera-module/Download/CH341A_Driver_Win.zip) to your Windows OS.
* Download the [`SPI Flasher`](https://www.iadiy.com/image/catalog/IADIY/products/camera-module/ai-camera-module/Download/CH341A_Programmer.zip) to your Windows OS.

### For AiyeCam-Talpa-FPC

To flash the code to the memory on the AiyeCam-Talpa-FPC Extension Board, please follow these instructions and refer to the image below:

#### Step 1

Please **unmount the AiyeCam-Talpa-FPC** from the extension board.

#### Step 2

Follow the image below to **connect a CH341A Programmer** to the extension board.

![AI_SoC_FPC_Extension_Board_F](https://github.com/user-attachments/assets/88bdcff4-4811-4671-adcc-ddd691aeb6cd)

### For AiyeCam-Talpa-DB

#### Step 1

Please **connect the AiyeCam-Talpa-DB via your USB cable**.

#### Step 2

**Hold the reset button or turn the slide switch to the right side** to bring the CPU to the reset state (see below).

![RestPin](https://github.com/user-attachments/assets/cd7e11c7-6830-41a2-95a5-6ffd1ab94517)

### Flash the Code via CH341A Programmer

![Flash](https://github.com/user-attachments/assets/77ded1a3-bc78-4331-8e7a-b5de0db18c84)

1.  **Select the `.nbf` file** that was moved to your Windows system.
2.  **Check whether the CH341A programmer detects the memory.**
3.  **Click the `Program` icon** to flash the program into memory.

    * **For AiyeCam-Talpa-DB**:
        Release the reset button/pin to set the chip to the normal operation state.

    * **For AiyeCam-Talpa-FPC**:
        Mount the AiyeCam-Talpa-FPC to the extension board and power up the chip.

    ![AI_SoC_FPC_Extension_Board_FD](https://github.com/user-attachments/assets/00af8996-3cb4-45f3-91e6-175fbb33dc6a)
