export K8S_GUESTBOOK_URL=https://raw.githubusercontent.com/kubernetes/examples/master/guestbook

kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl delete -n guestbook-qa -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml

kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl delete -n guestbook-e2e -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml

kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-master-deployment.yaml
kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-master-service.yaml
kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-slave-deployment.yaml
kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/redis-slave-service.yaml
kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/frontend-deployment.yaml
kubectl delete -n guestbook-production -f ${K8S_GUESTBOOK_URL}/frontend-service.yaml

kubectl delete namespace guestbook-qa
kubectl delete namespace guestbook-e2e
kubectl delete namespace guestbook-production

kubectl get namespaces