


#is enough
# -I/usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/ -> stdarg,stddef
# -I/usr/include/linux/ -> stddef
# -I/usr\include\ -> inttypes
#  

################################################################################### works
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/python/message/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/python/packet/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/c/sf/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/java/net/tinyos/packet/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/java/net/tinyos/message/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/include\/linux\/ -I\/usr\/include\/ /g' src/prod/tools/tinyos/java/net/tinyos/tools/Makefile.am


################################################################################### include
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/message/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/packet/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/c/sf/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/packet/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/message/Makefile.am
#sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/9.2.0\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/tools/Makefile.am


################################################################################### include
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/message/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/packet/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/c/sf/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/packet/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/message/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/tools/Makefile.am



################################################################################### compiler version
sed -i 's/export GCC=gcc/export GCC=gcc-4.9/g' src/tinyos-main/support/make/extras/sim.extra
sed -i 's/GPP=g++/GPP=g++-4.9/g' src/tinyos-main/support/make/extras/sim.extra


################################################################################### BUILD FLAGS
#sed -i '/^COMPONENT=.*/i\
#CFLAGS+=-I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.4/include\
#CFLAGS+=-I/usr/include\
#PFLAGS+=-D_Float128=double\
#PFLAGS+=-D_BITS_FLOATN_H=0\
#PYTHON_VERSION=2.7\
#CLASSPATH="/usr/lib/java/tinyos.jar"\
#' src/tinyos-main/apps/Blink/Makefile\
#  src/tinyos-main/apps/RadioCountToLeds/Makefile\
#  src/tinyos-main/apps/RadioSenseToLeds/Makefile\
#  src/tinyos-main/apps/BaseStation/Makefile


find ./src/tinyos-main/apps -name "Makefile" -exec \
sed -i '/^COMPONENT=.*/i\
CFLAGS+=-I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.4/include\
CFLAGS+=-I/usr/include\
PFLAGS+=-D_Float128=double\
PFLAGS+=-D_BITS_FLOATN_H=0\
PYTHON_VERSION=2.7\
CLASSPATH="/usr/lib/java/tinyos.jar"'\
  {} \;


find ./src/tinyos-main/apps -name "Makefile" -exec \
sed -i 's/javac /javac -classpath $(CLASSPATH) /g'\
  {} \;


#sed -i 's/javac /javac -classpath $(CLASSPATH) /g'\
#  src/tinyos-main/apps/RadioCountToLeds/Makefile\
#  src/tinyos-main/apps/RadioSenseToLeds/Makefile


################################################################################### DEFINES

sed -i '/^module .*/i\
#define nop() __asm volatile("nop")\
#define bkpt() do {} while (0)\
' src/tinyos-main/apps/tests/Blink/BlinkC.nc











