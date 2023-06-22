{{- define "libpolicy.imagePullPolicy" -}}
    {{- $environment := default "production" .Values.environment }}
    {{- if not (eq $environment "production") }}
        {{- "IfNotPresent" }}
    {{- else }}
        {{- "Always" }}
    {{- end }}
{{- end }}
