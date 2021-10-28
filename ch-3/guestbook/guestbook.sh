export K8S_GUESTBOOK_URL=https://raw.githubusercontent.com/kubernetes/examples/master/guestbook

kubectl create namespace guestbook-qa
kubectl create namespace guestbook-e2e
kubectl create namespace guestbook-production
kubectl get namespaces

kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml

kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl apply -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml

kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl apply -n guestbook-production -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml