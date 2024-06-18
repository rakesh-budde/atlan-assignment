**Architecture:**

Configured a frontend and 2 backend applications using deployments with RollingUpgrade strategy. Configured mongo for db and rabbit mq for order processing. Configured secrets, configmaps to access backend and rabbitmq and rbac, pod security poclies on frontend application which is exposed to the internet.

Deployed nginx ingress controller and configured ingress for frontend application to access through web browser. Deployed metric server and configured hpa to scale front end and backend application horizontally.

Monitoring:
Deployed prometheus, grafana for monitoring using kube prometheus stack for better observability applications and infra.

Logging:
Configured ELK to check application logs using kibana UI.


**Deployment Process**

Deploy DB
```
kubectl apply -f phase1/db.yaml
```

Deploy RABBITMQ
```
kubectl apply -f phase1/rabbitmq.yaml
```

Deploy Frontend
```
kubectl apply -f phase1/front-end-web.yaml
```

Deploy Backend
```
kubectl apply -f phase1/backend1.yaml
kubectl apply -f phase1/backend1.yaml
```

Configure ingress controller(Ingress deployed from frontend manifest)
```
kubectl apply -f phase1/ingress-controller.yaml
```

Monitoring:
```
sh phase2/setup_monitoring.sh
```

HPA: (Metric servier is deployed as part of monitoring setup)
```
kubectl apply -f phase2/frontend-hpa.yaml
kubectl apply -f phase2/backend-hpa.yaml
```

Logging Setup:
```
sh phase2/elk/setup-elk.sh
```
