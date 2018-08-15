#!/bin/sh

wget -q -O- "http://www.handbook.unsw.edu.au/vbook2018/brCoursesByAtoZ.jsp?StudyLevel=Undergraduate&descr=O"|grep $1|grep "\/$1.* <" -o|sed s/[^a-zA-Z0-9',& ']//g|sed s/html/' '/g >Courses

wget -q -O- "http://www.handbook.unsw.edu.au/vbook2018/brCoursesByAtoZ.jsp?StudyLevel=Postgraduate&descr=O"|grep OPTM|grep "\/$1.* <" -o|sed s/[^a-zA-Z0-9',& ']//g|sed s/html/' '/g >>Courses

sort -n Courses
