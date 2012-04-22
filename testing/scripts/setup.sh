
if [ -z "$LIBRESWANSRCDIR" ]
then
	if [ -f ../../umlsetup.sh ]
	then
	  LIBRESWANSRCDIR=`cd ../.. && pwd`
	else 
	  if [ -f ../../../umlsetup.sh ]
	  then 
	    LIBRESWANSRCDIR=`cd ../../.. && pwd`
	  fi
        fi  	
fi

if [ ! -f $LIBRESWANSRCDIR/umlsetup.sh ]
then
	echo Umlsetup not found at LIBRESWANSRCDIR=$LIBRESWANSRCDIR.
	echo Is LIBRESWANSRCDIR set correctly'?'
	exit 5
fi

LIBRESWANSRCDIR=`cd ${LIBRESWANSRCDIR}; pwd`
export LIBRESWANSRCDIR

FIXUPDIR=`cd ${LIBRESWANSRCDIR}/testing/scripts/fixups && pwd`
FIXUPDIR2=`cd ${LIBRESWANSRCDIR}/testing/klips/fixups && pwd`
TESTINGROOT=${LIBRESWANSRCDIR}/testing
UTILS=`cd ${TESTINGROOT}/utils && pwd`
NJ=${UTILS}/uml_netjig/uml_netjig

TESTSUBDIR=scripts



