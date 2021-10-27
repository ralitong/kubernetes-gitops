export K8S_GUESTBOOK_URL=https://raw.githubusercontent.com/kubernetes/examples/master/guestbook
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-masterdeployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-masterservice.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slavedeployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl apply -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml