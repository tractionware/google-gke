FROM buildpack-deps

LABEL "name"="deploy-to-google-gke"
LABEL "maintainer"="David Staheli"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Deploy to Google Kubernetes Engine"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="gray-dark"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
