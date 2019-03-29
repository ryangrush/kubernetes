DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl delete -f $DIR/secrets/app-secret.yml
kubectl delete -f $DIR/config-maps/nginx-config-map.yml
# kubectl delete -f $DIR/volumes/postgres-volume.yml
kubectl delete -f $DIR/services/nginx-service.yml
kubectl delete -f $DIR/services/postgres-service.yml
kubectl delete -f $DIR/services/rails-service.yml
kubectl delete -f $DIR/deployments/nginx-deployment.yml
kubectl delete -f $DIR/deployments/postgres-deployment.yml
# kubectl delete -f $DIR/jobs/setup-job.yml
kubectl delete -f $DIR/deployments/rails-deployment.yml
kubectl delete -f $DIR/ingresses/app-ingress.yml