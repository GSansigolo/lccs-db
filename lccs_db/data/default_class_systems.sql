SET client_encoding = 'UTF8';

INSERT INTO lccs.class_systems (created_at, updated_at, id, authority_name, name, description, version)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 'INPE', 'Prodes', 'Sistema de Classificação Anual de Desmatamento', '1.0'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2, 'INPE', 'Deter-A', 'Sistema de Alertas Diarios de Desmatamento', '1.0'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 3, 'INPE', 'Deter-B', 'Sistema de Alertas Diarios de Desmatamento', '1.0'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 4, 'INPE', 'TerraClass', 'Mapa do Uso e Cobertura da Terra', '1.0'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 5, 'MapBiomas', 'MapBiomas', 'Mapa do Uso e Cobertura da Terra', '3.1'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 6, 'MapBiomas', 'MapBiomas', 'Mapa do Uso e Cobertura da Terra', '4.0'),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7, 'INPE', 'Brazil Data Cube', 'Mapa do Uso e Cobertura da Terra', '1.0');

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,1,'DESFLORESTAMENTO', 'Desflorestamento', '', '#bc0000', 1 ),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,2,'FLORESTA', 'Floresta', '', '#325a00', 1 ),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,3,'HIDROGRAFIA', 'Hidrografia', '', '#0000ff', 1 ),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,4,'NAO_FLORESTA', 'Não Floresta', '', '#aa00ff', 1),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,5,'NUVEM', 'Nuvem', '', '#00ffff', 1),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,6,'RESIDUO', 'Resíduo', '', '#d3ec95', 1);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 7, 'ALERTA', 'Alerta', '', '#bc0000', 2);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,8,'CICATRIZ_DE_QUEIMADA', 'Cicatriz de Queimada', '', '#d7191c', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,9,'CS_DESORDENADO', 'x', '', '#fdae61', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,10,'CS_GEOMETRICO', 'y', '', '#fed690', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,11,'DEGRADACAO', 'Degradação', '', '#ffffbf', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,12,'DESMATAMENTO_CR', 'z', '', '#d5eeb1', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,13,'DESMATAMENTO_VEG', 'w', '', '#abdda4', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,14,'MINERACAO', 'Mineração', '', '#6bb0af', 3),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,15,'CORTE_SELETIVO', 'Corte Seletivo', '','#ea633e', 3);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,16,'AGRICULTURA_ANUAL','Agricultura Anual','Áreas extensas com predomínio de culturas de ciclo anual, sobretudo de grão, com emprego de padrões tecnológicos elevados, tais como uso de sementes certificadas, insumos, defensivos e mecanização, entre outros', '#fff92f', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,17,'AREA_NAO_OBSERVADA','Área Não Observada', 'Areas that could not be interpreted by the presence of clouds at the moment of transit to acquire satellite images, in addition to the recently burned areas',
        '#ffffff', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,18,'AREA_SEM_INFORMACAO','Área sem Informação', '', '#b6b6b6',4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,19,'AREA_URBANA','Área Urbana', 'Manchas urbanas decorrentes da concentração populacional formadora de lugarejos, vilas ou cidades que apresentam infraestrutura diferenciada da área rural apresentando adensamento de arruamentos, casas, prédios e outros equipamentos públicos',
        '#fecfc3', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,20,'DESFLORESTAMENTO','Desflorestamento', '', '#dd1923', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,21,'FLORESTA','Floresta', '',
        '#31643b', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,22,'HIDROGRAFIA','Hidrografia', '', '#394ed2', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,23,'MINERACAO', 'Mineração', 'Áreas de extração mineral com a presença de clareiras e solos expostos, envolvendo desflorestamentos nas proximidades de águas superficiais.',
        '#c4c2bd', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,24,'MOSAICO_DE_OCUPACOES','Mosaico de Ocupações', ' Áreas representadas por uma associação de diversas modalidades de uso da terra e que devido à resolução espacial das imagens de satélite não é possível uma discriminação entre seus componentes. Nesta classe, a agricultura familiar é realizada de forma conjugada ao subsistema de pastagens para criação tradicional de gado.',
        '#ffffbf', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,25,'NAO_FLORESTA','Não Floresta', '',
        '#fa53a7', 4),
        (CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,26,'OUTROS', 'Outros', 'São áreas que não se enquadram nas chaves de classificação e apresentavam um padrão de cobertura diferenciada de todas as classes do projeto, tais como afloramentos rochosos, praias fluviais, bancos de areia entre outros.',
        '#631cb4', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,27,'PASTO_COM_SOLO_EXPOSTO','Pasto com Solo Exposto', 'Áreas que após o corte raso da floresta e o desenvolvimento de alguma atividade agropastoril, apresentam uma cobertura de pelo menos 50% de solo exposto', '#8a8c00', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,28,'PASTO_LIMPO','Pasto Limpo', 'Áreas de pastagem em processo produtivo com predomínio de vegetação herbácea, e cobertura de espécies de gramíneas entre 90% e 100%.',
         '#b0b246', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 29,'PASTO_SUJO','Pasto Sujo', 'Áreas de pastagem em processo produtivo com predomínio de vegetação herbácea e cobertura de espécies de gramíneas entre 50% e 80%, associado à presença de vegetação arbustiva esparsa com cobertura entre 20% e 50%.',
        '#eea7cb', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 30,'REFLORESTAMENTO','Reflorestamento', 'Áreas que após o corte raso foram reflorestadas com espécies exóticas com a finalidade comercial.',
         '#2be4ad', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 31,'REGENERACAO_COM_PASTO', 'Regeneração com Pasto',
        'Áreas que, após o corte raso de vegetação natural e o desenvolvimento de alguma atividade agropastoril, encontram-se no início do processo de regeneração da vegetação nativa, apresentando dominância de espécies arbustivas e pioneiras arbóreas. Áreas caracterizadas pela alta diversidade de espécies vegetais.', '#ffa425', 4),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 32,'VEGETACAO_SECUNDARIA', 'Vegetação Secundária',
        'Áreas que, após a supressão total da vegetação florestal, encontram-se em processo avançado de regeneração da vegetação arbustiva e/ou da arbórea ou que foram utilizadas para a prática da silvicultura ou agricultura permanente com uso de espécies nativas ou exóticas.', '#71ff92', 4);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,33, '1', 'Floresta', '', '#129912', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,34, '10', 'Formação Natural não Florestal', '', '#bbfcac', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,35, '14', 'Agropecuária', '', '#ffffb2', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,36, '22', 'Área não Vegetada', '', '#ea9999 ', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,37, '26', 'Corpo D água', '', '#0000ff', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP,38, '27', 'Não observado', '', '#d5d5e5', 5);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 39, '2', 'Floresta Natural', '', '#1f4423', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 40, '9', 'Floresta Plantada', '', '#935132', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 39, 33),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 40, 33);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 41, '11', 'Área Úmida Natural não Florestal', '', '#45c2a5', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 42, '12', 'Formação Campestre', '', '#b8af4f', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 43, '13', 'Outra Formação não Florestal', '', '#bdb76b', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 44, '32', 'Apicum', '', '#968c465', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 41, 34),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 42, 34),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 43, 34),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 44, 34);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 45,'PASTAGEM', 'Pastagem', '', '#ffd966', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 46,'AGRICULTURA', 'Agricultura', '', '#e974ed', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 47,'MOSAICO DE AGRICULTURA OU PASTAGEM', 'Mosaico de Agricultura ou Pastagem', '', '#ffefc3', 5);


INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 45, 35),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 46, 35),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 47, 35);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 45,'15', 'Pastagem', '', '#ffd966', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 46,'18', 'Agricultura','', '#e974ed', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 47,'21', 'Mosaico de Agricultura e Pastagem', '', '#ffefc3', 5);


INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 45, 35),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 46, 35),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 47, 35);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 48,'23', 'Praia e Duna', '', '#dd7e6b', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 49,'24', 'Infraestrutura Urbana', '', '#af2a2', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 50,'25', 'Outra área não Vegetada', '', '#ff99ff', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 51,'29', 'Afloramento Rochoso', '', '#ff8c00', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 52,'30', 'Mineração', '', '#8a2be2', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 48, 36),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 49, 36),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 50, 36),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 51, 36),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 52, 36);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 53,'31', 'Aquicultura', '', '#29eee4', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 54,'33', 'Rio, Lago e Oceano', '', '#0000ff', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 53, 37),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 54, 37);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 55,'3', 'Formação Florestal', '', '#006400', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 56,'4', 'Formação Savânica', '', '#32cd32', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 57,'5', 'Mangue', '', '#687537', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 55, 39),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 56, 39),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 57, 39);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 58,'19', 'Cultivo Anual e Perene', '', '#d5a6bd', 5),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 59,'20', 'Cultivo Semi-Perene', '', '#c27ba0', 5);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 58, 46),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 59, 46);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 60,'0', 'No-Data', '', '#000000', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 61,'1', 'Natural', '', '#269A26', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 62,'2', 'Anthropic', '', '#DB372C', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 63,'3', 'Water Bodies', '', '#3498db', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 64,'3', 'Sand', '', '#c2b280', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 65,'4', 'Non-Observed', '', '#f8f8f8', 7);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 66, '6', 'Forest Natural Formation', '', '#1e8449', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 67, '50', 'Non-forest Natural Formation', '', '#45b39d', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 66, 61),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 67, 61);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 68, '90', 'Agriculture', '', '#e67e22', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 69, '120', 'Forest Non-Natural Formation', '', '#117a65', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 70, '130', 'Pasture', '', '#ffdfaa', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 71, '140', 'Non-Natural Areas', '', '#283747', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 68, 62),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 69, 62),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 70, 62),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 71, 62);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 72, '7', 'Forest Amazon Biome', '', '#269A27', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 73, '11', 'Forest Cerrado Biome', '', '#117a66', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 72, 66),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 73, 66);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 74, '12', 'Cerradao', '', '#52be81', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 74, 73);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 75, '51', 'Savanna', '', '#b3eb3e', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 76, '62', 'Campestre', '', '#52be80', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 77, '73', 'Caatinga', '', '#82e0aa', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 78, '74', 'Pampa', '', '#239b56', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 79, '75', 'Restinga', '', '#76d7c4', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 80, '76', 'Apicum', '', '#17a589', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 81, '77', 'Mangue', '', '#117864', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 82, '78', 'Seasonal-Wetland', '', '#62ce90', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 83, '79', 'Wetland', '', '#62ce90', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 75, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 76, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 77, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 78, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 79, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 80, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 81, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 82, 67),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 83, 67);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 84, '52', 'Cerrado', '', '#b3ec3e', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 85, '53', 'Cerrado Rupestre', '', '#45b39e', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 86, '61', 'Vereda', '', '#2ecc71', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 84, 75),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 85, 75),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 86, 75);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 87, '91', 'Perenial', '', '#bb8fce', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 88, '96', 'Semi-perenial', '', '#c29ad2', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 89, '98', 'Single Crop', '', '#eb984e', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 90, '102', 'Double crop', '', '#d35400', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 87, 68),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 88, 68),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 89, 68),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 90, 68);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 91, '97', 'Sugarcane', '', '#cb8fce', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 91, 88);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 92, '99', 'Soy-Fallow', '', '#ff748c', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 93, '100', 'Cotton-Fallow', '', '#997379', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 94, '101', 'Maize-Fallow', '', '#d45510', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 92, 89),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 93, 89),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 94, 89);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 95, '103', 'Cotton-Soy', '', '#e59866', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 96, '104', 'Millet-Cotton', '', '#e5acb6', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 97, '105', 'Soy-Maize', '', '#af601a', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 98, '106', 'Soy-Millet', '', '#d68910', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 99, '107', 'Soy-Sunflower', '', '#f1c40f', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 100, '108', 'Soy-Cotton', '', '#811911', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 101, '109', 'Soy-Corn', '', '#813e11', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 95, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 96, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 97, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 98, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 99, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 100, 90),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 101, 90);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 102, '121', 'Secondary Vegetation', '', '#a9dfbf', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 103, '122', 'Forestry', '', '#82e0ab', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 102, 69),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 103, 69);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 104, '121', 'Rangeland', '', '#f5cba7', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 105, '122', 'Grassland', '', '#ffdfab', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 104, 70),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 105, 70);

INSERT INTO lccs.classes (created_at, updated_at, id, code, name, description, symbology, class_system_id)
VALUES  (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 106, '141', 'Urban Area', '', '#707b7c', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 107, '142', 'Mining', '', '#2e4053', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 108, '143', 'Bare Soil', '', '#aeb6bf', 7),
        (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 109, '145', 'Non-Vegetated Areas', '', '#515a5a', 7);

INSERT INTO lccs.parent_classes (created_at, updated_at, class_id, class_parent_id)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 106, 71),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 107, 71),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 108, 71),
       (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 109, 71);