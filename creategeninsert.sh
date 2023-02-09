cp ./runscriptfile.sh ./geninsertdbc.sh
cat <<< '
#!/bin/sh

# -t Table Name eg. -tAUTOSCRIPT
# -w Where Clause eg. -w"AUTOSCRIPT = 'TEST'"
# -f File Name                      

# Reset arguments just in case you ran the script earlier.
arg1=""
arg2=""
arg3=""
arg4=""
arg5=""
arg6=""
arg7=""
arg8=""
arg9=""
arga=""
argb=""
argc=""
argd=""
arge=""
argf=""
argg=""
argh=""
argi=""
argj=""
argk=""

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

if [ "$*" != "" ]
then
  arg6=$1
  shift
fi

if [ "$*" != "" ]
then
  arg7=$1
  shift
fi

if [ "$*" != "" ]
then
  arg8=$1
  shift
fi

if [ "$*" != "" ]
then
  arg9=$1
  shift
fi

if [ "$*" != "" ]
then
  arga=$1
  shift
fi

if [ "$*" != "" ]
then
  argb=$1
  shift
fi

if [ "$*" != "" ]
then
  argc=$1
  shift
fi

if [ "$*" != "" ]
then
  argd=$1
  shift
fi

if [ "$*" != "" ]
then
  arge=$1
  shift
fi

if [ "$*" != "" ]
then
  argf=$1
  shift
fi

if [ "$*" != "" ]
then
  argg=$1
  shift
fi

if [ "$*" != "" ]
then
  argh=$1
  shift
fi

if [ "$*" != "" ]
then
  argi=$1
  shift
fi

if [ "$*" != "" ]
then
  argj=$1
  shift
fi

if [ "$*" != "" ]
then
  argk=$1
  shift
fi

cd ..

pathToScript=`dirname %0`
. $pathToScript/commonenv.sh

../java/jre/bin/java -Xmx5G -classpath .:./classes:$MAXIMO_CLASSPATH psdi.tools.GenInsertDbc $arg1 $arg2 $arg3 $arg4 $arg5 $arg6 $arg7 $arg8 $arg9 $arga $argb $argc $argd $arge $argf $argg $argh $argi $argj $argk

exit $?' > geninsertdbc.sh