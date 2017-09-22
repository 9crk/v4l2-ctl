cd v4l2-ctl
arm-hisiv300-linux-gcc -c *.c
arm-hisiv300-linux-g++ -c *.cpp -I../include/
cd ../libv4l2
arm-hisiv300-linux-gcc -c *.c -I ../include/
cd ../libv4lconvert
arm-hisiv300-linux-gcc -c *.c -I ../include/
rm ov5*.o
cd control
arm-hisiv300-linux-gcc -c *.c -I ../../include/
cd ../processing
arm-hisiv300-linux-gcc -c *.c -I ../../include/
cd ../../v4l2-ctl
rm v4l2-ctl.o
rm cx18-ctl.o
rm ivtv-ctl.o
arm-hisiv300-linux-g++ v4l2-ctl.cpp -o v4l2-ctl ./*.o ../libv4l2/*.o ../libv4lconvert/*.o ../libv4lconvert/control/*.o ../libv4lconvert/processing/*.o -I../include -lrt
mv v4l2-ctl ../v4l2-ctl.exe
