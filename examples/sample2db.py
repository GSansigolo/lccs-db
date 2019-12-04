#
# This file is part of Land Cover Classification System Database Model.
# Copyright (C) 2019 INPE.
#
# Land Cover Classification System Database Model is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.
#

"""Land Cover Classification System Model Exemple."""

import os
import sys

sys.path.append(os.path.abspath('.'))
sys.path.append(os.path.abspath('../'))

from lccs_db.models import db, LucClassificationSystem

class_systems = [
    {
        "system_name": "prodes",
        "authority_name": "INPE",
        "description": "Sistema de Classificacao do PRODES",
        "version": "1.0"
    },
    {
        "system_name": "deter A",
        "authority_name": "INPE",
        "description": "Sistema de Classificacao do Deter",
        "version": "1.0"
    },
    {
        "system_name": "TerraClass",
        "authority_name": "INPE",
        "description": "Sistema de Classificacao do TerraClass",
        "version": "1.0"
    },
    {
        "system_name": "MapBiomas",
        "authority_name": "INPE",
        "description": "Sistema de Classificacao do MapBiomas",
        "version": "1.0"
    },
    {
        "system_name": "MapBiomas",
        "authority_name": "INPE",
        "description": "Sistema de Classificacao do MapBiomas",
        "version": "1.0"

    }
]

if __name__ == '__main__':
    # Initialize SQLAlchemy Models
    uri = os.environ.get(
        'SQLALCHEMY_URI',
        'postgresql://postgres:mysecretpassword@localhost:5442/sampledb')
    db.init_model(uri)

    for class_system in class_systems:
        try:
            luc_system = LucClassificationSystem.get(system_name=class_system['system_name'])
        except BaseException:
            luc_system = LucClassificationSystem()
            luc_system.authority_name = class_system['authority_name']
            luc_system.description = class_system['description']
            luc_system.system_name = class_system['system_name']
            luc_system.version = class_system['version']
            luc_system.save()
