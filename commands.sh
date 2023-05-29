aws cloudformation create-stack \
--stack-name mike-cuciti-net-blog \
--template-body file://src/hugo_site_infra.yml \
--parameters ParameterKey=CustomDomain,ParameterValue=mike.cuciti.net \
ParameterKey=HostedZoneId,ParameterValue=Z0659338PDW0B6N8ZAXG \
ParameterKey=SourceGithubRepository,ParameterValue=mcuciti/hugo_blog \
--capabilities CAPABILITY_NAMED_IAM

aws cloudformation update-stack \
--stack-name mike-cuciti-net-blog \
--template-body file://src/hugo_site_infra.yml \
--parameters ParameterKey=CustomDomain,ParameterValue=mike.cuciti.net \
ParameterKey=HostedZoneId,ParameterValue=Z0659338PDW0B6N8ZAXG \
ParameterKey=SourceGithubRepository,ParameterValue=mcuciti/hugo_blog \
--capabilities CAPABILITY_NAMED_IAM

aws cloudformation delete-stack --stack-name mike-cuciti-net-blog

aws cloudformation describe-stacks --stack-name mike-cuciti-net-blog --query Stacks[0].StackStatus
