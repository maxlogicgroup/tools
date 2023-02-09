cp /opt/IBM/SMP/maximo/tools/maximo/internal/runscriptfile.sh /opt/IBM/SMP/maximo/tools/maximo/internal/geninsertdbc.sh
cat <<< '
#!/bin/sh

# -t Table Name eg. -tAUTOSCRIPT
# -w Where Clause eg. -w"AUTOSCRIPT = "
# -f File Name                      

# Reset arguments just in case you ran the script earlier.
arg1=""
arg2=""
arg3=""
arg4=""
arg5=""

# Test up to 20 arguments and store them in $arg1 to $argk
if [ "$*" != "" ]
then
  arg1=$1
  shift
fi

if [ "$*" != "" ]
then
  arg2=$1
  shift
fi

if [ "$*" != "" ]
then
  arg3=$1
  shift
fi

if [ "$*" != "" ]
then
  arg4=$1
  shift
fi

if [ "$*" != "" ]
then
  arg5=$1
  shift
fi

cd ..

pathToScript=`dirname %0`
. $pathToScript/commonenv.sh

../java/jre/bin/java -Xmx5G -classpath .:./classes:$MAXIMO_CLASSPATH psdi.tools.GenInsertDbc $arg1 $arg2 $arg3 $arg4 $arg5

exit $?' > /opt/IBM/SMP/maximo/tools/maximo/internal/geninsertdbc.sh
