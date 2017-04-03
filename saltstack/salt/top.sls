base:
  '*':
    - system.commons
    # On AWS AMI, python 3.5 already installed
    # - system.python_from_source:
    - system.other_python
    - system.secrets_file
    - system.directory

  'minion_website':
    - node
    - nginx.ng
    - nginx.ng.config
    - nginx.ng.service
    - website.source_code
#   - website.secrets
    - website.nginx
    - website.gunicorn
    - website.django
    - website.refresh

  'minion_etl':
    - etl.source_code
    - etl.jenkins
    - etl.venv_requirements
    - etl.celery
