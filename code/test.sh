#!/bin/bash
# NOTE : Quote it else use array to avoid problems #
FILES="./code/*"
failedTests="FAILED_SAMPLES:"
for f in $FILES
do
    echo "Processing $f file..."
    if [[ $f == *.bal ]]
    then
        #run ballerina comand and keep output
        balout=$(bal run $f)
        
        #read output file content
        filename=$(basename -- "$f")
        filename="${filename%.*}"
        filename="./code/${filename}.bash"

        fileout=$(cat $filename)
        
        #Validate the output with file content
        if [ "$balout" = "$fileout" ]; then
            echo "${f}-PASSED"
        else
            echo "${f}-FAILED"
            failedTests="${failedTests}${f}|"
        fi
    fi
    #echo $output
done

echo "==================================\n"
echo $failedTests
echo "==================================\n"