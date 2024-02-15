# Yara-Detection-Lab
Idea for lab came from here: https://medium.com/@john.batshon/yara-threat-detection-lab-ab182962f0cc  

This a YARA Detection Lab. The main goal of YARA is to detect and identify malware based on characteristics such as patterns and behaviors. To get the version of YARA you need in Kali, you will need to go to this link: https://github.com/VirusTotal/yara, and go to latest release of YARA and look at the link for the release. You will then type wget and the link to the address containing YARA to download it.   
![Yara install](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/dca89ca2-303c-4d54-9519-a971bd99b139)  

Next run the tar -xzvf v4.5.0.tar.gz command to unpack everything, then sudo apt update.  
Then you go to the yara-4.5.0 folder and run the sudo apt install -y build-essential libssl-dev libmagic-dev libtool make gcc pkg-config libprotobuf-dev command to unpack more. 
You then run the bootstrap.sh file and ./configure --enable-macho --enable-magic --enable-dex commands.  
You then will want to run the make -4 commmand and the sudo make install command afterwards. Lastly run the sudo ldconfig command to fully install YARA  


