DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

kubectl create -f $DIR/secrets/app-secret.yml
# kubectl create -f $DIR/config-maps/nginx-config-map.yml
# kubectl create -f $DIR/volumes/postgres-volume.yml
# kubectl create -f $DIR/services/nginx-service.yml
kubectl create -f $DIR/services/postgres-service.yml
kubectl create -f $DIR/services/rails-service.yml
# kubectl create -f $DIR/deployments/nginx-deployment.yml
kubectl create -f $DIR/deployments/postgres-deployment.yml
# kubectl create -f $DIR/jobs/db-migrate.yml
kubectl create -f $DIR/deployments/rails-deployment.yml
kubectl create -f $DIR/ingresses/app-ingress.yml