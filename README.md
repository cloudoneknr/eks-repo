export AWS_PROFILE=devops
eksctl create cluster --name demo-cluster --region us-east-1 --version 1.23 --vpc-public-subnets subnet-9f36e1f9,subnet-413eb74f --without-nodegroup
aws eks update-kubeconfig --region us-east-1 --name demo-cluster
kubectl get svc --all-namespaces
