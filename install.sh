sudo ~
# Check if wget is available
if command -v wget >/dev/null 2>&1; then
    echo "✅ wget is already installed at: $(command -v wget)"
else
    echo "❌ wget is NOT installed."
    echo "📦 Installing wget now..."

    # Update package list and install wget
    sudo apt update && sudo apt install -y wget

    # Check again after installation
    if command -v wget >/dev/null 2>&1; then
        echo "✅ wget has been successfully installed!"
    else
        echo "❌ Failed to install wget. Please check your network or package sources."
    fi
fi
wget https://www.iadiy.com/image/catalog/IADIY/products/camera-module/ai-camera-module/Download/Talpa_SDK.tar.gz
sudo apt install build-essential
sudo apt install make libmpc-dev
sudo apt install libftdi1-dev
sudo apt install python3 python3-pip
sudo pip3 install pyelftools

chmod -R 777 Talpa_SDK.tar.gz
tar -zvxf Talpa_SDK.tar.gz
chmod -R 777 Talpa_SDK/
