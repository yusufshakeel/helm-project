{{- define "name" -}}
{{ printf "%s" .Chart.Name | trunc 40 }}
{{- end -}}