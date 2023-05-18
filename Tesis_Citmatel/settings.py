"""
Django settings for Tesis_Citmatel project.

Generated by 'django-admin startproject' using Django 3.0.1.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.0/ref/settings/
"""

import os
from django.urls import reverse_lazy

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '+!*=oq431ze#qj^%sfyjv%#o09@5g_+jjy%3^^cio#r8c-)6wz'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True


ALLOWED_HOSTS = ["*"]



# Application definition

INSTALLED_APPS = [
    'SISGDDO',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'ProyectoBaseApp.apps.ProyectobaseappConfig',
    'notifications',
    'captcha',
    'tempus_dominus',
    'nested_admin',

    # NEW APPS ABEL
    'apps.base',  # Aplicacion basica con todas las definiciones generales del proyecto, nomencladores etc
    'apps.effectiveness',  # Eficacia
    'apps.licenses',  # Licencias
    'apps.complaints',  # Quejas
    'apps.iproperty',  # Propiedad Industrial
    ]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Tesis_Citmatel.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            os.path.join(BASE_DIR,'templates')
        ],
        # 'DIRS': [
        #     os.path.join(BASE_DIR,'react/build')
        # ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'ProyectoBaseApp.my_context_processor.notifications',
                # 'ProyectoBaseApp.my_context_processor.user_app',
            ],
        },
    },
]

WSGI_APPLICATION = 'Tesis_Citmatel.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'SISGDDO',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    }
}
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql',
#         'NAME': 'sisgepo',
#         'USER': 'root',
#         'PASSWORD': 'mariadb',
#         'HOST': '127.0.0.1',
#         'PORT': '3306',
#     }
# }

DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'

# Password validation
# https://docs.djangoproject.com/en/3.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# White listing the localhost:3000 port
# for React
# CORS_ORIGIN_WHITELIST = (
#     'http://localhost:3000',
# )

# Internationalization
# https://docs.djangoproject.com/en/3.0/topics/i18n/

LANGUAGE_CODE = 'es'

from django.utils.translation import gettext_lazy as _
LANGUAGES = (
    ('es', _('Español')),
    ('en', _('Inglés')),
)

LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale'),
)


TIME_ZONE = 'America/Havana'

USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.0/howto/static-files/

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR,'staticfiles/')

# This is the directory where Django will look for static files.
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]

# ReactJS
# This is the directory where Django will look for static files.
# STATICFILES_DIRS = [
#     os.path.join(BASE_DIR, 'react/static'),
# ]

#Fotos de las reservas de cuadro

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, "media")

LOGIN_REDIRECT_URL = reverse_lazy('inicio')
LOGOUT_REDIRECT_URL = reverse_lazy('ce_login')
SESSION_COOKIE_AGE = 7200 #60min
SESSION_EXPIRE_AT_BROWSER_CLOSE = True
SESSION_SAVE_EVERY_REQUEST = True


# notificaciones
DJANGO_NOTIFICATIONS_CONFIG = {'USE_JSONFIELD': True, 'SOFT_DELETE': True}

# email
if DEBUG:
    EMAIL_HOST = 'localhost'
    EMAIL_HOST_USER = ''
    EMAIL_HOST_PASSWORD = ''
    EMAIL_PORT = 1026
    DEFAULT_FROM_EMAIL = 'comercial@yourproject.cu'

# import locale
# locale.setlocale(locale.LC_ALL, ('es_ES', 'UTF-8'))


SILENCED_SYSTEM_CHECKS = ['captcha.recaptcha_test_key_error']