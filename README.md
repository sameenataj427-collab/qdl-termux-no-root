# qdl-termux-no-root
> [!CAUTION]
> **WARNING: This tool deals with low-level device partitions. Incorrect usage can permanently HARD BRICK your device. This tool is currently in BETA TESTING. I am not responsible for any damages, data loss, or bricked phones resulting from its use. Proceed at your own risk and with extreme caution. Always backup your boot and vbmeta partitions before making changes.**
> 

# 🚀 QDL-Termux: Non-Root Qualcomm EDL 9008 Flasher

**QDL-Termux** is a 100% Non-Root tool for flashing Qualcomm devices in **EDL 9008 Mode** using Termux and an OTG cable. No PC or Root access required.

# steps on how to use the tool

1. First install and setup the tool from the steps below
2. Then reboot you target phone in to fastboot mode
3. Then use the ADBify fom the playstore and run
```bash
fastboot oem edl
```
4. then a popup will apper asking to all ADBify to allow to access the usb device, press OK
5. And if you phone supports the function to reboot from fastboot to edl you screen will go black, if it goes black, congratulations, you phone is now in edl, and if it enters edl dont unplug you phone or else it will wxit the edl mode
6. If it gives an error, then you have to firt power off you phone completely, tgen hold booth volume up and volume down buttons and while holding then connect tge phone with your host phon
7. If even that doesn't work and the phone insted starts charging insted of staying black, you have to open the back of your phone, short your modal specific edl test points and immediately connect it to the hist phone
8. !!caution!! olny try to short the points only if the other two methods failed and that is the only thing left, shirting wrong points or components can permanently damage your phone, so first research proparly befor doing anything
9. Im not responsible for any damages or bricked phones, use this at your own risk
10. After the phone is in edl, run **./qdl** in the termux-qdl-ni-root folder after running **chmod +x qdl**
11. Then a termux-api popup will appear asking to allow access to the usb device, tap OK, and a text will apper showing the structure of the final flash command
12. Here is a [vidio](https://drive.google.com/file/d/1br08cobXPuxwtoIugEmmC6frifoYrG52/preview) showing how to make the final command, use this video to make the command, video credit goes to **repair a2z**
13. After the command it made, execute it in the termux, make sure that you are in the termux-qdl-no-root folder
14. Then the script will handal the rest

---

## 🛠️ Installation & Setup

Follow these steps exactly to install and fix library errors automatically:
Install Termux and Termux:api from GitHub or Fdroid, don't ise Termux from playstore, its an older version and laks the nassacary pakages needed for the tool

# Give termux storage permission and update packages
```bash
termux-setup-storage
```
```bash
pkg update && pkg upgrade -y
```
# Install the tool and run the tool
```bash
pkg install git -y
```
```bash
git clone https://github.com/sameenataj427-collab/qdl-termux-no-root/tree/main
```
```bash
cd qdl-termux-no-root
```
```bash
chmod +x setup.sh
```
```bash
./setup.sh
```
```bash
./qdl
```
# credits
the original file is from repair a2z, i just patched all the glitches it had after the new updates 

For suggestions and bug reports please contact on sameenataj427@gmail.com. thank you
