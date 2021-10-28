kubectl create namespace qa
kubectl create namespace prod
kubectl get namespaces

kubectl -n qa apply -f curlpod.yaml
kubectl -n prod apply -f curlpod.yaml

kubectl -n prod apply -f web.yaml

kubectl -n prod apply -f block-other-namespace.yaml