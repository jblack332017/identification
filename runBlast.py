#! etc/python/
import os 
import subprocess
import shutil


if os.path.isdir("blastdb"):
	shutil.rmtree("blastdb")
if os.path.isdir("blastOutput"):
	shutil.rmtree("blastOutput")
for file in os.listdir("inputFastas"):
	print file
	if os.path.isdir("blastdb"):
		subprocess.call("./blast.sh "+file, shell=True)
	else:
		os.makedirs("blastdb")
		subprocess.call("./makeBlastDB.sh "+file, shell=True)
		os.makedirs("blastOutput")
