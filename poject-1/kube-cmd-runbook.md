To know how everything is running
#   kubectl cluster-info
information abt diff object in kubernetes
#   kubectl api-resources
to check version
#    kubectl version
to get cluster configuration 
#    kubectl config view
to get the name spaces
#    kubectl get all --all-namespaces
To get an Object and pull it accross the board
#   kubectl get pods --all-namespaces
Deploying a kubernetes pods {kubectl run <pod_name> --image <image_name:tag> }
#  kubectl get pods -n kube-system     : not no namespace is giving, it will create it in the default namespace
#     kubectl run nginx-pod --image nginx:latest
to check the details of the pod
#   kubectl describe pod nginx-pod
Exposing the pods via node pod service    {kubectl expose pod <pod_name>  --type=NodePort --port= --target-port= --name=}
You can expose deployment, service and pod follow by the name of what you are exposing
#    kubectl expose pod nginx-pod  --type NodePort --port 31000 --target-port 80 --name nginx-np-service
to see the exposed service
#   kubectl get service

to delete the pod
#   kubectl delete svc nginx-np-service

To start the kubelet on all servers i.e Master, Worker-1 and Worker-2 
ssh to all servers and restart 
#        systemctl restart kubelet


