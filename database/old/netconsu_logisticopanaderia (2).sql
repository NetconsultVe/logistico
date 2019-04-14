/*
Navicat MySQL Data Transfer

Source Server         : Servidor
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : netconsu_logisticopanaderia

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-04-13 22:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lp_cliente`
-- ----------------------------
DROP TABLE IF EXISTS `lp_cliente`;
CREATE TABLE `lp_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePanaderia` varchar(255) DEFAULT NULL,
  `Rif` varchar(255) DEFAULT NULL,
  `Sica` int(11) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` double(11,0) DEFAULT NULL,
  `CapacidadInstalada` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT '0',
  `ObservacionStatus` varchar(255) DEFAULT NULL,
  `cod_Municipio` int(11) DEFAULT NULL,
  `cod_Parroquia` int(11) DEFAULT NULL,
  `UltimoDespacho` varchar(255) DEFAULT NULL,
  `PersonaContacto` varchar(255) DEFAULT NULL,
  `EmailPersonaContacto` double(11,0) DEFAULT NULL,
  `TelePersonaContacto` double(11,0) DEFAULT NULL,
  `CedulaPersonaContacto` double(11,0) DEFAULT NULL,
  `Latitud` varchar(255) DEFAULT NULL,
  `Longitud` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_Distribuidora` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Nombre` (`NombrePanaderia`),
  FULLTEXT KEY `rif` (`Rif`)
) ENGINE=MyISAM AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_cliente
-- ----------------------------
INSERT INTO `lp_cliente` VALUES ('1', 'ALIMENTOS DAYP C.A', 'J408956730', '524546', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '2');
INSERT INTO `lp_cliente` VALUES ('2', 'SAN HONORATO', 'J409402444', '525298', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('3', 'ADONAI DONAS DL', 'J409302300', '530061', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('4', 'NAUKLE 2013 C.A', 'J403354383', '542559', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('5', 'PANADERIA Y PASTELERIA EBENEZER 1', 'J409970035', '554024', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('6', 'FRSHPAN, C.A', 'J410060603', '554209', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('7', 'INVERSIONES DELCY, C.A', 'V130627630', '571234', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('8', 'ELISA INVERSIONES 2021', 'J410232854', '599856', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('9', 'PANIFICADORA LOS HERMANOS G&G ', 'J411721727', '640500', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('10', 'PANADERIA PASTELERIA PEQUEÑO PARAISO VEZGA 2004 CA', 'J310953066', '16087', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('11', 'PANADERIA PASTELERIA Y DELICATESES LA MANSION DEL MARQUEZ CA', 'J312259400', '16091', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('12', 'PANADERIA PERLA PRINCE CA', 'J085223134', '16768', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('13', 'LA MANSION DEL VALLE CA', 'J31094853', '75062', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('14', 'PANADERIA Y PASTELERIA LAS TEJAS CA', 'J085352147', '82307', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('15', 'PANADERIA PASTELERIA LOS GIRASOLES C.A', 'J297910816', '83699', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('16', 'PANADERIA PASTELERIA Y CHARCUTERIA SAN BENITO CA', 'J085162828', '87394', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('17', 'EL MORO DE CABUDARE CA', 'J296646520', '91758', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('18', 'PANADERIA PASTELERIA Y CHARCUTERIA LOMA ALTA CA', 'J316217124', '91832', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('19', 'INDUSTRIAS DIVINA', 'J296382549', '92755', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('20', 'PANADERIA ANGELINA CA', 'J299406392', '95774', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('21', 'PANADERIA Y PASTELERIA VASCO DA GAMAS CA', 'J307414375', '110780', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('22', 'LINARES OCAMPO CARLOS RUPERTO -', 'V099699686', '148167', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('23', 'PANADERIA Y PASTELERIA Y CHARCUTERIA EL SANTO NIÑO CA', 'J402678630', '159982', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('24', 'RAMOS PANADERIA AARON', 'V112673780', '169380', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('25', 'PANADERIA Y CHARCUTERIA MY GRAN JIRETH CA', 'V146488869', '169743', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('26', 'EUSEBIO OSCAR EURCHEGUI LAGARRETA', 'V231694524', '170359', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('27', 'ODAL, C.A', 'J403106320', '171834', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('28', 'GETSEMANI PEREZ FP', 'V107652066', '178384', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('29', 'JESUS EDUARDO QUINTERO GONZALEZ (PASAPALOS DON JESUS QUINTERO F.P.)', 'V168687091', '197960', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('30', 'INVERSIONES DE ALIMENTOS SAHARI CA', 'J404360921', '214180', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('31', 'GONZALEZ PRACTICO', 'V092584131', '450279', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('32', 'ALIANZA BLISSFUL', 'J409686000', '452413', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('33', 'PANADERIA Y PASTELERIA DELICATESES LA ESPERANZA', 'J407979027', '465927', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('34', 'LA FRAGATA 2015, C.A', 'J407123394', '467787', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('35', 'INVERSIONES HELANDRA', 'J408928752', '492037', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('36', 'REPOSTERIA Y PANES COMENARES F.P', 'V128107076', '495875', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('37', 'SOJO DULCES MOMENTOS, F.P', 'V118811298', '501671', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('38', 'PANADERIA YPASTELERIA Y CHARCUTERIA VIRGEN DE LA CARIDAD DE COBRE', 'V099871993', '506603', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('39', 'PANIFICADORA CABUDARE', 'J409273229', '522624', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('40', 'PEREZ PANADERIA ARTESANAL Y MINI ABASTO LOS ANDES', 'V074079551', '461748', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('41', 'PANADERIA Y PASTELERIA GIOVANPAN C.A', 'J410057050', '549421', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('42', 'PANADERIA DULCERIA Y RESTAURANTE LAS DELICIAS DE LA GORDA', 'J073897447', '526487', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('43', 'PANADERIA PASTELERIA Y DELICATESES ARCO IRIS CA', 'J085111646', '308', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('44', 'PANADERIA Y PASTELERIA ROSA MARIA CA', 'J085218343', '1157', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('45', 'PANADERIA VILLAS PARK CA', 'J294369537', '3378', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('46', 'PANADERIA Y PASTELERIA FORTUNA DELI CA', 'J313061301', '4180', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('47', 'LA ORTIGA DE LARA 2008', 'J296813990', '68290', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('48', 'PANADERIA PASTELERIA Y CHARCUTERIA SAN JUAN BAUTISTA CA', 'J297304592', '87102', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('49', 'PANADERIA DON MANUEL CA', 'J314401378', '87237', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('50', 'PANADERIA PASTELERIA Y CHARCUTERIA LA AMAPOLA CA', 'J301180003', '87314', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('51', 'PANADERIA MISTER PAN 2002 CA', 'J308341428', '87319', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('52', 'PANADERIA MISTER PAN CA', 'J303075754', '88721', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('53', 'PANAD PAST CHARC PIZZERIA Y DELICATESES RASCHEL 2010 CA', 'J310537321', '89870', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('54', 'PANADERIA Y PASTELERIA MISTER PAN 2003 C.A', 'J309456164', '90093', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('55', 'PANIFICADORA SOROCAIMA', 'J299547018', '112528', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('56', 'PANADERIA EL PAN ANDINO', 'V129510540', '115166', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('57', 'PANADERIA CHARCUTERIA Y DELICATESES EL NUEVO AMANECER  CA', 'J310315019', '116262', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('58', 'PANIFICADORA JIMENEZ JHONNY', 'V074002044', '165964', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('59', 'PANADERIA Y CHARCUTERIA RICO PAN 2014 CA', 'J404040595', '209234', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('60', 'ALVARADO MI BUEN PASTOR', 'V773236327', '234694', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('61', 'PANIFICADORA EL PAN DE RAMON C.A', 'J298796529', '255215', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('62', 'PANADERIA LA ESTRELLA RR CA', 'J405230843', '415719', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('63', 'PANADERIA ENMANUEL TP C.A', 'J409132692', '496279', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('64', 'PANIFICADORA GRISOLPAN', 'J297619526', '522815', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('65', 'PANADERIA EL PRINCIPE KAISS C.A.', 'J408995557', '525008', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('66', 'PANADERIA LA BANDERA', 'J409399184', '530325', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('67', 'PANIFICADORA EL BUEN PASTOR', 'J406220884', '537460', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('68', 'ALRIAN C.A', 'J409554864', '546763', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('69', 'PANADERIA SANDRA 288', 'J408999390', '523420', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('70', 'PANIFICADORA LENCHO', 'J409361527', '555957', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('71', 'INVERSIONES AVENDAÑO 2017,C.A', 'J411704768', '674462', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('72', 'DULCES KAPRICHOS', 'J400142873', '537962', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('73', 'INCORA', 'J085154361', '36794', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('74', 'FRITIKOS', 'J085173048', '37797', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('75', 'DELI CHURROS, C.A', 'J308387436', '41123', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('76', 'INVERSIONES MI PASTELITO TOM-ENDER C.A', 'J310241767', '87385', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('77', 'DELI CHURROS AVILA, C.A', 'J312216042', '87942', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('78', 'DELI CHURROS DEL OESTE, C.A', 'J293865581', '87945', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('79', 'PASAPALOS Y MUCHO MAS', 'J315048108', '90880', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('80', 'FUENTE DE SODA, PIZZERIA Y HELADERIA LA NAVE C.A.', 'J085291253', '92304', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('81', 'MI CAFE C A', 'J305519781', '94383', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('82', 'LUNCHERIA RESTAURANTEL PASTEL CA -', 'J309831739', '109333', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('83', 'CHILE KING CA', 'J308198293', '112027', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('84', 'LOS RICOS DULCES DE MI ABUELA CA', 'J294236863', '115834', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('85', 'EMPANADAS LA 28', 'J311135570', '117339', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('86', 'HELADERIA Y PIZZERIA L`INCONTRO C.A', 'J304956932', '117341', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('87', 'BAR MINI RESTAURANT Y PASAPALOS CELINA', 'V074108560', '126355', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('88', 'HOTEL PRINCIPE C.A', 'J075023099', '128716', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('89', 'METROPOLLO 2801 C.A.', 'J400635454', '138957', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('90', 'LA MARTORANA CA', 'J309022105', '139932', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('91', 'EL POLLO LICENCIADO C.A.', 'J085218785', '140321', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('92', 'EL POLLO BACHILLER C.A.', 'J308550795', '140330', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('93', 'IND PRE-PIZZA LA CHEVERISIMA CA', 'J300194086', '140407', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('94', 'EL POLLO GRADUADO C.A.', 'J302477310', '140411', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('95', 'TORTAS COSITA RICA CA', 'J315216710', '145132', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('96', 'MARCOSS PIZZERIA, C.A', 'J293633222', '145625', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('97', 'BOCADOS DE VENEZUELA CA', 'J401581641', '154099', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('98', 'MI PIZZA PIU DEL ESTE, C.A', 'J314945840', '163922', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('99', 'INVERSIONES Y EVENTOS LA ABUELA2013 C.A', 'J403625484', '204606', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('100', 'CASA BERTONI, C.A', 'J403846405', '209571', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('101', 'AMERICANS DONUTS Y ALGO MAS', 'J407448986', '442256', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('102', 'AGÜERO PIZZAMAR', 'V095705738', '483377', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('103', 'LA PASTELERIA 417 C.A', 'J409006867', '494476', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('104', 'COOAK FOODS', 'j407203150', '528990', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('105', 'GRANJERIA CRIOLLA', 'V044775502', '532693', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('106', 'DELI CHURROS', 'J312216042', '534867', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('107', 'CANTON PEING EXPRESS C.A', 'J309406167', '546150', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('108', 'PIZZERIA DON LUIS 028, C.A', 'J410969970', '596028', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('109', 'PAPA GHINO´S PIZZAS CA', 'J313523984', '112029', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('110', 'PITTYS CAKES C.A', 'J299530174', '545602', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('111', 'PIZZA CENTER 2005', 'J294000207', '116291', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('112', 'PIZZA EXPESS', 'V52617304', '229798', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('113', 'PIZZA PAOLO C.A', 'J405686545', '537865', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('114', 'PIZZERIA LOS POCICLE', 'V073698916', '179420', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('115', 'POLLO GRADUADO EXPRESS C.A.', 'J311434909', '175816', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('116', 'POLLO UNIVERSITARIO C.A.', 'J313057886', '140334', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('117', 'RESTAURANT LARA PERU DEL CENTRO, C.A', 'J400364582', '239279', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('118', 'RIALPERCO C.A.', 'J400282608', '151251', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('119', 'TORTA CECY', 'V132696850', '161173', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('120', 'WILJOS PIZZERIA', 'J401261590', '153060', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('121', 'DUEQUE TEQUEÑISIMOS DODAS', 'V212950358', '463054', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('122', 'ORINOCO GRILL C.A.', 'J402118317', '165178', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('123', 'ALIMENTOS EL AVILA C A', 'J402797818', '427188', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('124', 'JANTAR RESTAURANT, C.A', 'J408437368', '659717', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('125', 'INVERSIONES 2640, C.A', 'J407775561', '525398', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('126', 'PALETA, C.A.', 'J410139145', '572015', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('127', 'PRONTISSIMO, C.A.', 'J299097349', '165685', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('128', 'REMOLARA 2007 CA', 'J294642250', '135149', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('129', 'PASAPALOS EL REY, C.A', 'J409422640', '543004', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('130', 'DULPAST, C.A.', 'J403966141', '469163', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('131', 'PIZZERIA DA\'NINO, C.A', 'J401906303', '223641', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('132', 'BUEN SABOR 2008, S.R.L.', 'J297273158', '228361', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('133', 'COMERCIALIZADORA CLANNTON', 'J409006921', '541879', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('134', 'IBARRA LA COLOMBIANITA DEL NORTE', 'V222753135', '570643', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('135', 'BARQUILLAS LUIGI SAN TORO C.A', 'J402525990', '526899', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('136', 'LA DOÑA, C.A', 'V085307842', '453594', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('137', 'PASAPALOS LA FAMILIA', 'J400560462', '532232', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('138', 'TEQUEFRENCH C.A', 'J401267300', '435443', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('139', 'HELADERIA Y REPOSTERIA CREAMS BOYS', 'J294538398', '555546', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('140', 'VICROB', 'J405133040', '583284', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('141', 'TORONTELLA CAKE AND COFRE', 'J403080372', '379498', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('142', 'INVERSIONES BRINCA BRINCA', 'J194512631', '34205', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('143', '100 POR CIEN PIZZA, C.A', 'J298256257', '435433', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('144', 'CERVECERIA RESTAURANT TRIESTE CHAVEZ F.P', 'E811129693', '481606', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('145', 'PIZZERIA BAR RESTAURANT DA PIPPO', 'J300575373', '70755', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('146', 'PANIFICADORA DIVINA PROVIDENCIA', 'J411187658', '662532', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('147', 'PANIFICADORA LA ROCA ETERNA', 'J410880503', '601156', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('148', 'PANIFICADORA Y.A.S.A.E.C.A', 'J410628871', '614630', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('149', 'PANIFICADORA DULCITOS', 'J411345512', '616856', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('150', 'HORNEADOS ARTESANALES CORAZON DE JESUS', 'J410181974', '598292', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('151', 'EL HORNO DE SAGRA C.A.', 'J410163747', '570939', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('152', 'PANIFICADORA PAN DORADO 111', 'J409860337', '549812', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('153', 'PANIFICADORA LA MONUMENTAL C.A.', 'J409652084', '530268', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('154', 'PANIFICADORA SAGA', 'J294271383', '534751', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('155', 'PANIFICADORA LOS CHAGUARAMOS', 'J294169333', '1955', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('156', 'PANIFICADORA LA PASTORA C.A.', 'J305857369', '5333', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('157', 'PANIFICADORA CITY PAN ARABE C.A', 'J294626076', '18539', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('158', 'JOSE LOMBARDI-DISTRIBUIDORA CHILE SNAK DE VENEZUELA', 'V102566781', '88287', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('159', 'PANIFICADORA DAMASCO C.A.', 'J294889140', '88686', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('160', 'PANADERIA PANIFICADORA NURAVEN C.A.', 'J298954337', '88747', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('161', 'PANIFICADORA EL AMASIJO DORADO CA', 'J296441596', '89483', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('162', 'PANIFICADORA UNION', 'J310352542', '89612', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('163', 'PANIFICADORA Y DISTRIBUIDORA ARCOIRIS,C.A', 'J299637165', '117127', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('164', 'PANIFICADORA LARENSE, C.A.', 'J316020835', '120760', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('165', 'PANIFICADORA JR IMPORT C A', 'J317009789', '126620', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('166', 'PANIFICADORA EIDRYAN FULL PAN CA', 'J401103669', '139421', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('167', 'PANICADORA LA FE 2012', 'J402112300', '148907', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('168', 'INV. GABI, C.A', 'J400510643', '168413', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('169', 'CECIPAN2013 C A', 'J403080623', '203839', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('170', 'COMERCIALIZADORA LARENSE 2012 C.A', 'J401247237', '252671', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('171', 'GRAN BARAGUA DEL ESTE C.A.', 'J315169029', '421831', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('172', 'PANIFICADORA Y COMERCIALIZADORA RAM, C.A.', 'J407781170', '445881', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('173', 'INDUSTRIAS PP & RD CA', 'J296446997', '447479', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('174', 'PANIFICADORA ECHEVERRIA Y SEMPRUM ', 'J408280159', '487907', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('175', 'PASAPALOS BARQUI JUNIOR CA', 'J300391531', '36210', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('176', 'DELICATESES SAMI CA', 'J409240835', '524058', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('177', 'PANIFICADORA NACIONAL, C.A.', 'J085183035', '917', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('178', 'PANIFICADORA DON PEPE', 'J312905859', '4305', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('179', 'ASOCIACION CIVIL ALIMENTOS VIVA MEJOR', 'J314293125', '4431', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('180', 'PANIFICADORA NATURAL PAN, C.A.', 'J293532353', '87244', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('181', 'PANIFICADORA Y DISTRIBUIDORA EL KARDENALITO', 'J315538989', '90183', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('182', 'MOGOLLON PANIFICADORA LILIAN PASTORA', 'V074249279', '236854', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('183', 'PANIFICADORA BETHLEHEN, C.A', 'J403652252', '439919', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('184', 'PANIFICADORA LA ANTENA, C.A', 'J407043790', '447651', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('185', 'PANIFICADORA EL PAN DIVINO, C.A', 'J409356469', '524986', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('186', 'CASTILLO PAN DE LA 42, C.A.', 'J409356760', '528797', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('187', 'LA PANERA', 'J411291447', '616831', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('188', 'Industria Alimenticia Doce Amor', 'J402561857', '570297', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('189', 'COMERCIALIZADORA Y PANIFICADORA LA 34 C.A.', 'J409902404', '541777', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('190', 'PANIFICADORA NUTRIPAN DORADO', 'J312495286', '119171', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('191', 'PANIFICADORA ASOCIACION COOPERTAIVA EL GRAN DORADO J 45 RL', 'J316802957', '87474', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('192', 'INVERSIONES CIMM C.A', 'J409632555', '530553', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('193', 'PANADERIA Y PASTELERIA SANDUCHITO', 'J410226510', '579295', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('194', 'PANIFICADORA KVIPAN, CA', 'J409786684', '584318', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('195', 'PANIFFICADORA DANI BELL 2014', 'J404352384', '442415', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('196', 'PANIFICADORA LA CRIOLLA DEL CENTRO C.A.', 'J314971972', '4390', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('197', 'PANIFICADORA CHICHITA C.A', 'J314606310', '4635', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('198', 'PANIFICADORA Y PANADERIA LOS BROTHERS.C.A.', 'J295584890', '88334', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('199', 'PANIFICADORA NUEVO PAN', 'J313907227', '86511', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('200', 'PANIFICADORA PANI PAN ', 'J305538093', '86517', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('201', 'PANIFICADORA COIMBRA', 'J411718149', '649683', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('202', 'DISTRIBUIDORA DIVINA PASTORA MYG', 'J299442534', '144283', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('203', 'PANADERIA Y PASTELERIA LA CASONA', 'J311107410', '75100', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('204', 'INVERSIONES TAURIPAN C.A.', 'J403429014', '176309', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('205', 'COOPERATIVA PIZZERIA SANTA BARBARA,SRL', 'J404662065', '216070', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('206', 'LA FLOR DE SYRIA C.A', 'J404303170', '376772', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('207', 'COMERCIALIZADORA DIOMAR', 'J408883821', '490348', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('208', 'PANADERIA  LA ABUELA', 'J408900190', '502323', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('209', 'INVERSIONES VIRGUEZ', 'J408714892', '522462', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('210', 'INVERSIONES PANIZAN', 'V073576535', '526095', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('211', 'LOS CHUCHITOS SRL', 'J303858813', '532122', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('212', 'DISTRIBUIDORA Y COMERCIALIZADORA L&A RAIMALE, C.A', 'J409546934', '532241', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('213', 'PANIFICADORA LAS MANZANAS DE JULES', 'J409402238', '533160', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('214', 'HO LA LA PIZZERIA RESTAURANT C.A.', 'J408363593', '534930', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('215', 'PANADERIA MI NUEVA ILUSIÓN ,CA', 'J403589801', '539603', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('216', 'PANDERIA LOS FAMOSOS PANES DE AIDA', 'J409802779', '545410', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('217', 'INVERSIONES FRATAY, C.A', 'J409876535', '559571', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('218', 'ASOCIACION COOPERATIVA MIS NIETOS 1997,C.A', 'J297297804', '561013', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('219', 'COOPERATIVA LOS GAYONES 942,RS', 'J313912948', '566894', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('220', 'PANADERIA Y PASTELERIA LA TRILLA 2017,CA', 'J410429410', '586599', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('221', 'PANIFICADORA TSIKENU,C.A', 'J411108227', '0', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('222', 'PANADERIA TISIRIS C.A', 'J297882430', '86549', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('223', 'LA  NOVA PAN C A', 'J401929478', '143426', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('224', 'PANADERIA PASTELERIA CHARCUTERIA LOS GIRASOLES 2015 CA', 'J405530898', '411404', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('225', 'PANADERIA Y PASTELERIA ALISCAR', 'J408499266', '471404', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('226', 'PANADERIA EL PANAL CA', 'J404984011', '528905', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('227', 'PANIFICADORA Y CHARCUTERIA MIS JENIS, C.A.', 'J406346616', '541209', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('228', 'EL DULCE RINCON CARRILLO JEAN 2017, F.P', 'V114837861', '549426', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('229', 'PANADERIA Y PASTELERIA DOÑA CARMEN', 'J294128181', '88340', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('230', 'SUPERMERCADO Y PANADERIA SARARE', 'J085238204', '90075', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('231', 'PANADERIA PASTELERIA AGAPO I', 'J309112619', '90075', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('232', 'VALERA ISMAEL. E VARIEDADES F.P.', 'V152148514', '549423', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('233', 'PANADERIA SIEMPRE JEHOVANISIS C.A', 'J295453736', '86551', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('234', 'PANADERIA PASTELERIA Y CHARCUTERIA TIO NANO C.A', 'J297654372', '87240', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('235', 'PANADERIA PASTELERIA Y CHARCUTERIA LAS CASITAS C.A', 'J314237020', '87276', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('236', 'PANADERIA NOR-PAN C.A', 'J311236902', '87321', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('237', 'PANADERIA Y PASTELERIA PAN DE DIOS C.A', 'J294426565', '95357', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('238', 'PANADERIA MIS 8 HIJOS C.A PANADERIA Y PASTELERIA', 'J299948250', '101249', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('239', 'CONSERVAS PANADERIA Y PASTELERIA CRUZ', 'V073898672', '119427', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('240', 'PANADERIA PASTELERIA CHARCUTERIA LOS PRIMOS  DEL NORTE , C.A', 'J401070388', '142327', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('241', 'LA PASTELERIA DE FERLY C A', 'J406908568', '502961', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('242', 'ASOCIACION COOPERATIVA MICHEL LGY, R.L.', 'J410028114', '522311', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('243', 'INGRID NAILETH BETANCOURT ANSELMI -', 'V122483068', '226796', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('244', 'ENRIQUE ANTONIO RODRIGUEZ DUN', 'V095504236', '227612', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('245', 'PANADERIA KATHY PAN 2010 C.A', 'J307886781', '139377', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('246', 'EL REY DEL PASAPALO J.J CA', 'J403959412', '198408', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('247', 'PANADERIA Y PASTELERIA MARSHELONIA C.A ', 'J404287124', '437513', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('248', 'PANADERIA Y PASTELERIA AGUILAR MI PANCITO DE LA ESQUINA', 'V162770787', '456034', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('249', 'PIZZERIA Y HELADERIA EL HEMIR, C.A.', 'J407592300', '463680', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('250', 'JESUS MI AMIGO FIEL 2016 C.A', 'J408768690', '493007', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('251', 'PANADERIA Y CHARCUTERIA PRINCIPE FACTORY, C.A', 'J408559803', '496942', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('252', 'PANADERIA Y PASTELERIA CHARCUTERIA SAN MARCOS 8 1-10 C.A', 'J408796589', '514056', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('253', 'PANADERIA Y PASTELERIA ANTONELLA C.A.', 'J405977914', '523938', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('254', 'PANADERIA Y PASTELERIA ENMANUEL C.A', 'J409344720', '524961', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('255', 'BEIT LEJEM VARGAS F.P', 'V184225855', '526393', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('256', 'MI DULCE ANGELITO F.P.', 'V149794375', '537424', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('257', 'PANADERIA NUEVO RENACER 2017', 'J409932095', '542993', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('258', 'PANADERIA R. ALVARADO', 'V036368892', '545277', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('259', 'CASTILLO PANADERIA LA VICTORIA FP', 'V129342826', '549477', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('260', 'PANADERIA RUI PAN CANELON', 'V143478676', '552591', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('261', 'PANADERIA LA AVENIDA 2017 C A', 'J410172231', '563380', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('262', 'PANADERIA Y PASTELERIA ARTESANAL  LA PEÑA DEL HORED 2017 C.A', 'J410564750', '580028', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('263', 'INFANTE PANADERIA LA SAGRADA FAMILIA', 'V066828200', '589557', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('264', 'Brito Panaderia mi Esfuerzo ', 'V061057346', '214627', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('265', 'PANADERIA PASTELERIA HERMANOS HERNANDEZ', 'J409666760', '529415', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('266', 'INVERSIONES LA CARIDAD', 'J316139786', '429412', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('267', 'PANADERIA Y PASTELERIA RIO PAN CA', 'J317466969', '152319', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('268', 'PANIFICADORA EL PAN NEW', 'J403433275', '436415', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('269', 'PANADERIA LA NONNA PINA F& G, C.A', 'J409671321', '529775', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('270', 'JAEN  PANADERIA MORELIS F.P', 'V096286810', '539931', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('271', 'LINAJE REAL M&B, C.A.', 'J410143720', '555296', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('272', 'PANIFICADORA AGRO-PARKING C A', 'J311084835', '573276', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('273', 'PANADERIA Y PASTELERIA EL PRINCIPIO DE LA PROSPERIDAD', 'J410666854', '584337', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('274', 'PANIFICADORA YUCATAN C.A', 'J410237392', '570063', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('275', 'CORIANGEL, C.A', 'J404317678', '218216', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('276', 'EL REY DEL PAN COLOMBIANO 2 CA', 'J401428843', '140845', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('277', 'PASTELERIA VENECIA 21', 'V117924714', '141573', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('278', 'PANADERIA PAN-AMERICA C.A', 'J299019348', '98283', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('279', 'PANADERIA PASTELERIA MAXIPAN 2000 C.A -', 'J308456969', '88124', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('280', '¨INVERSIONES LOS FRAILESANDINOS C.A¨', 'J315447070', '90550', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('281', 'PANIFICADORA BUEN PAN C.A', 'J306305742', '87315', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('282', 'PANADERIA ORO PAN CA', 'J316248836', '86450', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('283', 'PAN TRIGO DEL NORTE C.A', 'J297959840', '86553', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('284', 'PANADERIA BRIOCHE 2015 CA', 'J407501224', '442906', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('285', 'SEQUERA PANADERIA LUIS PAN DE DIOS F.P', 'V173062164', '211725', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('286', 'HERNANDEZ DULCES DE TAMARINDO', 'V168537596', '221331', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('287', 'TRIGO DORADO 2013 C.A', 'J402881274', '190657', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('288', 'RAMOS INVERSIONES JHEI', 'V222705823', '233907', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('289', 'GUANAY PANADERIA PASTELERIA Y CHARCUTERIA MIS NIETOS', 'V096064817', '234165', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('290', 'PANAD PASTELER CHARCULT ARMANDO Y ASOCIADOS', 'J403997187', '256901', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('291', 'VILLANUEVA MIS TRES BENDICIONES FP', 'V155043942', '383025', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('292', 'INVERSIONES HERIELY C.A', 'J403787352', '466366', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('293', 'SANCHEZ REPOSTERIA MISHELL', 'V124366328', '497917', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('294', 'PANADERIA, PASTELERIA Y CHARCUTERIA MI PEQUEÑA YOR, C.A', 'J409000320', '509687', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('295', 'CASA DE PAN RODRIGUEZ FP', 'V146495253', '522483', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('296', 'YAMIREY 2016, C.A', 'J409127419', '523134', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('297', 'PANADERIA PASTELERIA  Y CHARCUTERIA WILLIAM C.A', 'J409517446', '524112', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('298', 'A.C DULCERIA Y DELICATESE LA HIGUERA R.L.', 'J400457165', '524482', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('299', 'ARTEAGA PANADERIA PASTELERIA CHARCUTERIA  MI GRAN SUEÑO FP', 'V170123090', '525136', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('300', 'DULCIPAN NAYYIN ATACHO 209 FP', 'V118772160', '525885', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('301', 'PANIFICADORA TAMACA', 'J409273040', '526278', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('302', 'INVERSIONES LOYO GARABAN N.E.E.C.J , C.A', 'J402686048', '528773', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('303', 'SUAREZ PANADERIA PASTELERIA Y CHARCUTERIA A.A.A, F.P', 'V047290119', '530497', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('304', 'PANADERIA EL REYNO DE DIOS C.A', 'J409489019', '534308', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('305', 'GARCES PEROZA PANADERIA LA VICTORIA', 'V052589645', '537101', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('306', 'PAN DE VIDA  AGUILAR FP', 'V169733518', '537151', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('307', 'PANADERIA PASTELERIA Y CHARCUTERIA VICTOR Y MI GENTE', 'J409789128', '541102', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('308', 'CARIPE EL SEÑOR ES MI PASTOR F.P', 'V043393460', '543083', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('309', 'ASOCIACION COOPERATIVA YOHEZAMAR R.L.', 'J409311988', '549430', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('310', 'MEDINA PANDERIA, REPOSTERIA Y CHARCUTERIA DAISY LA SEÑORA DE LAS TORTAS', 'V118775828', '556822', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('311', 'MENDOZA PANDERIA Y PASAPALOS #EL 99 LA BENDICION DE DIOS', 'V136438367', '559380', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('312', 'PANADERIA PASTELERIA Y CHARCUTERIA PAN DE VIDA E& A, C.A. ', 'J409814300', '573612', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('313', 'PANADERIA, PASTELERIA Y CHARCUTERIA COLIBRI JR, C.A.', 'J411363294', '578499', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('314', 'PANADERIA, PASTELERIA Y CHARCUTERIA MI ESFUERZO EL FUTURO, C.A.', 'J411458600', '578586', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('315', 'A DIOS SEA LA GLORIA 2017 C.A', 'V171047281', '581575', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('316', 'PANADERIA Y PASTELERIA TRIGO DORADO 7 CA', 'J410623780', '583352', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('317', 'PANIFICADORA LA NUESTRA DEL NORTE C.A', 'J408969750', '573789', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('318', 'LAS 3 IZAS C.A', 'J298386894', '86525', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('319', 'PANIFICADORA Y PANADERIA LA FE C.A', 'J294115977', '90783', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('320', 'PANADERIA Y PASTELERIA Y CHARCUTERIA PAOLA 2021 F P', 'V124340248', '112780', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('321', 'PANADERIA  PASTELERIAY CHARCUTERIA LA GLORIA DE JESUS DE NAZARETH C.A.', 'J294368654', '139839', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('322', 'HEBERT WILFREDO YEPEZ CUICA', 'V108468870', '202308', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('323', 'PANADERÍA PASTELERIA Y CHARCUTERIA TRIGO MADURO C.A.', 'J317537840', '222847', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('324', 'PANADERIA MADRE MARIA', 'V743320356', '380910', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('325', 'PANADERIA, PASTELERIA Y CHARCUTERIA  NUESTRO ESFUERZO, C.A', 'J407517368', '455553', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('326', 'PANIFICADORA IGLESIAS C.A', 'J306444017', '457614', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('327', 'REYES PANADERIA REIPAN', 'V073866800', '526990', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('328', 'J.C ALVAREZ PANADERIA Y PASTELERIA F.P', 'V261654322', '538583', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('329', 'PANADERIA Y PASTELERIA NUEVO PAN BOBARE 2015 C.A.', 'J406392871', '539128', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('330', 'PANIFICADORA EL PAN CELESTIAL C.A.', 'J297638199', '86540', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('331', 'ALFA PAN L&Y C.A.', 'J314518623', '87246', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('332', 'MUNDO VITAL CA - PANADERÍA\nY PASTELERIA', 'J294940730', '87272', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('333', 'PANADERIA Y PASTELERIA DEYVID PAN -', 'J300959104', '87388', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('334', 'PANADERIA PAN DE AZUCAR C.A. PANADERIA Y PASTELERIA', 'J301196937', '88685', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('335', 'PANADERIA Y PASTELERIA EL RECREO, C.A', 'J085153462', '89462', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('336', 'PANIFICADORA SANTINA C.A.', 'J315196166', '92452', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('337', 'PANADERIA PASTELERIA Y DELICATESES LA ESCALA CA -', 'J295748515', '93973', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('338', 'INVERSIONES MEGAPAN 2012 C A', 'J401533302', '151843', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('339', 'EL GRAN HORNO C A', 'J317015142', '155562', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('340', 'PANADERIA Y PASTELERIA EL PAN DE DIOS 2013 CA', 'J402566492', '163356', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('341', 'PANADERIA PASTELERIA Y CHARCUTERIA EL CASTILLO DEL PAN 2010 CA', 'J299909904', '113810', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('342', 'PANADERIA NUEVO MILENIO 2010 C.A.', 'J299074098', '114725', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('343', 'PANADERIA PASTELERIA Y CHARCUTERIA LA NOVA 2007 CA', 'J294126421', '115798', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('344', 'PANADERIA DON RAFAEL CA', 'J297971645', '118515', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('345', 'PANADERIA Y PASTELERIA JOSANA 2017 C. A', 'J410315440', '119401', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('346', 'ASOCIACION COOPERATIVA YUL-YANE 306RL', 'J313037354', '119657', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('347', 'PANIFICADORA ALFA PAN O.L, C.A', 'J309387464', '120022', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('348', 'DISTRIBUIDORA,PANIFICADORA Y CHARCUTERIA MI ANGEL GABRIEL, C.A', 'J409386074', '523845', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('349', 'PANADERIA  PASTELERIA Y CHARCUTERIA ROCA FUERTE, C.A', 'J402871856', '524281', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('350', 'PANADERIA Y CHARCUTERIA BERACA,CA', 'J40426785', '524461', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('351', 'PEREZ PANADERIA Y PASTELERIA ESPECIALIDADES, F.P', 'V154255393', '524679', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('352', 'PANADERIA LA GUADALUPANA', 'J405724528', '527544', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('353', 'PANADERIA,CHARCUTERIA Y VIVERES CHARCUPAN, C.A', 'J409637697', '531767', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('354', 'PANADERIA Y PASTELERIA LAS DELICIAS C.A', 'J409479757', '531898', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('355', 'DANIELA JAKSANAYS IBARRA MOLINA', 'V260073180', '532080', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('356', 'ABASTO Y PANADERIA DON MARCELINO M,S C.A.', 'J408919850', '532303', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('357', 'PANIFICADORA ARTESANAL UNION RODRIGUEZ', 'V233646233', '546340', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('358', 'PANADERIA Y PASTELERIA PEREZ ALEXANDER, F.P', 'V096123767', '550536', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('359', 'PANIFICADORA EL MILAGRO 2017', 'J409692060', '552599', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('360', 'EL SABOR COLOMBIANO 2018,C.A ', 'J409721833', '557518', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('361', 'PANADERIA Y PASTELERIA MI GRAN REFUGIO 2017 CA', 'J410058994', '565619', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('362', 'PANADERÍA Y PASTELERÍA NOEL-PAN CA', 'j305723648', '201805', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('363', 'RODRIGUEZ MARI MAR 2013', 'V154442940', '209849', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('364', 'PANADERIA Y CHARCUTERIA VARIEDADES MENDOZA', 'J409712052', '211721', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('365', 'LUZ PAN DEL NORTE 7 C A', 'J403224153', '243529', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('366', 'PANADERIA GRAN FE ', 'V014377553', '390842', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('367', 'SANCHEZ PANADERIA LA BENDICION DE DIOS', 'V211418954', '446859', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('368', 'PANADERIA Y PASTELERIA JESURUM C.A', 'J407267698', '456754', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('369', 'IVARON 2015 C.A', 'J406772801', '457215', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('370', 'PANADERIA ELIER 2015, C.A', 'J405966130', '482699', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('371', 'PANADERIA SIRIA VEN CA', 'J315326914', '484970', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('372', 'PANIFICADORA LEOPAN C.A', 'J407970950', '487611', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('373', 'RODRIGUEZ LENNY PANIFICADORA Y ALGO MAS, F.P', 'V135672072', '494583', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('374', 'PANIFICADORA CASTILLO PAN DE  VIDA', 'V073675754', '496117', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('375', 'PANIFICADORA YAYA, C.A.', 'J408337991', '501658', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('376', 'REYES PANIFICADORA DELICIAS 1981, C.A', 'V153528361', '503905', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('377', 'PIZZERIA MASH C.A', 'J304124902', '97761', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('378', 'PANADERIA Y PASTELERIA DELICIAS DEL TRIGO C.A', 'J410311762', '67609', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('379', 'PANADERIA PASTELERIA Y VARIEDADES LE FRAZYE CA', 'J308026379', '105622', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('380', 'GOMEZ VICTOR PANADERIA REPOSTERIA Y CHARCUTERIA F.P', 'V096308910', '158455', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('381', 'PASAPALOS Y PASTELERIA  MIDOAL C.A', 'J404391797', '211129', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('382', 'SUAREZ PANADERIA SHALON', 'V112699810', '226401', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('383', 'ZORAIDA JOSEFINA MONTILLA RODRIGUEZ', 'V052452178', '236810', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('384', 'CHARCUTERIA,PANADERIA Y PASTELERIA YEKALEX', 'V137407058', '258704', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('385', 'PANADERÍA, PASTELERÍA, CHARCUTERÍA LA FORTALEZA EN DIOS 91 C A', 'J404286276', '378934', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('386', 'LA FE EN JESU CRISTO', 'J404321810', '444751', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('387', 'VANDERHILL', 'J404215921', '455292', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('388', 'PANADERIA Y PASTELERIA LA ROSA DE SARON', 'V095467039', '463504', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('389', 'PANDERIA DORALF C.A', 'J409180182', '497935', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('390', 'FREITES PASAPALOS VARIADOS', 'V109434252', '499481', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('391', 'PANADERIA, CHARCUTERIA, VIVERES EN GENERAL SAMAN C.A', 'J405322624', '507039', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('392', 'FABRICA DE PASTA ARTESANAL MELENDINIZ, CA', 'J409131262', '519715', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('393', 'PANADERIA ARTESANAL MI DULCE PAN, CA', 'J409711978', '522567', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('394', 'PANIFICADORA MARLENE FIGUEROA FP', 'V117855747', '523911', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('395', 'PANIFICADORA MOSCHIANO, C.A', 'J406465038', '524951', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('396', 'VASQUEZ REPOSTERIA MI DULCE CAPRICHO', 'V182610980', '529682', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('397', 'ESCALONA PANADERIA MI GRAN SOL F.P', 'V096039766', '530000', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('398', 'SUAREZ PANES Y PASTELERIA YESICA F.P', 'V186553906', '531146', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('399', 'PANIFICADORA HERMANOS JJ', 'J409615544', '531615', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('400', 'CARLOS ENRIQUE NELO GOMEZ', 'V095571782', '532918', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('401', 'YEPEZ ALFREDO PANADERIA Y PIZZERIA, F.P', 'V155805982', '533669', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('402', 'MENDOZA PEROZO ELIA PASTORA', 'V124336623', '533675', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('403', 'MINI PANADERIA ARTESANAL LA VENCEDORA.', 'J409471756', '537234', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('404', 'LADINO PANIFICADORA Y PASTELERIA 2018 FP', 'V204739885', '539822', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('405', 'MC CHILYS FAST FOOD, C.A', 'J404048464', '546789', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('406', 'CATALEYA PANADERIA, PASTELERIA Y ALGO MAS, C.A. ', 'J409767582', '555946', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('407', 'MENDOZA PANADERIA Y PASTELERIA', 'V145124944', '565594', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('408', 'Q SABROSOS 1.C.A. ', 'J401833721', '570498', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('409', 'PANADERIA Y PASTELERIA MORA F.P.', 'V151703239', '570572', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('410', 'PANADERIA Y PASTELERIA KALOS PAN 2017 CA', 'J409910938', '571102', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('411', 'PANIFICADORA Y DISTRIBUIDORA  KUSCO 1, C.A', 'J409860817', '578714', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('412', 'DISTRIBUIDORA Y PANIFICADORA INRI GRATEROL FP', 'V157778877', '596543', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('413', 'PANADERIA PASTELERIA FLOR DEL PAN CA', 'J410295872', '603001', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('414', 'PANIFICADORA LIDER PAN, C.A', 'J407835378', '634599', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('415', 'PANADERIA ARTESANAL MI DULCE PAN', 'J409711978', '552567', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('416', 'PANADERIA Y PASTELERIA DIOS ES AMOR 2017', 'J410663537', '584659', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('417', 'PANADERIA EL GRAN YO SOY 7 CA', 'J410301775', '568233', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('418', 'PANADERIA LOS CREPUSCULOS 2002 CA', 'J309331981', '75371', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('419', 'PANADERIA Y PASTELERIA PAN REAL, C.A -', 'J314750526', '86514', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('420', 'PANADERIA PASTELERIA Y CHARCUTERIA FLORIPAN C.A', 'J313724955', '87279', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('421', 'DISPROIN M & E CA', 'J316646157', '87911', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('422', 'TORREALBA PANADERIA VENEZUELA 22, F.P ', 'V128494240', '506058', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('423', 'PANADERIA PASTELERIA Y CHARCUTERIA EL ESFUERZO 2006 C.A', 'J316932648', '115842', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('424', 'PANADERIA PASTELERIA Y CHARCUTERIA  MONSERRAT CA', 'J297972706', '160323', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('425', 'INVERSIONES YONSEL PAN 20145689 C.A', 'J404800239', '532700', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('426', 'PANADERIA PASTELERIA Y CHARCUTERIA EL  RICHARDS CA', 'J405554860', '536508', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('427', 'PANADERIA PASTELERIA AGUADA PAN', 'V120196088', '113043', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('428', 'PANADERIA Y PASTELERIA DOS SANTOS CA', 'J410646551', '601803', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('429', 'EL SITIO DEL PAN, C.A (EL SITIO DEL PAN, C.A)', 'J401147836', '139838', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('430', 'PANADERIA Y PASTELERIA AGUEDA ROSA CA.', 'J403570906', '391683', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('431', 'LA  NUEVA PANADERIA SUPER PAN C,A', 'J299071420', '113403', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('432', 'ASOCIACION COOPERATIVA DOÑA RAMONA RL', 'J400416019', '165628', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('433', 'PANIFICADORA MARIO 2013 CA', 'J402098642', '147930', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('434', 'PIRE PANADERIA P.V FP', 'V229382965', '499971', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('435', 'PANADERIA CHARCUTERIA Y VIVERES', 'J409693147', '632393', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');
INSERT INTO `lp_cliente` VALUES ('436', 'PANIFICADORA DE AGUADA GRANDE', 'V012395570', '82194', '', null, '', '', '0', '', null, null, '04/04/2019', '', null, null, null, '', '', null, null, '1');

-- ----------------------------
-- Table structure for `lp_cliente_asignacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_cliente_asignacion`;
CREATE TABLE `lp_cliente_asignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ProductosPresentacion` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `cant_Autorizada` int(11) DEFAULT NULL,
  `UltimoDespacho` varchar(255) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_cliente_asignacion
-- ----------------------------
INSERT INTO `lp_cliente_asignacion` VALUES ('1', '2', '1', '11', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('2', '2', '2', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('3', '2', '3', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('4', '2', '4', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('5', '2', '5', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('6', '2', '6', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('7', '2', '7', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('8', '2', '8', '55', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('9', '2', '9', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('10', '2', '10', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('11', '2', '11', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('12', '2', '12', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('13', '2', '13', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('14', '2', '14', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('15', '2', '15', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('16', '2', '16', '40', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('17', '2', '17', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('18', '2', '18', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('19', '2', '19', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('20', '2', '20', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('21', '2', '21', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('22', '2', '22', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('23', '2', '23', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('24', '2', '24', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('25', '2', '25', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('26', '2', '26', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('27', '2', '27', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('28', '2', '28', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('29', '2', '29', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('30', '2', '30', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('31', '2', '31', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('32', '2', '32', '55', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('33', '2', '33', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('34', '2', '34', '55', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('35', '2', '35', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('36', '2', '36', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('37', '2', '37', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('38', '2', '38', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('39', '2', '39', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('40', '2', '40', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('41', '2', '41', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('42', '2', '42', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('43', '2', '43', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('44', '2', '44', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('45', '2', '45', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('46', '2', '46', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('47', '2', '47', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('48', '2', '48', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('49', '2', '49', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('50', '2', '50', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('51', '2', '51', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('52', '2', '52', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('53', '2', '53', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('54', '2', '54', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('55', '2', '55', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('56', '2', '56', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('57', '2', '57', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('58', '2', '58', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('59', '2', '59', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('60', '2', '60', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('61', '2', '61', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('62', '2', '62', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('63', '2', '63', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('64', '2', '64', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('65', '2', '65', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('66', '2', '66', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('67', '2', '67', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('68', '2', '68', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('69', '2', '69', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('70', '2', '70', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('71', '2', '71', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('72', '2', '72', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('73', '2', '73', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('74', '2', '74', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('75', '2', '75', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('76', '2', '76', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('77', '2', '77', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('78', '2', '78', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('79', '2', '79', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('80', '2', '80', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('81', '2', '81', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('82', '2', '82', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('83', '2', '83', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('84', '2', '84', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('85', '2', '85', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('86', '2', '86', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('87', '2', '87', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('88', '2', '88', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('89', '2', '89', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('90', '2', '90', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('91', '2', '91', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('92', '2', '92', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('93', '2', '93', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('94', '2', '94', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('95', '2', '95', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('96', '2', '96', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('97', '2', '97', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('98', '2', '98', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('99', '2', '99', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('100', '2', '100', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('101', '2', '101', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('102', '2', '102', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('103', '2', '103', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('104', '2', '104', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('105', '2', '105', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('106', '2', '106', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('107', '2', '107', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('108', '2', '108', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('109', '2', '109', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('110', '2', '110', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('111', '2', '111', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('112', '2', '112', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('113', '2', '113', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('114', '2', '114', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('115', '2', '115', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('116', '2', '116', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('117', '2', '117', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('118', '2', '118', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('119', '2', '119', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('120', '2', '120', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('121', '2', '121', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('122', '2', '122', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('123', '2', '123', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('124', '2', '124', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('125', '2', '125', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('126', '2', '126', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('127', '2', '127', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('128', '2', '128', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('129', '2', '129', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('130', '2', '130', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('131', '2', '131', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('132', '2', '132', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('133', '2', '133', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('134', '2', '134', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('135', '2', '135', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('136', '2', '136', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('137', '2', '137', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('138', '2', '138', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('139', '2', '139', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('140', '2', '140', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('141', '2', '141', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('142', '2', '142', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('143', '2', '143', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('144', '2', '144', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('145', '2', '145', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('146', '2', '146', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('147', '2', '147', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('148', '2', '148', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('149', '2', '149', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('150', '2', '150', '120', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('151', '2', '151', '140', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('152', '2', '152', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('153', '2', '153', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('154', '2', '154', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('155', '2', '155', '85', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('156', '2', '156', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('157', '2', '157', '85', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('158', '2', '158', '85', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('159', '2', '159', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('160', '2', '160', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('161', '2', '161', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('162', '2', '162', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('163', '2', '163', '140', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('164', '2', '164', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('165', '2', '165', '200', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('166', '2', '166', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('167', '2', '167', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('168', '2', '168', '140', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('169', '2', '169', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('170', '2', '170', '175', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('171', '2', '171', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('172', '2', '172', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('173', '2', '173', '65', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('174', '2', '174', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('175', '2', '175', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('176', '2', '176', '115', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('177', '2', '177', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('178', '2', '178', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('179', '2', '179', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('180', '2', '180', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('181', '2', '181', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('182', '2', '182', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('183', '2', '183', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('184', '2', '184', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('185', '2', '185', '90', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('186', '2', '186', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('187', '2', '187', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('188', '2', '188', '70', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('189', '2', '189', '120', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('190', '2', '190', '90', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('191', '2', '191', '90', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('192', '2', '192', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('193', '2', '193', '120', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('194', '2', '194', '45', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('195', '2', '195', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('196', '2', '196', '110', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('197', '2', '197', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('198', '2', '198', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('199', '2', '199', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('200', '2', '200', '90', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('201', '2', '201', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('202', '2', '202', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('203', '2', '203', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('204', '2', '204', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('205', '2', '205', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('206', '2', '206', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('207', '2', '207', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('208', '2', '208', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('209', '2', '209', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('210', '2', '210', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('211', '2', '211', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('212', '2', '212', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('213', '2', '213', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('214', '2', '214', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('215', '2', '215', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('216', '2', '216', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('217', '2', '217', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('218', '2', '218', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('219', '2', '219', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('220', '2', '220', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('221', '2', '221', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('222', '2', '222', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('223', '2', '223', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('224', '2', '224', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('225', '2', '225', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('226', '2', '226', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('227', '2', '227', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('228', '2', '228', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('229', '2', '229', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('230', '2', '230', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('231', '2', '231', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('232', '2', '232', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('233', '2', '233', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('234', '2', '234', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('235', '2', '235', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('236', '2', '236', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('237', '2', '237', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('238', '2', '238', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('239', '2', '239', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('240', '2', '240', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('241', '2', '241', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('242', '2', '242', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('243', '2', '243', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('244', '2', '244', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('245', '2', '245', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('246', '2', '246', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('247', '2', '247', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('248', '2', '248', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('249', '2', '249', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('250', '2', '250', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('251', '2', '251', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('252', '2', '252', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('253', '2', '253', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('254', '2', '254', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('255', '2', '255', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('256', '2', '256', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('257', '2', '257', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('258', '2', '258', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('259', '2', '259', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('260', '2', '260', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('261', '2', '261', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('262', '2', '262', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('263', '2', '263', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('264', '2', '264', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('265', '2', '265', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('266', '2', '266', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('267', '2', '267', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('268', '2', '268', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('269', '2', '269', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('270', '2', '270', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('271', '2', '271', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('272', '2', '272', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('273', '2', '273', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('274', '2', '274', '50', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('275', '2', '275', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('276', '2', '276', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('277', '2', '277', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('278', '2', '278', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('279', '2', '279', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('280', '2', '280', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('281', '2', '281', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('282', '2', '282', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('283', '2', '283', '35', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('284', '2', '284', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('285', '2', '285', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('286', '2', '286', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('287', '2', '287', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('288', '2', '288', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('289', '2', '289', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('290', '2', '290', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('291', '2', '291', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('292', '2', '292', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('293', '2', '293', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('294', '2', '294', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('295', '2', '295', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('296', '2', '296', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('297', '2', '297', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('298', '2', '298', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('299', '2', '299', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('300', '2', '300', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('301', '2', '301', '145', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('302', '2', '302', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('303', '2', '303', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('304', '2', '304', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('305', '2', '305', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('306', '2', '306', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('307', '2', '307', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('308', '2', '308', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('309', '2', '309', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('310', '2', '310', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('311', '2', '311', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('312', '2', '312', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('313', '2', '313', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('314', '2', '314', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('315', '2', '315', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('316', '2', '316', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('317', '2', '317', '100', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('318', '2', '318', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('319', '2', '319', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('320', '2', '320', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('321', '2', '321', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('322', '2', '322', '0', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('323', '2', '323', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('324', '2', '324', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('325', '2', '325', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('326', '2', '326', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('327', '2', '327', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('328', '2', '328', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('329', '2', '329', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('330', '2', '330', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('331', '2', '331', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('332', '2', '332', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('333', '2', '333', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('334', '2', '334', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('335', '2', '335', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('336', '2', '336', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('337', '2', '337', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('338', '2', '338', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('339', '2', '339', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('340', '2', '340', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('341', '2', '341', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('342', '2', '342', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('343', '2', '343', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('344', '2', '344', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('345', '2', '345', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('346', '2', '346', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('347', '2', '347', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('348', '2', '348', '55', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('349', '2', '349', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('350', '2', '350', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('351', '2', '351', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('352', '2', '352', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('353', '2', '353', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('354', '2', '354', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('355', '2', '355', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('356', '2', '356', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('357', '2', '357', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('358', '2', '358', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('359', '2', '359', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('360', '2', '360', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('361', '2', '361', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('362', '2', '362', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('363', '2', '363', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('364', '2', '364', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('365', '2', '365', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('366', '2', '366', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('367', '2', '367', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('368', '2', '368', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('369', '2', '369', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('370', '2', '370', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('371', '2', '371', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('372', '2', '372', '80', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('373', '2', '373', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('374', '2', '374', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('375', '2', '375', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('376', '2', '376', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('377', '2', '377', '60', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('378', '2', '378', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('379', '2', '379', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('380', '2', '380', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('381', '2', '381', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('382', '2', '382', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('383', '2', '383', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('384', '2', '384', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('385', '2', '385', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('386', '2', '386', '15', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('387', '2', '387', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('388', '2', '388', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('389', '2', '389', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('390', '2', '390', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('391', '2', '391', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('392', '2', '392', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('393', '2', '393', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('394', '2', '394', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('395', '2', '395', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('396', '2', '396', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('397', '2', '397', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('398', '2', '398', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('399', '2', '399', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('400', '2', '400', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('401', '2', '401', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('402', '2', '402', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('403', '2', '403', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('404', '2', '404', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('405', '2', '405', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('406', '2', '406', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('407', '2', '407', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('408', '2', '408', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('409', '2', '409', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('410', '2', '410', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('411', '2', '411', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('412', '2', '412', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('413', '2', '413', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('414', '2', '414', '30', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('415', '2', '415', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('416', '2', '416', '10', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('417', '2', '417', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('418', '2', '418', '35', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('419', '2', '419', '35', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('420', '2', '420', '35', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('421', '2', '421', '35', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('422', '2', '422', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('423', '2', '423', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('424', '2', '424', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('425', '2', '425', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('426', '2', '426', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('427', '2', '427', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('428', '2', '428', '25', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('429', '2', '429', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('430', '2', '430', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('431', '2', '431', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('432', '2', '432', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('433', '2', '433', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('434', '2', '434', '20', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('435', '2', '435', '5', '04/04/2019', '1', null, null);
INSERT INTO `lp_cliente_asignacion` VALUES ('436', '2', '436', '60', '04/04/2019', '1', null, null);

-- ----------------------------
-- Table structure for `lp_cliente_distribuidora`
-- ----------------------------
DROP TABLE IF EXISTS `lp_cliente_distribuidora`;
CREATE TABLE `lp_cliente_distribuidora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Distribuidora` int(11) DEFAULT NULL,
  `id_Cliente` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_cliente_distribuidora
-- ----------------------------
INSERT INTO `lp_cliente_distribuidora` VALUES ('1', '1', '1', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('2', '1', '2', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('3', '1', '3', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('4', '1', '4', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('5', '1', '5', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('6', '1', '6', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('7', '1', '7', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('8', '1', '8', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('9', '1', '9', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('10', '1', '10', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('11', '1', '11', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('12', '1', '12', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('13', '1', '13', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('14', '1', '14', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('15', '1', '15', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('16', '1', '16', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('17', '1', '17', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('18', '1', '18', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('19', '1', '19', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('20', '1', '20', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('21', '1', '21', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('22', '1', '22', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('23', '1', '23', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('24', '1', '24', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('25', '1', '25', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('26', '1', '26', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('27', '1', '27', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('28', '1', '28', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('29', '1', '29', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('30', '1', '30', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('31', '1', '31', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('32', '1', '32', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('33', '1', '33', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('34', '1', '34', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('35', '1', '35', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('36', '1', '36', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('37', '1', '37', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('38', '1', '38', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('39', '1', '39', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('40', '1', '40', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('41', '1', '41', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('42', '1', '42', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('43', '1', '43', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('44', '1', '44', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('45', '1', '45', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('46', '1', '46', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('47', '1', '47', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('48', '1', '48', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('49', '1', '49', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('50', '1', '50', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('51', '1', '51', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('52', '1', '52', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('53', '1', '53', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('54', '1', '54', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('55', '1', '55', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('56', '1', '56', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('57', '1', '57', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('58', '1', '58', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('59', '1', '59', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('60', '1', '60', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('61', '1', '61', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('62', '1', '62', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('63', '1', '63', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('64', '1', '64', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('65', '1', '65', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('66', '1', '66', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('67', '1', '67', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('68', '1', '68', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('69', '1', '69', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('70', '1', '70', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('71', '1', '71', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('72', '1', '72', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('73', '1', '73', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('74', '1', '74', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('75', '1', '75', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('76', '1', '76', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('77', '1', '77', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('78', '1', '78', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('79', '1', '79', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('80', '1', '80', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('81', '1', '81', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('82', '1', '82', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('83', '1', '83', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('84', '1', '84', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('85', '1', '85', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('86', '1', '86', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('87', '1', '87', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('88', '1', '88', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('89', '1', '89', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('90', '1', '90', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('91', '1', '91', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('92', '1', '92', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('93', '1', '93', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('94', '1', '94', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('95', '1', '95', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('96', '1', '96', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('97', '1', '97', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('98', '1', '98', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('99', '1', '99', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('100', '1', '100', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('101', '1', '101', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('102', '1', '102', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('103', '1', '103', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('104', '1', '104', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('105', '1', '105', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('106', '1', '106', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('107', '1', '107', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('108', '1', '108', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('109', '1', '109', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('110', '1', '110', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('111', '1', '111', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('112', '1', '112', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('113', '1', '113', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('114', '1', '114', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('115', '1', '115', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('116', '1', '116', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('117', '1', '117', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('118', '1', '118', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('119', '1', '119', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('120', '1', '120', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('121', '1', '121', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('122', '1', '122', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('123', '1', '123', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('124', '1', '124', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('125', '1', '125', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('126', '1', '126', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('127', '1', '127', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('128', '1', '128', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('129', '1', '129', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('130', '1', '130', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('131', '1', '131', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('132', '1', '132', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('133', '1', '133', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('134', '1', '134', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('135', '1', '135', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('136', '1', '136', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('137', '1', '137', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('138', '1', '138', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('139', '1', '139', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('140', '1', '140', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('141', '1', '141', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('142', '1', '142', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('143', '1', '143', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('144', '1', '144', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('145', '1', '145', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('146', '1', '146', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('147', '1', '147', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('148', '1', '148', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('149', '1', '149', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('150', '1', '150', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('151', '1', '151', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('152', '1', '152', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('153', '1', '153', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('154', '1', '154', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('155', '1', '155', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('156', '1', '156', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('157', '1', '157', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('158', '1', '158', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('159', '1', '159', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('160', '1', '160', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('161', '1', '161', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('162', '1', '162', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('163', '1', '163', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('164', '1', '164', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('165', '1', '165', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('166', '1', '166', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('167', '1', '167', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('168', '1', '168', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('169', '1', '169', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('170', '1', '170', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('171', '1', '171', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('172', '1', '172', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('173', '1', '173', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('174', '1', '174', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('175', '1', '175', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('176', '1', '176', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('177', '1', '177', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('178', '1', '178', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('179', '1', '179', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('180', '1', '180', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('181', '1', '181', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('182', '1', '182', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('183', '1', '183', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('184', '1', '184', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('185', '1', '185', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('186', '1', '186', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('187', '1', '187', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('188', '1', '188', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('189', '1', '189', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('190', '1', '190', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('191', '1', '191', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('192', '1', '192', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('193', '1', '193', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('194', '1', '194', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('195', '1', '195', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('196', '1', '196', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('197', '1', '197', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('198', '1', '198', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('199', '1', '199', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('200', '1', '200', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('201', '1', '201', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('202', '1', '202', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('203', '1', '203', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('204', '1', '204', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('205', '1', '205', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('206', '1', '206', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('207', '1', '207', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('208', '1', '208', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('209', '1', '209', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('210', '1', '210', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('211', '1', '211', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('212', '1', '212', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('213', '1', '213', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('214', '1', '214', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('215', '1', '215', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('216', '1', '216', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('217', '1', '217', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('218', '1', '218', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('219', '1', '219', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('220', '1', '220', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('221', '1', '221', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('222', '1', '222', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('223', '1', '223', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('224', '1', '224', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('225', '1', '225', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('226', '1', '226', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('227', '1', '227', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('228', '1', '228', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('229', '1', '229', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('230', '1', '230', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('231', '1', '231', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('232', '1', '232', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('233', '1', '233', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('234', '1', '234', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('235', '1', '235', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('236', '1', '236', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('237', '1', '237', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('238', '1', '238', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('239', '1', '239', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('240', '1', '240', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('241', '1', '241', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('242', '1', '242', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('243', '1', '243', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('244', '1', '244', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('245', '1', '245', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('246', '1', '246', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('247', '1', '247', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('248', '1', '248', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('249', '1', '249', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('250', '1', '250', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('251', '1', '251', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('252', '1', '252', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('253', '1', '253', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('254', '1', '254', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('255', '1', '255', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('256', '1', '256', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('257', '1', '257', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('258', '1', '258', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('259', '1', '259', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('260', '1', '260', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('261', '1', '261', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('262', '1', '262', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('263', '1', '263', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('264', '1', '264', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('265', '1', '265', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('266', '1', '266', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('267', '1', '267', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('268', '1', '268', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('269', '1', '269', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('270', '1', '270', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('271', '1', '271', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('272', '1', '272', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('273', '1', '273', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('274', '1', '274', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('275', '1', '275', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('276', '1', '276', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('277', '1', '277', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('278', '1', '278', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('279', '1', '279', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('280', '1', '280', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('281', '1', '281', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('282', '1', '282', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('283', '1', '283', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('284', '1', '284', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('285', '1', '285', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('286', '1', '286', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('287', '1', '287', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('288', '1', '288', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('289', '1', '289', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('290', '1', '290', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('291', '1', '291', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('292', '1', '292', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('293', '1', '293', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('294', '1', '294', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('295', '1', '295', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('296', '1', '296', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('297', '1', '297', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('298', '1', '298', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('299', '1', '299', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('300', '1', '300', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('301', '1', '301', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('302', '1', '302', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('303', '1', '303', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('304', '1', '304', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('305', '1', '305', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('306', '1', '306', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('307', '1', '307', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('308', '1', '308', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('309', '1', '309', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('310', '1', '310', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('311', '1', '311', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('312', '1', '312', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('313', '1', '313', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('314', '1', '314', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('315', '1', '315', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('316', '1', '316', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('317', '1', '317', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('318', '1', '318', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('319', '1', '319', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('320', '1', '320', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('321', '1', '321', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('322', '1', '322', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('323', '1', '323', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('324', '1', '324', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('325', '1', '325', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('326', '1', '326', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('327', '1', '327', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('328', '1', '328', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('329', '1', '329', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('330', '1', '330', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('331', '1', '331', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('332', '1', '332', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('333', '1', '333', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('334', '1', '334', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('335', '1', '335', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('336', '1', '336', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('337', '1', '337', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('338', '1', '338', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('339', '1', '339', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('340', '1', '340', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('341', '1', '341', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('342', '1', '342', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('343', '1', '343', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('344', '1', '344', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('345', '1', '345', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('346', '1', '346', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('347', '1', '347', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('348', '1', '348', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('349', '1', '349', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('350', '1', '350', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('351', '1', '351', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('352', '1', '352', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('353', '1', '353', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('354', '1', '354', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('355', '1', '355', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('356', '1', '356', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('357', '1', '357', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('358', '1', '358', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('359', '1', '359', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('360', '1', '360', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('361', '1', '361', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('362', '1', '362', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('363', '1', '363', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('364', '1', '364', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('365', '1', '365', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('366', '1', '366', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('367', '1', '367', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('368', '1', '368', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('369', '1', '369', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('370', '1', '370', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('371', '1', '371', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('372', '1', '372', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('373', '1', '373', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('374', '1', '374', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('375', '1', '375', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('376', '1', '376', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('377', '1', '377', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('378', '1', '378', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('379', '1', '379', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('380', '1', '380', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('381', '1', '381', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('382', '1', '382', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('383', '1', '383', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('384', '1', '384', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('385', '1', '385', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('386', '1', '386', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('387', '1', '387', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('388', '1', '388', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('389', '1', '389', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('390', '1', '390', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('391', '1', '391', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('392', '1', '392', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('393', '1', '393', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('394', '1', '394', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('395', '1', '395', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('396', '1', '396', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('397', '1', '397', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('398', '1', '398', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('399', '1', '399', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('400', '1', '400', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('401', '1', '401', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('402', '1', '402', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('403', '1', '403', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('404', '1', '404', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('405', '1', '405', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('406', '1', '406', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('407', '1', '407', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('408', '1', '408', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('409', '1', '409', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('410', '1', '410', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('411', '1', '411', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('412', '1', '412', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('413', '1', '413', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('414', '1', '414', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('415', '1', '415', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('416', '1', '416', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('417', '1', '417', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('418', '1', '418', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('419', '1', '419', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('420', '1', '420', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('421', '1', '421', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('422', '1', '422', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('423', '1', '423', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('424', '1', '424', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('425', '1', '425', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('426', '1', '426', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('427', '1', '427', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('428', '1', '428', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('429', '1', '429', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('430', '1', '430', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('431', '1', '431', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('432', '1', '432', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('433', '1', '433', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('434', '1', '434', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('435', '1', '435', null, null);
INSERT INTO `lp_cliente_distribuidora` VALUES ('436', '1', '436', null, null);

-- ----------------------------
-- Table structure for `lp_config`
-- ----------------------------
DROP TABLE IF EXISTS `lp_config`;
CREATE TABLE `lp_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RecargaSilo` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `OrdenDistribucion` int(11) NOT NULL DEFAULT '0',
  `OrdenOperacion` int(11) NOT NULL DEFAULT '0',
  `RecargaManufactura` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_config
-- ----------------------------
INSERT INTO `lp_config` VALUES ('1', '9', null, '2019-04-08 01:45:38', '8', '16', '8');

-- ----------------------------
-- Table structure for `lp_distribuidora`
-- ----------------------------
DROP TABLE IF EXISTS `lp_distribuidora`;
CREATE TABLE `lp_distribuidora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Telefono` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_distribuidora
-- ----------------------------
INSERT INTO `lp_distribuidora` VALUES ('1', 'SISECA', 'DIRECCION', 'EMAIL@GMAIL.COM', '424511699');
INSERT INTO `lp_distribuidora` VALUES ('2', 'RESERVA ACTIVA', 'DIRECCION', 'EMAIL@GMAIL.COM', '424511699');
INSERT INTO `lp_distribuidora` VALUES ('3', 'ABASTLARA', 'DIRECCION', 'EMAIL@GMAIL.COM', '424511699');

-- ----------------------------
-- Table structure for `lp_distribuidora_almacenes`
-- ----------------------------
DROP TABLE IF EXISTS `lp_distribuidora_almacenes`;
CREATE TABLE `lp_distribuidora_almacenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Distribuidora` varchar(255) DEFAULT NULL,
  `cod_Almacen` varchar(255) DEFAULT NULL,
  `NombreAlmacen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_distribuidora_almacenes
-- ----------------------------
INSERT INTO `lp_distribuidora_almacenes` VALUES ('4', '1', '1-11', 'SISECA-AL01', null, null);

-- ----------------------------
-- Table structure for `lp_distribuidora_almacenes_incorporacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_distribuidora_almacenes_incorporacion`;
CREATE TABLE `lp_distribuidora_almacenes_incorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ProductosPresentacion` int(11) DEFAULT NULL,
  `id_DistribuidoraAlmacenes` int(11) DEFAULT NULL,
  `id_DistribuidoraAsignacion` int(11) DEFAULT NULL,
  `id_SiloAlmacenesIncorporacion` int(11) DEFAULT NULL,
  `PrecioDistribuidora` decimal(11,2) DEFAULT NULL,
  `PrecioPanaderia` decimal(11,2) DEFAULT NULL,
  `cant_Recibida` decimal(11,2) DEFAULT NULL,
  `cant_Existencia` decimal(11,2) DEFAULT NULL,
  `cant_Comprometida` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cant_Merma` decimal(11,2) NOT NULL DEFAULT '0.00',
  `Status` int(11) NOT NULL DEFAULT '0',
  `FechaRecepcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_distribuidora_almacenes_incorporacion
-- ----------------------------
INSERT INTO `lp_distribuidora_almacenes_incorporacion` VALUES ('194', '2', '4', '115', '175', '1.00', '1.00', '15.00', '0.00', '0.00', '0.00', '0', null, '2019-04-07 20:29:46', '2019-04-07 23:30:56');
INSERT INTO `lp_distribuidora_almacenes_incorporacion` VALUES ('195', '2', '4', '116', '176', '2.00', '2.00', '21.00', '0.00', '37.00', '0.00', '0', null, '2019-04-07 20:29:57', '2019-04-07 23:30:56');
INSERT INTO `lp_distribuidora_almacenes_incorporacion` VALUES ('196', '2', '4', '117', '177', '1.00', '1.00', '22.00', '0.00', '44.00', '0.00', '0', null, '2019-04-07 20:30:08', '2019-04-07 20:54:24');
INSERT INTO `lp_distribuidora_almacenes_incorporacion` VALUES ('197', '2', '4', '118', '178', '3.00', '3.00', '18.00', '2.00', '6.00', '0.00', '0', null, '2019-04-07 20:30:19', '2019-04-08 01:46:34');
INSERT INTO `lp_distribuidora_almacenes_incorporacion` VALUES ('198', '2', '4', '119', '180', '90.00', '100.00', '10.00', '10.00', '0.00', '0.00', '0', null, '2019-04-08 01:44:52', '2019-04-08 01:44:52');

-- ----------------------------
-- Table structure for `lp_distribuidora_asignacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_distribuidora_asignacion`;
CREATE TABLE `lp_distribuidora_asignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_DistribuidoraAlmacenes` int(11) DEFAULT NULL,
  `FechaAsignacion` varchar(255) DEFAULT NULL,
  `cant_Asignada` decimal(11,2) DEFAULT '0.00',
  `cant_Recepcionada` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cant_PorRecepcionar` int(11) NOT NULL DEFAULT '0',
  `cant_Existencia` int(11) NOT NULL DEFAULT '0',
  `cant_DescMerma` int(11) NOT NULL DEFAULT '0',
  `Status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_SiloAlmacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_distribuidora_asignacion
-- ----------------------------
INSERT INTO `lp_distribuidora_asignacion` VALUES ('115', '4', '07-04-2019', '15.00', '0.00', '15', '0', '0', '0', '2019-04-07 20:29:46', '2019-04-07 20:29:46', '2');
INSERT INTO `lp_distribuidora_asignacion` VALUES ('116', '4', '07-04-2019', '21.00', '0.00', '21', '0', '0', '0', '2019-04-07 20:29:57', '2019-04-07 20:29:57', '2');
INSERT INTO `lp_distribuidora_asignacion` VALUES ('117', '4', '07-04-2019', '22.00', '0.00', '22', '0', '0', '0', '2019-04-07 20:30:07', '2019-04-07 20:30:07', '2');
INSERT INTO `lp_distribuidora_asignacion` VALUES ('118', '4', '07-04-2019', '18.00', '0.00', '18', '0', '0', '0', '2019-04-07 20:30:19', '2019-04-07 20:30:19', '2');
INSERT INTO `lp_distribuidora_asignacion` VALUES ('119', '4', '08-04-2019', '10.00', '10.00', '0', '10', '0', '2', '2019-04-08 01:44:51', '2019-04-08 01:45:21', '2');

-- ----------------------------
-- Table structure for `lp_ordenoperaciones`
-- ----------------------------
DROP TABLE IF EXISTS `lp_ordenoperaciones`;
CREATE TABLE `lp_ordenoperaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInicio` varchar(255) DEFAULT NULL,
  `FechaFin` varchar(255) DEFAULT NULL,
  `cod_OrdenOperacion` varchar(255) DEFAULT NULL,
  `id_OrdenOperacionesResponsable` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_ordenoperaciones
-- ----------------------------
INSERT INTO `lp_ordenoperaciones` VALUES ('9', '07/04/2019', '14/04/2019', 'OP-2019-14', '1', '3', '2019-04-07 20:30:34', '2019-04-08 01:47:37');
INSERT INTO `lp_ordenoperaciones` VALUES ('10', '21/04/2019', '28/04/2019', 'OP-2019-15', '2', '0', '2019-04-07 20:30:41', '2019-04-07 20:30:41');
INSERT INTO `lp_ordenoperaciones` VALUES ('11', '07/04/2019', '14/04/2019', 'OP-2019-16', '1', '4', '2019-04-08 01:45:38', '2019-04-08 01:46:57');

-- ----------------------------
-- Table structure for `lp_ordenoperaciones_asignacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_ordenoperaciones_asignacion`;
CREATE TABLE `lp_ordenoperaciones_asignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_Cliente` int(11) DEFAULT NULL,
  `id_ClienteDistribuidora` int(11) DEFAULT NULL,
  `id_ProductoPresentacion` int(11) NOT NULL DEFAULT '2',
  `id_Distribuidora` int(11) DEFAULT NULL,
  `id_Almacen` int(11) DEFAULT NULL,
  `FechaAsignacion` varchar(255) DEFAULT NULL,
  `FechaDespacho` varchar(255) DEFAULT NULL,
  `DiaDespacho` varchar(255) DEFAULT NULL,
  `cant_SacosAsignada` int(11) NOT NULL DEFAULT '0',
  `cant_TonAsignada` decimal(11,3) NOT NULL DEFAULT '0.000',
  `CostoPorSaco` decimal(11,2) NOT NULL DEFAULT '0.00',
  `CostoDespacho` decimal(11,2) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0',
  `NotificadoPhone` int(11) NOT NULL DEFAULT '0',
  `NotificadoSMS` int(11) NOT NULL DEFAULT '0',
  `NotificadoEmail` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_ordenoperaciones_asignacion
-- ----------------------------
INSERT INTO `lp_ordenoperaciones_asignacion` VALUES ('33', '9', '2', '2', '2', '1', '4', '07-04-2019', '14/04/2019', null, '45', '2.250', '17000.89', '765040.05', '1', '1', '0', '0', null, '2019-04-08 01:48:09');
INSERT INTO `lp_ordenoperaciones_asignacion` VALUES ('34', '9', '5', '2', '2', '1', '4', '07-04-2019', '12/04/2019', null, '25', '1.250', '17000.89', '425022.25', '1', '1', '0', '0', null, '2019-04-08 01:48:02');
INSERT INTO `lp_ordenoperaciones_asignacion` VALUES ('35', '11', '2', '2', '2', '1', '4', '08-04-2019', null, null, '4', '0.200', '17000.89', '68003.56', '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `lp_ordenoperaciones_asignacion_detalle`
-- ----------------------------
DROP TABLE IF EXISTS `lp_ordenoperaciones_asignacion_detalle`;
CREATE TABLE `lp_ordenoperaciones_asignacion_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperacionesAsignacion` int(11) DEFAULT NULL,
  `id_DistribuidoraAlmacen` int(11) DEFAULT NULL,
  `cant_Asignada` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_ordenoperaciones_asignacion_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for `lp_ordenoperaciones_planificacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_ordenoperaciones_planificacion`;
CREATE TABLE `lp_ordenoperaciones_planificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_Cliente` int(11) DEFAULT NULL,
  `id_Distribuidora` int(11) NOT NULL DEFAULT '0',
  `id_ClienteDistribuidora` int(11) DEFAULT NULL,
  `id_ProductoPresentacion` int(11) NOT NULL DEFAULT '2',
  `cant_Planificada` int(11) DEFAULT NULL,
  `FechaAsignacion` varchar(255) DEFAULT NULL,
  `CostoPorSaco` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_ordenoperaciones_planificacion
-- ----------------------------

-- ----------------------------
-- Table structure for `lp_ordenoperaciones_responsable`
-- ----------------------------
DROP TABLE IF EXISTS `lp_ordenoperaciones_responsable`;
CREATE TABLE `lp_ordenoperaciones_responsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Cedula` double DEFAULT NULL,
  `TelefonoPpal` double DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_ordenoperaciones_responsable
-- ----------------------------
INSERT INTO `lp_ordenoperaciones_responsable` VALUES ('1', 'Gregory Jimenez', '13505266', '4122628486', 'gregoryjimenez@gmail.com', null, null);
INSERT INTO `lp_ordenoperaciones_responsable` VALUES ('2', 'Luz Lozada', '122457770', '4162628486', 'luzlozada@gmail.com', null, null);

-- ----------------------------
-- Table structure for `lp_presentacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_presentacion`;
CREATE TABLE `lp_presentacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Presentacion` varchar(255) DEFAULT NULL,
  `PesoKg` decimal(11,2) DEFAULT NULL,
  `Observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_presentacion
-- ----------------------------
INSERT INTO `lp_presentacion` VALUES ('1', 'GRANEL', '1000.00', null, null, null);
INSERT INTO `lp_presentacion` VALUES ('2', 'SACOS', '50.00', null, null, null);

-- ----------------------------
-- Table structure for `lp_productos`
-- ----------------------------
DROP TABLE IF EXISTS `lp_productos`;
CREATE TABLE `lp_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_productos
-- ----------------------------
INSERT INTO `lp_productos` VALUES ('1', 'HARINA DE TRIGO', null, null);

-- ----------------------------
-- Table structure for `lp_productos_presentacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_productos_presentacion`;
CREATE TABLE `lp_productos_presentacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Producto` int(11) DEFAULT NULL,
  `id_Presentacion` int(11) DEFAULT NULL,
  `id_ProductosTipo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `PrecioCosto` decimal(11,2) NOT NULL DEFAULT '0.00',
  `PrecioVenta` decimal(11,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_productos_presentacion
-- ----------------------------
INSERT INTO `lp_productos_presentacion` VALUES ('1', '1', '1', '1', null, '0.00', '0.00', null);
INSERT INTO `lp_productos_presentacion` VALUES ('2', '1', '2', '2', null, '15000.00', '17000.89', null);

-- ----------------------------
-- Table structure for `lp_productos_tipo`
-- ----------------------------
DROP TABLE IF EXISTS `lp_productos_tipo`;
CREATE TABLE `lp_productos_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_productos_tipo
-- ----------------------------
INSERT INTO `lp_productos_tipo` VALUES ('1', 'MATERIA PRIMA', null, null);
INSERT INTO `lp_productos_tipo` VALUES ('2', 'PRODUCTO TERMINADO', null, null);

-- ----------------------------
-- Table structure for `lp_silo`
-- ----------------------------
DROP TABLE IF EXISTS `lp_silo`;
CREATE TABLE `lp_silo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` double DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `id_Responsable` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_silo
-- ----------------------------
INSERT INTO `lp_silo` VALUES ('1', 'SILO 1', 'DIRECCION', '4245116999', 'EMAIL@GMAIL.COM', '2', null, null);
INSERT INTO `lp_silo` VALUES ('2', 'SILO 2', 'DIRECCION', '4245116999', 'EMAIL@GMAIL.COM', '1', null, null);
INSERT INTO `lp_silo` VALUES ('3', 'SILO 3', 'FINAL CALLE 15 LA FE', '4245116999', 'correo@dominio.com', '2', '2019-04-14 00:27:20', '2019-04-14 00:27:20');
INSERT INTO `lp_silo` VALUES ('4', 'SILO 4', 'direccion 4', '4245116999', 'correo@dominio.com', '1', '2019-04-14 00:47:47', '2019-04-14 00:47:47');

-- ----------------------------
-- Table structure for `lp_silo_almacenes`
-- ----------------------------
DROP TABLE IF EXISTS `lp_silo_almacenes`;
CREATE TABLE `lp_silo_almacenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Silo` varchar(255) DEFAULT NULL,
  `cod_Almacen` varchar(255) DEFAULT NULL,
  `NombreAlmacen` varchar(255) DEFAULT NULL,
  `id_TipoAlmacen` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_silo_almacenes
-- ----------------------------
INSERT INTO `lp_silo_almacenes` VALUES ('1', '1', '1-11', 'ALMACEN MATERIA PRIMA', '1', null, null);
INSERT INTO `lp_silo_almacenes` VALUES ('2', '1', '11-22', 'ALMACEN PRODUCTO TERMINADO', '2', null, null);
INSERT INTO `lp_silo_almacenes` VALUES ('3', '2', '1-77', 'ALMACEN MATERIA PRIMA', '1', null, null);
INSERT INTO `lp_silo_almacenes` VALUES ('4', '2', '1-88', 'ALMACEN PRODUCTO TERMINADO', '2', null, null);

-- ----------------------------
-- Table structure for `lp_silo_almacenes_incorporacion`
-- ----------------------------
DROP TABLE IF EXISTS `lp_silo_almacenes_incorporacion`;
CREATE TABLE `lp_silo_almacenes_incorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_Incorporacion` varchar(255) DEFAULT '',
  `id_ProductoPresentacion` int(11) DEFAULT NULL,
  `id_SiloAlmacenes` int(11) DEFAULT NULL,
  `cant_Manufacturada` decimal(11,2) NOT NULL DEFAULT '0.00',
  `exist_Manufacturada` decimal(11,2) DEFAULT '0.00',
  `cant_Comprometida` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cant_Existencia` decimal(11,2) NOT NULL DEFAULT '0.00',
  `FechaRecepcion` varchar(255) DEFAULT NULL,
  `cant_Recibida` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cant_Merma` decimal(11,2) NOT NULL DEFAULT '0.00',
  `Nota` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_silo_almacenes_incorporacion
-- ----------------------------
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('169', '1-07042019-10', '1', '1', '152.00', '0.00', '0.00', '92.40', '07/04/2019', '100.00', '0.00', 'a', null, null);
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('175', '2-07042019-9', '2', '2', '0.00', '0.00', '15.00', '0.75', '07/04/2019', '15.00', '0.00', 'Proceso Autogenerado', null, '2019-04-07 20:29:46');
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('176', '2-07042019-9', '2', '2', '0.00', '0.00', '21.00', '1.05', '07/04/2019', '21.00', '0.00', 'Proceso Autogenerado', null, '2019-04-07 20:29:57');
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('177', '2-07042019-9', '2', '2', '0.00', '0.00', '22.00', '1.10', '07/04/2019', '22.00', '0.00', 'Proceso Autogenerado', null, '2019-04-07 20:30:08');
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('178', '2-07042019-9', '2', '2', '0.00', '0.00', '18.00', '0.90', '07/04/2019', '18.00', '0.00', 'Proceso Autogenerado', null, '2019-04-07 20:30:19');
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('179', '1-08042019-10', '1', '1', '20.00', '0.00', '0.00', '99.00', '14/04/2019', '100.00', '0.00', 'lo', null, null);
INSERT INTO `lp_silo_almacenes_incorporacion` VALUES ('180', '2-08042019-9', '2', '2', '0.00', '10.00', '10.00', '1.00', '08/04/2019', '20.00', '0.00', 'Proceso Autogenerado', null, '2019-04-08 01:44:51');

-- ----------------------------
-- Table structure for `lp_silo_almacenes_tipo`
-- ----------------------------
DROP TABLE IF EXISTS `lp_silo_almacenes_tipo`;
CREATE TABLE `lp_silo_almacenes_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TipoAlmacen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_silo_almacenes_tipo
-- ----------------------------
INSERT INTO `lp_silo_almacenes_tipo` VALUES ('1', 'Almacen de Mateia Prima');
INSERT INTO `lp_silo_almacenes_tipo` VALUES ('2', 'Almacen de Producto Terminado');

-- ----------------------------
-- Table structure for `lp_silo_responsable`
-- ----------------------------
DROP TABLE IF EXISTS `lp_silo_responsable`;
CREATE TABLE `lp_silo_responsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Cedula` double DEFAULT NULL,
  `TelefonoPpal` double DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lp_silo_responsable
-- ----------------------------
INSERT INTO `lp_silo_responsable` VALUES ('1', 'Gregory Jimenez', '13505266', '4122628486', 'gregoryjimenez@gmail.com', null, null);
INSERT INTO `lp_silo_responsable` VALUES ('2', 'Luz Lozada', '122457770', '4162628486', 'luzlozada@gmail.com', null, null);

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_03_22_023138_create_sessions_table', '2');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@example.com', '$2y$10$L/tQ8XVc9ser2y65U6wce.KBQcaSFHtwtmP4edBagFOrUx35mbrTK', 'gVESqUWcX8MaywJ1kIZodAUhXVw71jbuRMvd3ofKWmzKTbsxz6wZWSYAJDlq', '2019-03-22 00:11:34', '2019-03-22 00:11:34');

-- ----------------------------
-- Procedure structure for `asig_DistribuidoraDetalle`
-- ----------------------------
DROP PROCEDURE IF EXISTS `asig_DistribuidoraDetalle`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `asig_DistribuidoraDetalle`(
in _id_ProductosPresentacion integer,
in _id_DistribuidoraAlmacenes integer,
in _id_DistribuidoraAsignacion integer,
in _id_SiloAlmacenesIncorporacion integer,
in _PrecioDistribuidora decimal(11,2),
in _PrecioPanaderia decimal(11,2),
in _cant_Asignada decimal(11,2),
in _cant_NewExistencia decimal(11,2)
)
BEGIN
	declare resp integer;
	update lp_silo_almacenes_incorporacion set cant_Comprometida = _cant_Asignada, exist_Manufacturada = _cant_NewExistencia  where id = _id_DistribuidoraAsignacion;


insert into lp_distribuidora_almacenes_incorporacion (
id_ProductosPresentacion,
id_DistribuidoraAlmacenes,
id_DistribuidoraAsignacion,
id_SiloAlmacenesIncorporacion,
PrecioDistribuidora,
PrecioPanaderia,
cant_Recibida,
cant_Existencia

) values (
_id_ProductosPresentacion,
_id_DistribuidoraAlmacenes,
_id_DistribuidoraAsignacion,
_id_SiloAlmacenesIncorporacion,
_PrecioDistribuidora,
_PrecioPanaderia,
_cant_Asignada,
_cant_Asignada
);

set resp := last_insert_id();
select resp;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `asig_OrdenOperaciones`
-- ----------------------------
DROP PROCEDURE IF EXISTS `asig_OrdenOperaciones`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `asig_OrdenOperaciones`(in _id_OrdenOperaciones integer, in _FechaAsignacion varchar(50), in _id_Almacem integer)
BEGIN
declare resp integer;
declare C  integer;
declare _dist integer;
declare _client integer;
declare _id_ClienteDistribuidora integer;

set _dist = (select id_Distribuidora from lp_ordenoperaciones_planificacion limit 1 );
set _client = (select id_Cliente from lp_ordenoperaciones_planificacion limit 1 );

set _id_ClienteDistribuidora = (select id from lp_cliente_distribuidora where id_Distribuidora = _dist And id_Cliente = _client);

set C = _id_Almacem;
INSERT INTO lp_ordenoperaciones_asignacion (
id_OrdenOperaciones,
id_Cliente,
id_ClienteDistribuidora,
id_Distribuidora,
FechaAsignacion,
cant_SacosAsignada,
Cant_TonAsignada,
CostoPorSaco,
CostoDespacho,
id_Almacen
)
SELECT
lp_ordenoperaciones_planificacion.id_OrdenOperaciones,
lp_ordenoperaciones_planificacion.id_Cliente,
_id_ClienteDistribuidora as id_ClienteDistribuidora,
lp_ordenoperaciones_planificacion.id_Distribuidora,
_FechaAsignacion as FechaAsignacion,
lp_ordenoperaciones_planificacion.cant_Planificada as cant_SacosAsignada,
((lp_ordenoperaciones_planificacion.cant_Planificada * 50)/1000) AS Cant_TonAsignada,
lp_ordenoperaciones_planificacion.CostoPorSaco,
(lp_ordenoperaciones_planificacion.cant_Planificada * lp_ordenoperaciones_planificacion.CostoPorSaco) as CostoDespacho,
C as id_Almacen
FROM
lp_ordenoperaciones_planificacion;
DELETE from lp_ordenoperaciones_planificacion where id >0;
update lp_ordenoperaciones set status = 2 where id = _id_OrdenOperaciones;
set resp = 1;
select resp;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `asig_SiloDistribuidora`
-- ----------------------------
DROP PROCEDURE IF EXISTS `asig_SiloDistribuidora`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `asig_SiloDistribuidora`(
in _id_SiloAlmacen integer,
in _id_DistribuidoraAlmacenes integer,
in _FechaAsignacion varchar(50),
in _cant_Asignada decimal(11,2)
)
BEGIN
declare _id_DistribuidoraAsignacion integer;
insert into lp_distribuidora_asignacion (
id_DistribuidoraAlmacenes,
FechaAsignacion,
cant_Asignada,
cant_Recepcionada,
id_SiloAlmacen
) values (
_id_DistribuidoraAlmacenes,
_FechaAsignacion,
_cant_Asignada,
_cant_Asignada,
_id_SiloAlmacen
);
set _id_DistribuidoraAsignacion := last_insert_id();
SELECT
_id_DistribuidoraAsignacion as id_DistribuidoraAsignacion,
lp_silo_almacenes_incorporacion.exist_Manufacturada,
lp_silo_almacenes_incorporacion.id as id_SiloAlmacenesIncorporacion,
lp_silo_almacenes_incorporacion.cant_Comprometida
FROM
lp_silo_almacenes_incorporacion
WHERE
lp_silo_almacenes_incorporacion.id_SiloAlmacenes = _id_SiloAlmacen AND
lp_silo_almacenes_incorporacion.exist_Manufacturada > 0
ORDER BY
lp_silo_almacenes_incorporacion.id ASC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `disp_SiloAlmacen`
-- ----------------------------
DROP PROCEDURE IF EXISTS `disp_SiloAlmacen`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `disp_SiloAlmacen`(in _id_SiloAlmacenes integer)
BEGIN
SELECT
Sum(lp_silo_almacenes_incorporacion.exist_Manufacturada) as cant_Disponible
FROM
lp_silo_almacenes_incorporacion
WHERE
lp_silo_almacenes_incorporacion.id_SiloAlmacenes = _id_SiloAlmacenes;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `inst_SiloRecarga`
-- ----------------------------
DROP PROCEDURE IF EXISTS `inst_SiloRecarga`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `inst_SiloRecarga`(
in _cant_Recibida decimal(11,2), 
in _cod_Incorporacion varchar(255),
in _id_ProductoPresentacion integer,
in _id_Almacenes integer,
in _FechaRecepcion varchar(50),
in _nota varchar(50)
)
BEGIN

declare resp integer;
declare cod_Incorporacion varchar(50);
declare CountRecargaSilo integer;
SET CountRecargaSilo:= (SELECT lp_config.RecargaSilo FROM lp_config) + 1; 
set cod_Incorporacion = CONCAT(_cod_Incorporacion,CountRecargaSilo);

insert into lp_silo_almacenes_incorporacion (cod_Incorporacion,
id_ProductoPresentacion,id_SiloAlmacenes,cant_Existencia,
FechaRecepcion,cant_Recibida,Nota) values (cod_Incorporacion,
_id_ProductoPresentacion,_id_Almacenes,_cant_Recibida,
_FechaRecepcion,_cant_Recibida,_nota);
set resp = row_count();
update lp_config set RecargaSilo = CountRecargaSilo where id = 1;


Select resp;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_Distribuciones`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_Distribuciones`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_Distribuciones`(in _id_SiloAlmacenes integer)
BEGIN

SELECT
lp_distribuidora.Nombre AS Distribuidoras,
lp_distribuidora_almacenes.NombreAlmacen,
lp_distribuidora_asignacion.FechaAsignacion,
lp_distribuidora_asignacion.cant_Asignada,
lp_distribuidora_asignacion.cant_Recepcionada,
lp_distribuidora_asignacion.`Status`,
lp_distribuidora_almacenes_incorporacion.id AS id_AlmacenesIncorporacion,
lp_distribuidora_asignacion.id AS id_DistribuidoraAsignacion,
lp_silo_almacenes_incorporacion.id AS id_SiloAlmacenIncorporacion
FROM
lp_distribuidora_asignacion
INNER JOIN lp_distribuidora_almacenes ON lp_distribuidora_almacenes.id = lp_distribuidora_asignacion.id_DistribuidoraAlmacenes
INNER JOIN lp_distribuidora ON lp_distribuidora.id = lp_distribuidora_almacenes.id_Distribuidora
INNER JOIN lp_distribuidora_almacenes_incorporacion ON lp_distribuidora_asignacion.id_DistribuidoraAlmacenes = lp_distribuidora_almacenes_incorporacion.id_DistribuidoraAlmacenes
INNER JOIN lp_silo_almacenes_incorporacion ON lp_silo_almacenes_incorporacion.id = lp_distribuidora_almacenes_incorporacion.id_SiloAlmacenesIncorporacion
WHERE
lp_silo_almacenes_incorporacion.id_SiloAlmacenes = _id_SiloAlmacenes;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_Distribuidoras`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_Distribuidoras`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_Distribuidoras`()
BEGIN
SELECT
lp_distribuidora.Nombre AS NombreDistribuidora,
lp_distribuidora.id
FROM
lp_distribuidora;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_DistribuidorasAlmacenes`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_DistribuidorasAlmacenes`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_DistribuidorasAlmacenes`(in _id_distribuidoras integer)
BEGIN

SELECT
lp_distribuidora_almacenes.NombreAlmacen,
lp_distribuidora_almacenes.id
FROM
lp_distribuidora_almacenes
WHERE
lp_distribuidora_almacenes.id_Distribuidora = _id_distribuidoras;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_Productos`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_Productos`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_Productos`(in _TipoProducto integer)
BEGIN
IF _TipoProducto > 0 then
SELECT
lp_productos.Nombre,
lp_presentacion.Presentacion,
lp_presentacion.PesoKg,
lp_productos_presentacion.id AS id_productos_presentacion
FROM
lp_productos
INNER JOIN lp_productos_presentacion ON lp_productos.id = lp_productos_presentacion.id_Producto
INNER JOIN lp_presentacion ON lp_productos_presentacion.id_Presentacion = lp_presentacion.id
WHERE
lp_productos_presentacion.id_ProductosTipo = _TipoProducto;
else
SELECT
lp_productos.Nombre,
lp_presentacion.Presentacion,
lp_presentacion.PesoKg,
lp_productos_presentacion.id AS id_productos_presentacion
FROM
lp_productos
INNER JOIN lp_productos_presentacion ON lp_productos.id = lp_productos_presentacion.id_Producto
INNER JOIN lp_presentacion ON lp_productos_presentacion.id_Presentacion = lp_presentacion.id;
end IF;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_Silo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_Silo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_Silo`()
BEGIN
SELECT
lp_silo.id,
lp_silo.Nombre
FROM
lp_silo;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_SiloAlmacen`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_SiloAlmacen`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_SiloAlmacen`(in _id_Silo integer, in _tipoAlmacen integer)
BEGIN

IF _tipoAlmacen > 0 then
SELECT
lp_silo_almacenes.NombreAlmacen,
lp_silo_almacenes.id
FROM
lp_silo_almacenes
WHERE
lp_silo_almacenes.id_Silo = _id_silo and id_TipoAlmacen = _tipoAlmacen ;
else
SELECT
lp_silo_almacenes.NombreAlmacen,
lp_silo_almacenes.id
FROM
lp_silo_almacenes
WHERE
lp_silo_almacenes.id_Silo = _id_silo ;
end IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `list_SiloRegistroRecarga`
-- ----------------------------
DROP PROCEDURE IF EXISTS `list_SiloRegistroRecarga`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `list_SiloRegistroRecarga`(in _id_silo integer)
BEGIN

SELECT
lp_silo_almacenes_incorporacion.FechaRecepcion,
lp_silo_almacenes_incorporacion.cod_Incorporacion,
lp_silo_almacenes_incorporacion.cant_Merma,
lp_silo_almacenes_incorporacion.cant_Existencia,
lp_silo_almacenes_incorporacion.cant_Manufacturada,
lp_silo_almacenes_incorporacion.id AS id_SiloAlmacenIncorporacion,
lp_productos.Nombre AS Producto
FROM
lp_silo_almacenes_incorporacion
INNER JOIN lp_silo_almacenes ON lp_silo_almacenes.id = lp_silo_almacenes_incorporacion.id_SiloAlmacenes
INNER JOIN lp_productos_presentacion ON lp_productos_presentacion.id = lp_silo_almacenes_incorporacion.id_ProductoPresentacion
INNER JOIN lp_productos ON lp_productos_presentacion.id_Producto = lp_productos.id
WHERE
lp_silo_almacenes.id_Silo = _id_silo AND
lp_productos_presentacion.id_ProductosTipo = 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `update_SiloManufactura`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_SiloManufactura`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_SiloManufactura`(
in _idSiloAlmacenIncorporacion integer, 
in _existencia decimal(11,2), 
in  _cant_Manufacturada decimal(11,2),
in _cod_Incorporacion varchar(255),
in _id_ProductoPresentación integer,
in _id_Almacenes integer,
in _FechaRecepcion varchar(50)
)
BEGIN
declare resp int;
declare CountManufactura varchar(50);
declare cod_Incorporacion varchar(50);
declare  cant_Manufacturada decimal(11,2); 
declare  exist_Manufacturada decimal(11,2); 

SET CountManufactura:= (SELECT lp_config.RecargaSilo FROM lp_config) + 1; 
set cant_Manufacturada := (SELECT lp_silo_almacenes_incorporacion.cant_Manufacturada FROM lp_silo_almacenes_incorporacion WHERE lp_silo_almacenes_incorporacion.id = _idSiloAlmacenIncorporacion) + _cant_Manufacturada;

update lp_silo_almacenes_incorporacion set cant_Existencia = _existencia, cant_Manufacturada = cant_Manufacturada where id = _idSiloAlmacenIncorporacion;
SET CountManufactura:= (SELECT lp_config.RecargaManufactura FROM lp_config) + 1; 
set cod_Incorporacion = CONCAT(_cod_Incorporacion,CountManufactura);

insert into lp_silo_almacenes_incorporacion (cod_Incorporacion,
id_ProductoPresentacion,id_SiloAlmacenes,cant_Existencia,
FechaRecepcion,cant_Recibida,Nota,exist_Manufacturada) values (cod_Incorporacion,
_id_ProductoPresentacion,_id_Almacenes,((_cant_Manufacturada*50)/1000),
_FechaRecepcion,_cant_Manufacturada,'Proceso Autogenerado',_cant_Manufacturada);

update lp_config set RecargaSilo = CountManufactura where id = 1;
set resp = row_count();
Select resp;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `update_SiloMerma`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_SiloMerma`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_SiloMerma`(in _idSiloAlmacenIncorporacion integer, in _existencia decimal(11,2), in  _cantMerma decimal(11,2))
BEGIN
declare resp int;
update lp_silo_almacenes_incorporacion set cant_Existencia = _existencia, cant_Merma = _cantMerma where id = _idSiloAlmacenIncorporacion;
set resp = row_count();
Select resp;
END
;;
DELIMITER ;
