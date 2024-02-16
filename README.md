# Yara-Detection-Lab
Idea for lab came from here: https://medium.com/@john.batshon/yara-threat-detection-lab-ab182962f0cc  

Make sure before starting this to create a tools directory first and go from there

This a YARA Detection Lab. The main goal of YARA is to detect and identify malware based on characteristics such as patterns and behaviors. To get the version of YARA you need in Kali, you will need to go to this link: https://github.com/VirusTotal/yara, and go to latest release of YARA and look at the link for the release. You will then type wget and the link to the address containing YARA to download it.   
![Yara install](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/dca89ca2-303c-4d54-9519-a971bd99b139)  

Next run the tar -xzvf v4.5.0.tar.gz command to unpack everything, then sudo apt update.  
Then you go to the yara-4.5.0 folder and run the sudo apt install -y build-essential libssl-dev libmagic-dev libtool make gcc pkg-config libprotobuf-dev command to unpack more. 
You then run the bootstrap.sh file and ./configure --enable-macho --enable-magic --enable-dex commands.  
You then will want to run the make -4 commmand and the sudo make install command afterwards. Lastly run the sudo ldconfig command to fully install YARA  

Next you will want to get yarGen by git cloning it
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/0bc2f631-87d2-4b02-8e0e-3cd047dee29d)

Next you will want to get arya by git cloning it
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/8a62585e-0267-4225-9abb-6a38b6ca640e)

Next you will to get the script for the lab by once again git cloning it. The script will be found in the labscript folder that gets added
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/16fbfdb4-14ed-4f0d-b61e-fba01e2d8a87)

Next run the lab.sh script to create the respective files while also taking note of where they will be created at from looking over the lab.sh script

First file to find is the kenobi.txt file, which would be located on the Linux Desktop. In the command terminal, go to the Desktop folder and type the strings ./kenobi.txt > kenobistring.txt command to create
the kenobi.strings.txt file to get the text from kenobi.txt
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/551d3ec1-ffb4-4141-ba99-c9dfbb34d4d4)

Next what you will want to do is get MD5, SHA1, SHA256 information from the kenobi.txt file
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/11b074a2-77e9-43f5-b570-cbf778df0261)

You will then want to create the first YARA rule with the respective MD5, SHA1, and SHA256 information like below. For $s2 add regex around star{warz}
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/fbf6fff7-941e-4d75-819c-b556c6336159)

Next run the sudo yara -m -s -r ~/Desktop/starwars.yara ~/ 2>/dev/null command. -m matches for files that comply with the rule. -s will display no warnings. -r stands for YARA rules. 
~/ will look for paths that apply to the rule. 2>/dev/null redirects errors to /dev/null
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/56384ae9-838a-4dd0-8c0a-8d273ac267a2)

Next you will want to is move on to the grievous.txt file and type the command strings ./grievous.txt > grievous_strings.txt to create the _strings file to get text from grievous.txt
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/7f914263-88c2-4d8a-b662-c65a6d35a963)

Next you will get the MD5, SHA1, and SHA256 information from the grievous.txt file
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/043b7a4e-31d5-4cb7-954f-fd1845f52361)

Then edit the starwars.yara file to include grevious.txt hashes
![image](https://github.com/JWT890/Yara-Detection-Lab/assets/95875505/aeaa3aad-48cc-4f55-a44a-72886a0ab983)



