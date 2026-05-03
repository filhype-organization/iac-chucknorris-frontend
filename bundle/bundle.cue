// bundle.cue — Timoni Bundle pour le déploiement GitOps chuck-norris-frontend.
//
// Ce fichier est la source de vérité pour le déploiement du frontend en production.
// Le job CI update-iac met à jour le tag image automatiquement.
// Le CronJob timoni-runner-frontend (namespace timoni-system) applique ce bundle toutes les 2 minutes.
bundle: {
	apiVersion: "v1alpha1"
	name:       "chuck-norris-frontend"
	instances: {
		"chuck-norris-frontend": {
			module: {
				url:     "oci://registry-1.docker.io/leeson77/chuck-norris-frontend-timoni"
				version: "latest"
			}
			namespace: "chuck-norris"
			values: {
				image: {
					tag: "b41ee6c" // CI:frontend updates this line automatically — do not edit manually.
				}
				app: {
					apiUrl:   "https://chuck.filhype.ovh"
					authUrl:  "https://dev-lesson.eu.auth0.com"
					clientId: "4LbdqWChDwptSbOBz4ljZ8Le7sYDLZPr"
				}
			}
		}
	}
}
