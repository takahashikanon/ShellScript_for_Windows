if [ $1 -gt 0 ]; then
    for ((i=1; i<=$1; ++i))
    do
        mkdir -p dir$i/dir$i$i
        cd dir$i/dir$i$i/
        touch file$i$i$i
    done
else
    echo Error
fi