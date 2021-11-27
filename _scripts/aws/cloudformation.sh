#! bin/bash
aws cloudformation list-stacks

aws cloudformation list-stack-resources --stack-name <value>

aws cloudformation wait stack-create-complete --stack-name <value>
aws cloudformation wait stack-update-complete --stack-name <value>

aws cloudformation validate-template --template-body file://sampletemplate.json
aws cloudformation validate-template --template-body file://sampletemplate.yaml
