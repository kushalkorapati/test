ID=$(id -u)



VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR :: installation failed"
        exit 1
    else
        echo "installation sucess"
    fi
}