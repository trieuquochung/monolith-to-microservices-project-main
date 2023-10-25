
kubectl delete deployment backend-user
kubectl delete services backend-user
kubectl delete deployment backend-feed
kubectl delete services backend-feed
kubectl delete deployment reverseproxy
kubectl delete services reverseproxy
kubectl delete deployment frontend
kubectl delete services frontend
## Apply env variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml 
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml