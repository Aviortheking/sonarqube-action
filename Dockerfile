FROM sonarsource/sonar-scanner-cli:5

LABEL "com.github.actions.name"="SonarQube Scanner"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.3"
LABEL repository="https://github.com/Aviortheking/sonarqube-action"
LABEL homepage="https://github.com/Aviortheking/sonarqube-action"
LABEL maintainer="Aviortheking"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
