docker build -f docker/Dockerfile -t appmain:latest .

docker build -f docker/Dockerfile -t appinit:latest .

 kubectl exec -it pod/empty-dir-5cfdf7c57b-l9ks7 -c appmain -n demo-namespace -- /bin/sh

  kubectl exec -it pod/empty-dir-5cfdf7c57b-l9ks7 -c appinit -n demo-namespace -- /bin/sh