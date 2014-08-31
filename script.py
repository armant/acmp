text_file = open("script.txt", "w")

for x in range(1, 457):
	text_file.write("New-Item -Path C:\Users\Arman\Dropbox\Coding\uss -Name %r.pas -ItemType File \n" % x) 

text_file.close()