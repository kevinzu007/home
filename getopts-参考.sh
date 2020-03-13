#!/bin/sh

while getopts :ab: name
do
    case $name in
       a) aflag=1
           echo OPTARG1 - $OPTARG
           ;;
       b) bflag=1
           bval=$OPTARG
           echo OPTARG2 - $OPTARG
           ;;
       ?) echo "USAGE???:`basename $0` [-a] [-b value]"
           echo varname???  $varname -- OPTARG???  $OPTARG
           exit 1
           ;;
    esac
done
if [ ! -z $aflag ] ; then
          echo   "option -a specified"
          echo "$aflag"
          echo "$OPTIND"
fi
if [ ! -z $bflag ] ; then
          echo   "option -b specified"
          echo "$bflag"
          echo "$bval"
          echo "$OPTIND"
fi
echo "here $OPTIND"
shift $(($OPTIND -1))
echo "$OPTIND"
echo " `shift $(($OPTIND -1))` "


