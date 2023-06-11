aws cloudformation validate-template --template-body file://IAM_ROLE_3.1.1.yaml
aws cloudformation create-change-set --stack-name myrole101 --change-set-name first-change-set101 --change-set-type UPDATE --template-body file://IAM_ROLE_3.1.2_custompolicy.yaml --capabilities CAPABILITY_NAMED_IAM
aws cloudformation create-stack --stack-name myrole101 --template-body file://IAM_ROLE_3.1.1.yaml --capabilities CAPABILITY_NAMED_IAM

list roles - aws iam list-roles
get role - aws iam get-role --role-name MyRole
aws cloudformation describe-stacks --stack-name myrole101

aws iam simulate-principal-policy --policy-source-arn arn:aws:iam::YOUR_ACCOUNT_ID:role/Role1 --action-names "iam:CreateRole" "iam:ListRoles" "iam:SimulatePrincipalPolicy" "ec2:DescribeImages" "ec2:RunInstances" "ec2:DescribeSecurityGroups"
aws sts assume-role --role-arn arn:aws:iam::199055471403:role/MyRole301 --role-session-name tp

aws s3api list-buckets
aws s3 cp local_file.txt s3://bucket_name/path/to/destination_file.txt
