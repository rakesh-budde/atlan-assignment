**Architecture:**

Configured a frontend and 2 backend applications using deployments with RollingUpgrade strategy. Configured mongo for db and rabbit mq for order processing. Configured secrets, configmaps to access backend and rabbitmq and rbac, pod security poclies on frontend application which is exposed to the internet.

Deployed nginx ingress controller and configured ingress for frontend application to access through web browser. Deployed metric server and configured hpa to scale front end and backend application horizontally.

Monitoring:
Deployed prometheus, grafana for monitoring using kube prometheus stack for better observability applications and infra.

Logging:
Configured ELK to check application logs using kibana UI.

