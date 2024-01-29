
obs-up: grafana-up loki-up tempo-up kafka-up prometheus-up

obs-down: grafana-down loki-down tempo-down kafka-down prometheus-down

keycloak-start: keycloak-up

keycloak-stop: keycloak-down

grafana-up:
	@echo Instalando grafana
	helm install grafana grafana
loki-up:
	@echo Instalando loki
	helm install loki grafana-loki
tempo-up:
	@echo Instalando tempo
	helm install tempo grafana-tempo
kafka-up:
	@echo Instalando kafka
	helm install kafka kafka
keycloak-up:
	@echo Instalando keycloak
	helm install keycloak keycloak
prometheus-up:
	@echo Instalando prometheus
	helm install prometheus kube-prometheus

grafana-down:
	@echo Desinstalando grafana
	helm uninstall grafana
loki-down:
	@echo Desinstalando grafana
	helm uninstall loki
tempo-down:
	@echo Desinstalando grafana
	helm uninstall tempo
kafka-down:
	@echo Desinstalando grafana
	helm uninstall kafka
keycloak-down:
	@echo Desinstalando grafana
	helm uninstall keycloak
prometheus-down:
	@echo Desinstalando grafana
	helm uninstall prometheus