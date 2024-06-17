helm repo add elastic https://helm.elastic.co
helm repo update
helm install elk-elasticsearch elastic/elasticsearch -f es-values.yaml --namespace elk --create-namespace
helm install elk-kibana elastic/kibana -f kibana-values.yaml -n elk
helm install elk-logstash elastic/logstash -f logstash-values.yaml -n elk
helm install elk-filebeat elastic/filebeat -f filebeat-values.yaml -n elk

# Login to kibana and create an index
