# qdl-termux-no-root
> [!CAUTION]
> **WARNING: This tool deals with low-level device partitions. Incorrect usage can permanently HARD BRICK your device. This tool is currently in BETA TESTING. I am not responsible for any damages, data loss, or bricked phones resulting from its use. Proceed at your own risk and with extreme caution. Always backup your boot and vbmeta partitions before making changes.**
> 

# 🚀 QDL-Termux: Non-Root Qualcomm EDL 9008 Flasher

**QDL-Termux** is a 100% Non-Root tool for flashing Qualcomm devices in **EDL 9008 Mode** using Termux and an OTG cable. No PC or Root access required.

# steps on how to use the tool

1. First install the tool from the steps below
2. Then reboot you target phone in to fastboot mode
3. Then use the [ADBify](https://play.google.com/store/apps/details?id=com.rv882.adbify) fom the playstore and run
```bash
fastboot oem edl
```
4. then a popup will apper asking to all ADBify to allow to access the usb device, press OK
5. And if you phone supports the function to reboot from fastboot to edl you screen will go black, if it goes black, congratulations, your phone is now in edl, and if it enters edl dont unplug you phone or else it will exit the edl mode
6. If it gives an error and fosent enter edl mode, then you have to firt power off you phone completely, then hold booth volume up and volume down buttons and while holding then connect the phone with your host phon
7. If even that doesn't work and the phone insted starts charging insted of staying black, you have to open the back of your phone, short your modal specific edl test points and immediately connect it to the host phone
8. !!caution!! olny try to short the points only if the other two methods failed and that is the only thing left, shorting wrong points or components can permanently damage your phone, so first research proparly befor doing anything
9. Im not responsible for any damages or bricked phones, use this at your own risk
10. After the phone is in edl, run **qdl** in termux
11. Then a termux-api popup will appear asking to allow access to the usb device, tap OK, and a text will apper showing the structure of the final flash command
12. Here is a [vidio](https://drive.google.com/file/d/1br08cobXPuxwtoIugEmmC6frifoYrG52/preview) showing how to make the final command, use this video to make the command, video credit goes to **repair a2z**
13. After the command it made, execute it in the termux
14. Then the script will handal the rest

---

# Guid To Install The Tool 👇👇

First install Termux and Termux:api from Fdroid or GitHub, dont use termux from playstore, that is a outdated version and it doesn't have the nessary pakages for the tool to run

# Give termux storage permission
```bash
termux-setup-storage
```
```bash
pkg update && pkg upgrade -y
```
# Install the tool and run the tool
```bash
curl -LO https://raw.githubusercontent.com/sameenataj427-collab/qdl-termux-no-root/main/qdl -LO https://raw.githubusercontent.com/sameenataj427-collab/qdl-termux-no-root/main/setup.sh && chmod +x qdl setup.sh && ./setup.sh && rm setup.sh
```
# Use the tool
```bash
qdl
```
# credits
the original file is from repair a2z, i just patched all the glitches it had after the new Termux updates 

For suggestions and bug reports please contact on sameenataj427@gmail.com. thank you
