#!/bin/bash

echo 'Installing gogs plugin'
pip install taiga-contrib-gogs
echo 'INSTALLED_APPS += ["taiga_contrib_gogs"]' >> /usr/src/app/taiga-back/settings/local.py
echo 'PROJECT_MODULES_CONFIGURATORS["gogs"] = "taiga_contrib_gogs.services.get_or_generate_config";' >> /usr/src/app/taiga-back/settings/local.py
python manage.py migrate taiga_contrib_gogs
