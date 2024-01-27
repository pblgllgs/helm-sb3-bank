
obs: grafana loki tempo kafka keycloak prometheus

grafana:
	@echo Generando nuevo ejecutable back
	helm install grafana grafana
loki:
	@echo Generando nuevo ejecutable back
	helm install loki grafana-loki
tempo:
	@echo Generando nuevo ejecutable back
	helm install tempo grafana-tempo
kafka:
	@echo Generando nuevo ejecutable back
	helm install kafka kafka
keycloak:
	@echo Generando nuevo ejecutable back
	helm install keycloak keycloak
prometheus:
	@echo Generando nuevo ejecutable back
	helm install prometheus kube-prometheus