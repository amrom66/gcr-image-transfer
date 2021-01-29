## 项目简介

该项目用于同步gcr的镜像到官方docker hub中，其原理为利用github action提供的外网服务器拉去gcr镜像，然后重新打上标签，再推送到官方docker hub中。

## 使用方法

修改images中的内容
```code
k8s.gcr.io/kube-proxy:v1.19.3=linjinbao66/kube-proxy:v1.19.3
k8s.gcr.io/kube-controller-manager:v1.19.3=linjinbao66/kube-controller-manager:v1.19.3
k8s.gcr.io/kube-scheduler:v1.19.3=linjinbao66/kube-scheduler:v1.19.3
k8s.gcr.io/kube-apiserver:v1.19.3=linjinbao66/kube-apiserver:v1.19.3
k8s.gcr.io/coredns:1.7.0=linjinbao66/coredns:1.7.0
k8s.gcr.io/pause:3.2=linjinbao66/pause:3.2
k8s.gcr.io/etcd:3.4.3-0=linjinbao66/etcd:3.4.13-0
k8s.gcr.io/metrics-server/metrics-server:v0.4.1=linjinbao66/metrics-server:v0.4.1
```

以`=`分割，前面是gcr镜像的全名，后面是新标签的全名。

## 取回本地

执行`load.sh`脚本，该脚本拉取docker hub的镜像并重新打标签为gcr标签。