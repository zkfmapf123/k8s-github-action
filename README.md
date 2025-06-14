# K8S Github Action Runners

## ...

- [x] Github Action use K8S
- [ ] 요청 시 Action Pod / Node Scale-out
- [ ] Github Action 병렬처리
    - [ ] Karpenter 깊게 이해하기
    - [ ] Github Action 요청이 많을때 자체적으로 Action 이 늘어날순없을까? ( Action : Pod = 1: 1 )
    - [ ] Action Deployment를 Replica를 늘리면 Karpenter가 자체적으로 늘어나게 할 수 있을까?

## Environments

- EKS
- Node Spec (t3.small)
    - 2 CPU
    - 2 MEM
- Karpenter

## Namespace / Secret 생성

```sh
kubectl create namespace action

kubectl create secret generic github-runner-secret \
  --namespace action \
  --from-literal=token=YOUR_GITHUB_TOKEN
```

## Karpetner 설정

- ttlSecondsAfterEmpty: 30 ## 인스턴스가 비워지면 30초후 삭제

## 설정방법 (Action Runner)

![1](./public/1.png)

![2](./public/2.png)

![3](./public/3.png)
- Secret에 토큰 저장하기

![4](./public/4.png)
![5](./public/5.png)

