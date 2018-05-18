#!/bin/bash

json={"\"name\"":"\"whoami\",\"cacls\"":1000,\"sleep\"":0,\"loops\"":20}

#curl -H "Content-Type: application/json" -X POST -d  $json https://qgep4cte1j.execute-api.us-east-1.amazonaws.com/stage562

#output=`aws lambda invoke --invocation-type RequestResponse --function-name tcss562 --region us-east-1 --payload "{"\"name\"":"\"whoami\",\"cacls\"":1000,\"sleep\"":0,\"loops\"":20}" /dev/stdout | head -n 1 | head -c -2 ; echo`

output=`aws lambda invoke --invocation-type RequestResponse --function-name tcss562 --region us-east-1 --payload "{"\"name\"":"\"whoami\",\"cacls\"":1000}" /dev/stdout | head -n 1` 
output=${output%?};
echo $output
exit
