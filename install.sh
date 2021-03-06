#!/usr/bin/env bash

#####################################################################################
#                                                                                   #
# * Ubuntu APMinstaller v.1.5.2                                                     #
# * Ubuntu 18.04.1-live-server                                                      #
# * Apache 2.4.X , MariaDB 10.4.X, Multi-PHP(base php7.2) setup shell script        #
# * Created Date    : 2020/04/17                                                    #
# * Created by  : Joo Sung ( webmaster@apachezone.com )                             #
#                                                                                   #
#####################################################################################

echo "
 =======================================================

               < UAAI 설치 하기>

 =======================================================
"
echo "UAAI 설치 하시겠습니까? 'Y' or 'N'"
read YN
YN=`echo $YN | tr "a-z" "A-Z"`
 
if [ "$YN" != "Y" ]
then
    echo "설치 중단."
    exit
fi

echo""
echo "설치를 시작 합니다."

cd /root/UAAI/APM

chmod 700 APMinstaller.sh

chmod 700 /UAAI/adduser.sh

chmod 700 /UAAI/deluser.sh

#chmod 700 /UAAI/restart.sh

sh APMinstaller.sh

cd /UAAI

echo ""
echo ""
echo "UAAI 설치 완료!"
echo ""
echo ""
echo ""

echo "
 =======================================================

               < phpMyAdmin 설치 하기>

 =======================================================
"
echo "phpMyAdmin 설치 하시겠습니까? 'Y' or 'N'"
read YN
YN=`echo $YN | tr "a-z" "A-Z"`
 
if [ "$YN" != "Y" ]
then
    echo "설치 중단."
    exit
fi

echo""
echo "phpMyAdmin 설치를 시작 합니다."
cd /UAAI/APM

chmod 700 phpMyAdmin.sh

sh phpMyAdmin.sh

echo ""
echo ""
echo "phpMyAdmin 설치 완료!"
echo ""
echo ""
#설치 파일 삭제
rm -rf /UAAI/APM
echo ""
rm -rf /UAAI/install.sh
echo ""
exit;

esac
