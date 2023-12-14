ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR :: installation failed"
        exit 1
    else
        echo "installation sucess"
    fi
}

if [ ID -e 0 ]
then
    echo "you are a root user "
else
    echo "make sure that you are a root user"
    exit 1
fi

yum install mysql -y
VALIDATE  &>> LOGFILE