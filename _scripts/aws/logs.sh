#! bin/bash
aws logs describe-log-groups
aws logs describe-log-groups --log-group-name-prefix "/aws/lambda/"

aws logs filter-log-events --log-group-name <value>
--log-stream-names <value>
--log-stream-name-prefix <value>
--start-time <value> #The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. 
--end-time <value>
--filter-pattern <value>
aws logs describe-log-streams --log-group-name <value>