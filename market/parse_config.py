import configparser
import os


def parse_config_section_base(config=None):
    if not config:
        return None
    if 'DJANGO_DB' not in config:
        return None

    databases = {
        'default': {
            key.upper(): config['DJANGO_DB'][key]
            for key in config['DJANGO_DB']
        }
    }
    # Эта секция приведена для примера, как расширять конфиг
    # Можно разделить TEST БД и PROD БД
    # if 'TEST_DB' not in config:
    #     databases.update({
    #         'test': {
    #             key.upper(): config['TEST_DB'][key]
    #             for key in config['TEST_DB']
    #         }
    #     })
    return databases


def parse_config(file_config='/etc/django_market.conf'):
    # Берём данные из конфига (по умлочанию /etc/flask_market.conf)
    # что бы не коммитить пароли
    # Пример конфига в flask_market.conf
    if not os.path.isfile(file_config):
        return None

    config = configparser.ConfigParser()
    try:
        config.read(file_config)
    except:
        return None

    databeses = parse_config_section_base(config)

    return {
        'DATABASES': databeses,
    }
