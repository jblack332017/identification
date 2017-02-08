#! etc/python/
import os 
import subprocess
import shutil
import sys

number = sys.argv[1]

if os.path.isdir("blastdb"+number):
	shutil.rmtree("blastdb"+number)
if os.path.isdir("blastOutput"+number):
	shutil.rmtree("blastOutput"+number)
for file in os.listdir("inputFastas"+number):
	print file
	if os.path.isdir("blastdb"+number):
		subprocess.call("./blast.sh "+file+" "+number, shell=True)
	else:
		os.makedirs("blastdb"+number)
		subprocess.call("./makeBlastDB.sh "+file+" "+number, shell=True)
		os.makedirs("blastOutput"+number)
