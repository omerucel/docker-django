#!/bin/bash
exec gunicorn project.wsgi:application
