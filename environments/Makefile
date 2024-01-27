up: deploy

destroy: down

deploy :
	@echo Instalando pblgllgs ${ENV} environment
	helm install pblgllgs ${ENV}-env
down :
	@echo Desinstalando pblgllgs environment
	helm uninstall pblgllgs