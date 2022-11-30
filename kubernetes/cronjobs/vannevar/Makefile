# -------------------------------------------------------------------- #
# Deploy a Kubernetes CronJob based on this Docker image               #
# -------------------------------------------------------------------- #

kube-deploy:
	kubectl config use-context minikube
	kubectl apply \
		--filename deployment/idst-cj-namespace.yaml
	kubectl get namespaces --show-labels
	kubectl apply \
		--filename deployment/idst-cj-app.yaml \
		--namespace cj-vannevar-1-1
	kubectl get cronjobs --namespace cj-vannevar-1-1
	kubectl get pods --namespace cj-vannevar-1-1

kube-clean-delete:
	kubectl config use-context minikube
	kubectl get cronjobs --namespace cj-vannevar-1-1
	-kubectl delete \
		--filename deployment/k-cj-app.yaml \
		--namespace cj-vannevar-1.1
	-kubectl get pods --namespace cj-vannevar-1-1
	kubectl get pods --namespace cj-vannevar-1-1 | \
		grep -v NAME | \
		awk '{print $$1}' | \
		xargs kubectl delete pod --namespace cj-vannevar-1-1