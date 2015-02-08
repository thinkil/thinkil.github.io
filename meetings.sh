#!/bin/bash

echo Think Illinois Meeting Adder
read -e -p "Meeting date (e.g. March 12, 2012): " MDATE
read -e -p "Meeting time (e.g. 3:00pm): " -i "10:30am" MTIME
read -e -p "Meeting location (e.g. 151 Loomis): " -i "222 Gregory Hall" MLOC
read -e -p "Meeting topic (e.g. space): " TOPIC
read -e -p "Meeting leader: " LEADER
read -e -p "Discussion date (e.g. March 16, 2012): " DDATE
read -e -p "Discussion time (e.g. 7:30pm): " DTIME
read -e -p "Discussion location (e.g. 151 Loomis): " DLOC

mv ./meetings.xml ./meetings.xml.bak1
touch ./meetings.xml
echo -e "<calendar>\n" >> ./meetings.xml
echo -e "<meeting>\n\t<topic>"$TOPIC"</topic>\n\t<leader>"$LEADER"</leader>\n\t<date>"$MDATE"</date>\n\t<time>"MTIME"</time>\n\t<location>"$MLOC"</location>\n</meeting>\n" >> ./meetings.xml
echo -e "<group>\n\t<date>"$DDATE"</date>\n\t<location>"$DLOC"</location>\n\t<time>"DTIME"</time>\n</group>\n" >> ./meetings.xml
tail -n +3 ./meetings.xml.bak1 >> ./meetings.xml