$eksctl create cluster --region=us-east-1 --zones=us-east-1b,us-east-1d --managed=false 
$eksctl utils associate-iam-oidc-provider --cluster=extravagant-sculpture-1682130190
$eksctl utils associate-iam-oidc-provider --cluster=extravagant-sculpture-1682130190 --approve