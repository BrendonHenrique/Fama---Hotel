
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2017 at 04:18 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";



-- --------------------------------------------------------

--
-- Table structure for table `anotacoes`
--

CREATE TABLE `anotacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text,
  `feature` varchar(50) DEFAULT NULL,
  `subfeature` varchar(50) DEFAULT NULL,
  `subsubfeature` varchar(50) DEFAULT NULL,
  `polarity` char(10) DEFAULT NULL,
  `exim` varchar(50) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5796 ;

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `features`
--

INSERT INTO `features` VALUES(1, 'aparência');
INSERT INTO `features` VALUES(2, 'atendimento');
INSERT INTO `features` VALUES(3, 'categoria de hotéis');
INSERT INTO `features` VALUES(4, 'custo-benefício');
INSERT INTO `features` VALUES(5, 'estabelecimento');
INSERT INTO `features` VALUES(6, 'funcionários');
INSERT INTO `features` VALUES(7, 'horário');
INSERT INTO `features` VALUES(8, 'instalações');
INSERT INTO `features` VALUES(9, 'localização');
INSERT INTO `features` VALUES(10, 'pontos de interesse');
INSERT INTO `features` VALUES(11, 'preço');
INSERT INTO `features` VALUES(12, 'quarto');
INSERT INTO `features` VALUES(13, 'rede de hotéis');
INSERT INTO `features` VALUES(14, 'refeição');
INSERT INTO `features` VALUES(15, 'serviço');
INSERT INTO `features` VALUES(16, 'tipo de hóspede');

-- --------------------------------------------------------

--
-- Table structure for table `subfeatures`
--

CREATE TABLE `subfeatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `id_feature` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_feature` (`id_feature`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1126 ;

--
-- Dumping data for table `subfeatures`
--

INSERT INTO `subfeatures` VALUES(1001, 'conforto', 3);
INSERT INTO `subfeatures` VALUES(1002, 'conforto classe superior', 3);
INSERT INTO `subfeatures` VALUES(1003, 'conforto superior', 3);
INSERT INTO `subfeatures` VALUES(1004, 'luxo', 3);
INSERT INTO `subfeatures` VALUES(1005, 'luxo superior', 3);
INSERT INTO `subfeatures` VALUES(1006, 'padrão', 3);
INSERT INTO `subfeatures` VALUES(1007, 'padrão superior', 3);
INSERT INTO `subfeatures` VALUES(1008, 'primeira classe', 3);
INSERT INTO `subfeatures` VALUES(1009, 'turista', 3);
INSERT INTO `subfeatures` VALUES(1010, 'turista superior', 3);
INSERT INTO `subfeatures` VALUES(1011, 'albergue', 5);
INSERT INTO `subfeatures` VALUES(1012, 'alojamento de férias', 5);
INSERT INTO `subfeatures` VALUES(1013, 'apartamento', 5);
INSERT INTO `subfeatures` VALUES(1014, 'bangalô e campismo', 5);
INSERT INTO `subfeatures` VALUES(1015, 'cama e café da manhã', 5);
INSERT INTO `subfeatures` VALUES(1016, 'casa de hóspedes', 5);
INSERT INTO `subfeatures` VALUES(1017, 'hotel', 5);
INSERT INTO `subfeatures` VALUES(1018, 'motel', 5);
INSERT INTO `subfeatures` VALUES(1019, 'outra hospitalidade', 5);
INSERT INTO `subfeatures` VALUES(1020, 'pousada', 5);
INSERT INTO `subfeatures` VALUES(1021, 'babá', 6);
INSERT INTO `subfeatures` VALUES(1022, 'funcionário da cozinha', 6);
INSERT INTO `subfeatures` VALUES(1023, 'funcionário da lavanderia', 6);
INSERT INTO `subfeatures` VALUES(1024, 'funcionário da limpeza', 6);
INSERT INTO `subfeatures` VALUES(1025, 'funcionário da piscina', 6);
INSERT INTO `subfeatures` VALUES(1026, 'funcionário da recepção', 6);
INSERT INTO `subfeatures` VALUES(1027, 'funcionário da área de lazer', 6);
INSERT INTO `subfeatures` VALUES(1028, 'funcionário do bar e restaurante', 6);
INSERT INTO `subfeatures` VALUES(1029, 'garçom', 6);
INSERT INTO `subfeatures` VALUES(1030, 'gerente', 6);
INSERT INTO `subfeatures` VALUES(1031, 'manobrista', 6);
INSERT INTO `subfeatures` VALUES(1032, 'mensageiro', 6);
INSERT INTO `subfeatures` VALUES(1033, 'motorista', 6);
INSERT INTO `subfeatures` VALUES(1034, 'porteiro', 6);
INSERT INTO `subfeatures` VALUES(1035, 'horário da piscina coberta', 7);
INSERT INTO `subfeatures` VALUES(1036, 'horário da piscina', 7);
INSERT INTO `subfeatures` VALUES(1037, 'horário do estacionamento', 7);
INSERT INTO `subfeatures` VALUES(1038, 'horário do restaurante', 7);
INSERT INTO `subfeatures` VALUES(1039, 'horário do spa', 7);
INSERT INTO `subfeatures` VALUES(1040, 'acesso para deficientes', 8);
INSERT INTO `subfeatures` VALUES(1041, 'instalação do banheiro', 8);
INSERT INTO `subfeatures` VALUES(1042, 'instalação do quarto', 8);
INSERT INTO `subfeatures` VALUES(1043, 'instalação externa', 8);
INSERT INTO `subfeatures` VALUES(1044, 'instalação interna', 8);
INSERT INTO `subfeatures` VALUES(1045, 'endereco', 9);
INSERT INTO `subfeatures` VALUES(1046, 'aeroporto', 10);
INSERT INTO `subfeatures` VALUES(1047, 'arena', 10);
INSERT INTO `subfeatures` VALUES(1048, 'centro da cidade', 10);
INSERT INTO `subfeatures` VALUES(1049, 'centro histórico', 10);
INSERT INTO `subfeatures` VALUES(1050, 'construção histórica', 10);
INSERT INTO `subfeatures` VALUES(1051, 'danceteria', 10);
INSERT INTO `subfeatures` VALUES(1052, 'estação de ônibus', 10);
INSERT INTO `subfeatures` VALUES(1053, 'estádio', 10);
INSERT INTO `subfeatures` VALUES(1054, 'igreja', 10);
INSERT INTO `subfeatures` VALUES(1055, 'jardim', 10);
INSERT INTO `subfeatures` VALUES(1056, 'monumento', 10);
INSERT INTO `subfeatures` VALUES(1057, 'museu', 10);
INSERT INTO `subfeatures` VALUES(1058, 'parada de ônibus', 10);
INSERT INTO `subfeatures` VALUES(1059, 'parque', 10);
INSERT INTO `subfeatures` VALUES(1060, 'praia', 10);
INSERT INTO `subfeatures` VALUES(1061, 'praça', 10);
INSERT INTO `subfeatures` VALUES(1062, 'shopping', 10);
INSERT INTO `subfeatures` VALUES(1063, 'teatro', 10);
INSERT INTO `subfeatures` VALUES(1064, 'universidade', 10);
INSERT INTO `subfeatures` VALUES(1065, 'preço da internet', 11);
INSERT INTO `subfeatures` VALUES(1066, 'preço da lavanderia', 11);
INSERT INTO `subfeatures` VALUES(1067, 'preço do berço', 11);
INSERT INTO `subfeatures` VALUES(1068, 'preço do café da manhã', 11);
INSERT INTO `subfeatures` VALUES(1069, 'preço do estacionamento', 11);
INSERT INTO `subfeatures` VALUES(1070, 'preço do quarto', 11);
INSERT INTO `subfeatures` VALUES(1071, 'preço do bar e restaurante', 11);
INSERT INTO `subfeatures` VALUES(1072, 'quarto de albergue', 12);
INSERT INTO `subfeatures` VALUES(1073, 'quarto de apartamento', 12);
INSERT INTO `subfeatures` VALUES(1074, 'quarto de hotel', 12);
INSERT INTO `subfeatures` VALUES(1075, 'Accor Hotels', 13);
INSERT INTO `subfeatures` VALUES(1076, 'Best Western Hotels', 13);
INSERT INTO `subfeatures` VALUES(1077, 'Choice Hotels International', 13);
INSERT INTO `subfeatures` VALUES(1078, 'Domina Hotels', 13);
INSERT INTO `subfeatures` VALUES(1079, 'Fairmont Hotels', 13);
INSERT INTO `subfeatures` VALUES(1080, 'Hilton Hotels', 13);
INSERT INTO `subfeatures` VALUES(1081, 'Hyatt Hotels', 13);
INSERT INTO `subfeatures` VALUES(1082, 'Iberostar Hotels', 13);
INSERT INTO `subfeatures` VALUES(1083, 'Marriot Hotels', 13);
INSERT INTO `subfeatures` VALUES(1084, 'Pestana Group Hotels', 13);
INSERT INTO `subfeatures` VALUES(1085, 'Porto Bay Hotels', 13);
INSERT INTO `subfeatures` VALUES(1086, 'Radisson Hotels', 13);
INSERT INTO `subfeatures` VALUES(1087, 'Tivoli Hotels', 13);
INSERT INTO `subfeatures` VALUES(1088, 'Vila Galé Hotels', 13);
INSERT INTO `subfeatures` VALUES(1089, 'almoço', 14);
INSERT INTO `subfeatures` VALUES(1090, 'café da manhã', 14);
INSERT INTO `subfeatures` VALUES(1091, 'jantar', 14);
INSERT INTO `subfeatures` VALUES(1092, 'aluguel de bicicletas', 15);
INSERT INTO `subfeatures` VALUES(1093, 'aluguel de veículos', 15);
INSERT INTO `subfeatures` VALUES(1094, 'câmbio', 15);
INSERT INTO `subfeatures` VALUES(1095, 'gerência', 15);
INSERT INTO `subfeatures` VALUES(1096, 'lavanderia', 15);
INSERT INTO `subfeatures` VALUES(1097, 'limpeza', 15);
INSERT INTO `subfeatures` VALUES(1098, 'portaria', 15);
INSERT INTO `subfeatures` VALUES(1099, 'posto de turismo', 15);
INSERT INTO `subfeatures` VALUES(1100, 'recepção', 15);
INSERT INTO `subfeatures` VALUES(1101, 'serviço de babá', 15);
INSERT INTO `subfeatures` VALUES(1102, 'serviço de manobrista', 15);
INSERT INTO `subfeatures` VALUES(1103, 'serviço de motorista', 15);
INSERT INTO `subfeatures` VALUES(1104, 'serviço de quarto', 15);
INSERT INTO `subfeatures` VALUES(1105, 'serviço para lua-de-mel', 15);
INSERT INTO `subfeatures` VALUES(1106, 'transporte para o aeroporto', 15);
INSERT INTO `subfeatures` VALUES(1107, 'casal', 16);
INSERT INTO `subfeatures` VALUES(1108, 'colega de trabalho', 16);
INSERT INTO `subfeatures` VALUES(1109, 'família', 16);
INSERT INTO `subfeatures` VALUES(1110, 'grupo de amigos', 16);
INSERT INTO `subfeatures` VALUES(1111, 'viajante de negócios', 16);
INSERT INTO `subfeatures` VALUES(1112, 'viajante sozinho', 16);
INSERT INTO `subfeatures` VALUES(1113, 'bar e restaurante', 10);
INSERT INTO `subfeatures` VALUES(1114, 'farmácia', 10);
INSERT INTO `subfeatures` VALUES(1115, 'uma estrela', 3);
INSERT INTO `subfeatures` VALUES(1116, 'duas estrelas', 3);
INSERT INTO `subfeatures` VALUES(1117, 'três estrelas', 3);
INSERT INTO `subfeatures` VALUES(1118, 'quatro estrelas', 3);
INSERT INTO `subfeatures` VALUES(1119, 'cinco estrelas', 3);
INSERT INTO `subfeatures` VALUES(1120, 'pensão', 5);
INSERT INTO `subfeatures` VALUES(1121, 'recreacionista', 6);
INSERT INTO `subfeatures` VALUES(1122, 'ponto de ônibus', 10);
INSERT INTO `subfeatures` VALUES(1123, 'lojas', 10);
INSERT INTO `subfeatures` VALUES(1124, 'centro comercial', 10);
INSERT INTO `subfeatures` VALUES(1125, 'rodoviária', 10);

-- --------------------------------------------------------

--
-- Table structure for table `subsubfeatures`
--

CREATE TABLE `subsubfeatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `id_subfeature` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_subfeature` (`id_subfeature`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2170 ;

--
-- Dumping data for table `subsubfeatures`
--

INSERT INTO `subsubfeatures` VALUES(2001, 'hotel adega', 1017);
INSERT INTO `subsubfeatures` VALUES(2002, 'hotel aquático', 1017);
INSERT INTO `subsubfeatures` VALUES(2003, 'hotel butique', 1017);
INSERT INTO `subsubfeatures` VALUES(2004, 'hotel casa da árvore', 1017);
INSERT INTO `subsubfeatures` VALUES(2005, 'hotel casamata', 1017);
INSERT INTO `subsubfeatures` VALUES(2006, 'hotel cápsula', 1017);
INSERT INTO `subsubfeatures` VALUES(2007, 'hotel de gelo', 1017);
INSERT INTO `subsubfeatures` VALUES(2008, 'hotel fazenda', 1017);
INSERT INTO `subsubfeatures` VALUES(2009, 'hotel flutuante', 1017);
INSERT INTO `subsubfeatures` VALUES(2010, 'hotel histórico', 1017);
INSERT INTO `subsubfeatures` VALUES(2011, 'aquecedor de toalhas', 1041);
INSERT INTO `subsubfeatures` VALUES(2012, 'balança', 1041);
INSERT INTO `subsubfeatures` VALUES(2013, 'banheira', 1041);
INSERT INTO `subsubfeatures` VALUES(2014, 'chuveiro', 1041);
INSERT INTO `subsubfeatures` VALUES(2015, 'lavatório', 1041);
INSERT INTO `subsubfeatures` VALUES(2016, 'pia', 1041);
INSERT INTO `subsubfeatures` VALUES(2017, 'produtos de higiene', 1041);
INSERT INTO `subsubfeatures` VALUES(2018, 'roupão', 1041);
INSERT INTO `subsubfeatures` VALUES(2019, 'secador', 1041);
INSERT INTO `subsubfeatures` VALUES(2020, 'toalete', 1041);
INSERT INTO `subsubfeatures` VALUES(2021, 'toalha', 1041);
INSERT INTO `subsubfeatures` VALUES(2022, 'torneira', 1041);
INSERT INTO `subsubfeatures` VALUES(2023, 'ar-condicionado', 1042);
INSERT INTO `subsubfeatures` VALUES(2024, 'cabide', 1042);
INSERT INTO `subsubfeatures` VALUES(2025, 'cama', 1042);
INSERT INTO `subsubfeatures` VALUES(2026, 'tapete', 1042);
INSERT INTO `subsubfeatures` VALUES(2027, 'chaleira', 1042);
INSERT INTO `subsubfeatures` VALUES(2028, 'colchão', 1042);
INSERT INTO `subsubfeatures` VALUES(2029, 'cortina', 1042);
INSERT INTO `subsubfeatures` VALUES(2030, 'espelho', 1042);
INSERT INTO `subsubfeatures` VALUES(2031, 'ferro de passar roupa', 1042);
INSERT INTO `subsubfeatures` VALUES(2032, 'frigobar', 1042);
INSERT INTO `subsubfeatures` VALUES(2033, 'iluminação', 1042);
INSERT INTO `subsubfeatures` VALUES(2034, 'internet', 1042);
INSERT INTO `subsubfeatures` VALUES(2035, 'isolamento acústico', 1042);
INSERT INTO `subsubfeatures` VALUES(2036, 'cafeteira', 1042);
INSERT INTO `subsubfeatures` VALUES(2037, 'móveis', 1042);
INSERT INTO `subsubfeatures` VALUES(2038, 'roupa de cama', 1042);
INSERT INTO `subsubfeatures` VALUES(2039, 'guarda-roupa', 1042);
INSERT INTO `subsubfeatures` VALUES(2040, 'telefone', 1042);
INSERT INTO `subsubfeatures` VALUES(2041, 'televisão', 1042);
INSERT INTO `subsubfeatures` VALUES(2042, 'terraço', 1042);
INSERT INTO `subsubfeatures` VALUES(2043, 'tomada', 1042);
INSERT INTO `subsubfeatures` VALUES(2044, 'travesseiro', 1042);
INSERT INTO `subsubfeatures` VALUES(2045, 'tábua de passar roupa', 1042);
INSERT INTO `subsubfeatures` VALUES(2046, 'bar da piscina', 1043);
INSERT INTO `subsubfeatures` VALUES(2047, 'campo de golfe', 1043);
INSERT INTO `subsubfeatures` VALUES(2048, 'internet', 1043);
INSERT INTO `subsubfeatures` VALUES(2049, 'jacuzzi', 1043);
INSERT INTO `subsubfeatures` VALUES(2050, 'jardim', 1043);
INSERT INTO `subsubfeatures` VALUES(2051, 'estacionamento', 1043);
INSERT INTO `subsubfeatures` VALUES(2052, 'piscina', 1043);
INSERT INTO `subsubfeatures` VALUES(2053, 'quadra de esportes', 1043);
INSERT INTO `subsubfeatures` VALUES(2054, 'área de fumantes', 1044);
INSERT INTO `subsubfeatures` VALUES(2055, 'berço', 1044);
INSERT INTO `subsubfeatures` VALUES(2056, 'calefação', 1044);
INSERT INTO `subsubfeatures` VALUES(2057, 'cassino', 1044);
INSERT INTO `subsubfeatures` VALUES(2058, 'playground', 1044);
INSERT INTO `subsubfeatures` VALUES(2059, 'corredor', 1044);
INSERT INTO `subsubfeatures` VALUES(2060, 'cozinha', 1044);
INSERT INTO `subsubfeatures` VALUES(2061, 'danceteria', 1044);
INSERT INTO `subsubfeatures` VALUES(2062, 'elevador', 1044);
INSERT INTO `subsubfeatures` VALUES(2063, 'escadaria', 1044);
INSERT INTO `subsubfeatures` VALUES(2064, 'estacionamento', 1044);
INSERT INTO `subsubfeatures` VALUES(2065, 'guarda volumes', 1044);
INSERT INTO `subsubfeatures` VALUES(2066, 'internet', 1044);
INSERT INTO `subsubfeatures` VALUES(2067, 'lavanderia', 1044);
INSERT INTO `subsubfeatures` VALUES(2068, 'piscina coberta', 1044);
INSERT INTO `subsubfeatures` VALUES(2069, 'polimento de sapatos', 1044);
INSERT INTO `subsubfeatures` VALUES(2070, 'quadra de esportes', 1044);
INSERT INTO `subsubfeatures` VALUES(2071, 'bar e restaurante', 1044);
INSERT INTO `subsubfeatures` VALUES(2072, 'sala de eventos', 1044);
INSERT INTO `subsubfeatures` VALUES(2073, 'sala de jogos', 1044);
INSERT INTO `subsubfeatures` VALUES(2074, 'sala de leitura', 1044);
INSERT INTO `subsubfeatures` VALUES(2075, 'salão de beleza', 1044);
INSERT INTO `subsubfeatures` VALUES(2076, 'salão de festas', 1044);
INSERT INTO `subsubfeatures` VALUES(2077, 'shopping', 1044);
INSERT INTO `subsubfeatures` VALUES(2078, 'spa', 1044);
INSERT INTO `subsubfeatures` VALUES(2079, 'tabacaria', 1044);
INSERT INTO `subsubfeatures` VALUES(2080, 'toalete', 1044);
INSERT INTO `subsubfeatures` VALUES(2081, 'cidade', 1045);
INSERT INTO `subsubfeatures` VALUES(2082, 'código postal', 1045);
INSERT INTO `subsubfeatures` VALUES(2083, 'país', 1045);
INSERT INTO `subsubfeatures` VALUES(2084, 'rua', 1045);
INSERT INTO `subsubfeatures` VALUES(2085, 'quarto duplo privado com banheiro compartilhado', 1072);
INSERT INTO `subsubfeatures` VALUES(2086, 'quarto masculino com 10 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2087, 'quarto masculino com 12 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2088, 'quarto masculino com 4 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2089, 'quarto masculino com 6 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2090, 'quarto masculino com 8 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2091, 'quarto feminino com 10 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2092, 'quarto feminino com 12 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2093, 'quarto feminino com 4 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2094, 'quarto feminino com 6 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2095, 'quarto feminino com 8 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2096, 'quarto misto com 10 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2097, 'quarto misto com 12 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2098, 'quarto misto com 4 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2099, 'quarto misto com 6 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2100, 'quarto misto com 8 camas', 1072);
INSERT INTO `subsubfeatures` VALUES(2101, 'quarto de casal', 1074);
INSERT INTO `subsubfeatures` VALUES(2102, 'quarto de solteiro', 1074);
INSERT INTO `subsubfeatures` VALUES(2103, 'quarto romântico', 1074);
INSERT INTO `subsubfeatures` VALUES(2104, 'quarto duplo', 1074);
INSERT INTO `subsubfeatures` VALUES(2105, 'quarto triplo', 1074);
INSERT INTO `subsubfeatures` VALUES(2106, 'suíte', 1074);
INSERT INTO `subsubfeatures` VALUES(2107, 'Adagio', 1075);
INSERT INTO `subsubfeatures` VALUES(2108, 'AllSeasons', 1075);
INSERT INTO `subsubfeatures` VALUES(2109, 'EtapHotel', 1075);
INSERT INTO `subsubfeatures` VALUES(2110, 'Formula1', 1075);
INSERT INTO `subsubfeatures` VALUES(2111, 'HotelF1', 1075);
INSERT INTO `subsubfeatures` VALUES(2112, 'Ibis', 1075);
INSERT INTO `subsubfeatures` VALUES(2113, 'Mercure', 1075);
INSERT INTO `subsubfeatures` VALUES(2114, 'MGallery', 1075);
INSERT INTO `subsubfeatures` VALUES(2115, 'Novotel', 1075);
INSERT INTO `subsubfeatures` VALUES(2116, 'Orbis', 1075);
INSERT INTO `subsubfeatures` VALUES(2117, 'Pullman', 1075);
INSERT INTO `subsubfeatures` VALUES(2118, 'Sofitel', 1075);
INSERT INTO `subsubfeatures` VALUES(2119, 'SuiteNovotel', 1075);
INSERT INTO `subsubfeatures` VALUES(2120, 'ThalassaSea&Spa', 1075);
INSERT INTO `subsubfeatures` VALUES(2121, 'café da manhã no quarto', 1104);
INSERT INTO `subsubfeatures` VALUES(2122, 'entrega de jornal', 1104);
INSERT INTO `subsubfeatures` VALUES(2123, 'casal jovem', 1107);
INSERT INTO `subsubfeatures` VALUES(2124, 'casal maduro', 1107);
INSERT INTO `subsubfeatures` VALUES(2125, 'família com filhos mais velhos', 1109);
INSERT INTO `subsubfeatures` VALUES(2126, 'família com filhos mais jovens', 1109);
INSERT INTO `subsubfeatures` VALUES(2127, 'família grande', 1109);
INSERT INTO `subsubfeatures` VALUES(2128, 'grupo jovem', 1110);
INSERT INTO `subsubfeatures` VALUES(2129, 'grupo maduro', 1110);
INSERT INTO `subsubfeatures` VALUES(2130, 'ducha', 1041);
INSERT INTO `subsubfeatures` VALUES(2131, 'hidromassagem', 1041);
INSERT INTO `subsubfeatures` VALUES(2168, 'lojas', 1044);
INSERT INTO `subsubfeatures` VALUES(2133, 'minibar', 1042);
INSERT INTO `subsubfeatures` VALUES(2134, 'ferro a vapor', 1042);
INSERT INTO `subsubfeatures` VALUES(2135, 'sacada', 1042);
INSERT INTO `subsubfeatures` VALUES(2136, 'mobílias', 1042);
INSERT INTO `subsubfeatures` VALUES(2137, 'carpete', 1042);
INSERT INTO `subsubfeatures` VALUES(2138, 'tevê', 1042);
INSERT INTO `subsubfeatures` VALUES(2139, 'tv', 1042);
INSERT INTO `subsubfeatures` VALUES(2140, 'roupeiro', 1042);
INSERT INTO `subsubfeatures` VALUES(2141, 'máquina de café', 1042);
INSERT INTO `subsubfeatures` VALUES(2142, 'abajur', 1042);
INSERT INTO `subsubfeatures` VALUES(2143, 'candeeiro', 1042);
INSERT INTO `subsubfeatures` VALUES(2144, 'acesso à internet', 1042);
INSERT INTO `subsubfeatures` VALUES(2145, 'rede sem fio', 1042);
INSERT INTO `subsubfeatures` VALUES(2146, 'zona de wifi', 1042);
INSERT INTO `subsubfeatures` VALUES(2147, 'hidromassagem ao ar livre', 1043);
INSERT INTO `subsubfeatures` VALUES(2148, 'garagem', 1043);
INSERT INTO `subsubfeatures` VALUES(2149, 'garagem', 1044);
INSERT INTO `subsubfeatures` VALUES(2150, 'parque de estacionamento', 1043);
INSERT INTO `subsubfeatures` VALUES(2151, 'parque de estacionamento', 1044);
INSERT INTO `subsubfeatures` VALUES(2152, 'acesso à internet', 1043);
INSERT INTO `subsubfeatures` VALUES(2153, 'rede sem fio', 1043);
INSERT INTO `subsubfeatures` VALUES(2154, 'zona de wifi', 1043);
INSERT INTO `subsubfeatures` VALUES(2155, 'acesso à internet', 1044);
INSERT INTO `subsubfeatures` VALUES(2156, 'rede sem fio', 1044);
INSERT INTO `subsubfeatures` VALUES(2157, 'zona de wifi', 1044);
INSERT INTO `subsubfeatures` VALUES(2158, 'cabeleireiro', 1044);
INSERT INTO `subsubfeatures` VALUES(2159, 'discoteca', 1044);
INSERT INTO `subsubfeatures` VALUES(2160, 'escada', 1044);
INSERT INTO `subsubfeatures` VALUES(2161, 'sala de malas', 1044);
INSERT INTO `subsubfeatures` VALUES(2163, 'clube para crianças', 1044);
INSERT INTO `subsubfeatures` VALUES(2164, 'parque infantil', 1044);
INSERT INTO `subsubfeatures` VALUES(2165, 'praça de brinquedos', 1044);
INSERT INTO `subsubfeatures` VALUES(2166, 'sistema de aquecimento', 1044);
INSERT INTO `subsubfeatures` VALUES(2167, 'aquecimento', 1044);
INSERT INTO `subsubfeatures` VALUES(2169, 'centro comercial', 1044);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` VALUES(1, 'pln', 'pln', 'pln');