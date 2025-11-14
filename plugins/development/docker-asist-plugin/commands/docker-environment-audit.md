This machine runs Docker containers and/or Docker infrastructure.

Audit its cybersecurity with focus on:
- Docker daemon configuration and socket permissions
- Container image vulnerabilities and provenance
- Container runtime security (AppArmor, SELinux, seccomp profiles)
- Network isolation and bridge configurations
- Volume mount security and bind mount risks
- Container privilege escalation risks (--privileged flag usage)
- Secret management practices
- Registry security and image signing
- Resource limits and DoS protection
- Docker API exposure and authentication
- Container escape vulnerabilities
- Base image update status
- Multi-stage build security
- Docker Compose file security issues
- User namespace remapping configuration

Do not remediate. However, you should document your findings in a detailed document written out to ~/ai-analysis. If it does not exist (the folder) create it to house the doc.
