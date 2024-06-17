1. **Frontend Accessibility**:
    - Issue: The frontend service is not accessible externally post-deployment.
    - Task: I have validated front end service through we browser and it was accessible. If it was not accessible th e possible reasons could be misconfiguration of ingress/controller/service/deployment. Validate the configuration, check logs, events to troubleshoot the issue.S

2. **Intermittent Backend-Database Connectivity**:
    - Issue: The backend services occasionally lose connection to the MongoDB cluster, causing request failures.
    - Task: I have not faced any connection issue with the DB. If it is intermittent keep an eye on the pod restarts and identify the load on the DB. Increase the memory/cpu resources if required. Or we can also configure primary and secondary replicas for DB for high availability.

3. **Order Processing Delays**:
    - Issue: Users report delays in order processing, suspecting issues with the RabbitMQ message queue.
    - Task: We can expect if multiple users add their orders to cart. It must be with the high load on the rabbitmq. Initially we can increase the cpu and memory resources of the rabbitmq if that is not sufficient we have scale it to handle more requests.

