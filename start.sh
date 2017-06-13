#!/bin/bash
exec gunicorn project.wsgi:application --bind 0.0.0.0:80 --workers 3 --chdir /data/project
