#!/bin/bash

if [ $# -ne 0 ]; then
    FNAME=$1
else
    FNAME=NewProject
fi

DIR=$(cd $(dirname $0); pwd)

cd DIR
echo $DIR
mkdir $FNAME
cd $FNAME
mkdir css; mkdir js

HTML=`cat << EOF
<!DOCTYPE html><html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<script src="js/code.js"></script>
<title>NewProject</title>
</head>
<body>
</body>
</html>
EOF
`
CSS=`cat <<EOF
html{margin:0px;}
body{margin:0px;}
EOF
`

echo $HTML > index.html
echo $CSS > css/style.css
type > js/code.js
type > image

if [ -d ../${FNAME} ]; then
    SUCCESS="Success to make new project. Name is ${FNAME}."
    echo -e "\e[34m ${SUCCESS} \e[m"
else
    ERROR="Failed to make new project."
    echo -e "\e[31m ${ERROR} \e[m"
fi