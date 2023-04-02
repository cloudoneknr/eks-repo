1. 	export AWS_PROFILE=devops
2. 	eksctl create cluster \
	--name demo-cluster \
	--region us-east-1 \
	--version 1.23 \
	--vpc-public-subnets subnet-9f36e1f9,subnet-413eb74f \
	--without-nodegroup
3. 	aws eks update-kubeconfig \
	--region us-east-1 --name demo-cluster
4. 	kubectl get svc --all-namespaces
5. 	eksctl create nodegroup \
  	--cluster demo-cluster \
  	--region us-east-1 \
  	--name demo-node-group1\
  	--node-type t3.medium \
  	--nodes 3 \
  	--nodes-min 2 \
  	--nodes-max 4 \
  	--ssh-access \
  	--ssh-public-key test-key

 
Deploy a sample application:

	create deployment file: deployments/eks-sample-deployment.yaml
		kubectl apply -f eks-sample-deployment.yaml
	View al resources in the app:
		kubectl get all -n eks-sample-app

		kubectl -n eks-sample-app describe service/eks-sample-linux-service

  Create NLB as loadbalancer service:

  curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.4.7/docs/install/iam_policy.json

  	aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam_policy.json

  


