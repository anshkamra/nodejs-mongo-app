# Installing Helm
cd /tmp
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > install-helm.sh
chmod u+x install-helm.sh
./install-helm.sh
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller

# Installing MongoDB using Helm chart with Persistent Volume:
helm install --name mongo --set mongodbRootPassword=AfODN3Rt55,mongodbUsername=root,mongodbPassword=AfODN3Rt55,mongodbDatabase=sample stable/mongodb

# Installing Ambassador Ingress Controller
helm install --name my-release stable/ambassador --version 1.1.0
