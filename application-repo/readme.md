For Seperating the Environment we can create different Namespaces for different environment.

Kubectl create namespace <namespacename>
  
these are the deployement manifests that are being used in this Cluster for Stagging environment.

Three tier application with frontend, backend and a Mysql database is being used here.

For any further information you can contact aloktripathi008@gmail.com.

Deploy each manifest files using command kubectl apply -f <filename>
 1. Deploying MySQL:
  
kubectl apply -f mysql-configmap.yaml  
kubectl apply -f db-root-credentials-secret.yaml
kubectl apply -f db-credentials-secret.yaml
kubectl apply -f mysql-deployment.yaml

2. Backend:
kubectl apply -f backend-deployment.yaml

3. Frontend :
kubectl get services and copy the elb ip/name from the service for backend. Paste this value in server-uri:  # enternal ip of backend application 'Service' in backend-configMap.yaml file.

kubectl apply -f backend-configMap.yaml
kubectl apply -f frontend-deployment.yaml

check the url myapp.zentest.space
