insert into UTILISATEUR(idUt,pseudoUt,emailUT,mdpUt,activeUt,idRole) values
	(1001,'ght1ordi','ght1ordi@free.fr','1mdp','O',2);
	
insert into OBJET(idOb,nomOb,descriptionOb,idCat,idUt) values
	(510,'Scie comme neuve','Scie comme neuveLorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec facilisis, ligula vel posuere cursus, sapien leo dictum nisi, interdum aliquam sem nisi ac purus.',4,1001),
	(511,'Chemise jamais servie','Chemise jamais servieLorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec facilisis, ligula vel posuere cursus, sapien leo dictum nisi, interdum aliquam sem nisi ac purus.',1,1001),
	(512,'Pantalon jaune','Pantalon jauneLorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec facilisis, ligula vel posuere cursus, sapien leo dictum nisi, interdum aliquam sem nisi ac purus.',1,1001),
	(513,'Chapeau rouge','Chapeau rougeLorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec facilisis, ligula vel posuere cursus, sapien leo dictum nisi, interdum aliquam sem nisi ac purus.',1,1001),
	(514,'Chemise rouge','Chemise rougeLorem ipsum dolor sit amet, consectetur adipiscing elit.
Donec facilisis, ligula vel posuere cursus, sapien leo dictum nisi, interdum aliquam sem nisi ac purus.',1,1001);

insert into VENTE(idVe,prixBase,prixMin,debutVe,finVe,idSt,idOb) values
	(510,73,102,STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),DATE_ADD(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'), INTERVAL 6 DAY),4,510),
	(511,505,690,STR_TO_DATE('7/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),DATE_ADD(STR_TO_DATE('7/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'), INTERVAL 4 DAY),4,511),
	(512,202,388,STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),DATE_ADD(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'), INTERVAL 3 DAY),4,512),
	(513,2,3,STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),DATE_ADD(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'), INTERVAL 5 DAY),4,513),
	(514,503,942,STR_TO_DATE('28/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),DATE_ADD(STR_TO_DATE('28/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'), INTERVAL 7 DAY),4,514);
	
insert into ENCHERIR(idUT,idVe,dateheure,montant) values
	(307,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 292 minute),127),
	(526,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 379 minute),184),
	(67,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 845 minute),197),
	(376,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1018 minute),200),
	(511,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1462 minute),271),
	(534,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1523 minute),280),
	(565,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1900 minute),298),
	(831,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2002 minute),317),
	(923,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2302 minute),356),
	(111,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2497 minute),422),
	(720,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2869 minute),446),
	(21,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 3354 minute),481),
	(486,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 3684 minute),505),
	(893,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 4039 minute),533),
	(247,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 4351 minute),572),
	(415,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 4394 minute),586),
	(307,510,date_add(STR_TO_DATE('1/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 4667 minute),588),
	(307,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 76 minute),340),
	(176,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 146 minute),397),
	(684,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 159 minute),449),
	(776,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 171 minute),583),
	(222,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 253 minute),776),
	(687,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 402 minute),967),
	(337,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 574 minute),1131),
	(147,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 619 minute),1141),
	(825,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 643 minute),1330),
	(314,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 823 minute),1517),
	(473,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 862 minute),1573),
	(222,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 877 minute),1720),
	(214,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 951 minute),1885),
	(847,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1060 minute),2047),
	(458,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1220 minute),2059),
	(117,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1370 minute),2218),
	(295,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1444 minute),2296),
	(364,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1447 minute),2458),
	(307,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1572 minute),2582),
	(176,512,date_add(STR_TO_DATE('14/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1590 minute),2758),
	(984,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 887 minute),3),
	(601,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1275 minute),4),
	(432,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 1466 minute),6),
	(632,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2186 minute),8),
	(421,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 2979 minute),10),
	(984,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 3214 minute),11),
	(601,513,date_add(STR_TO_DATE('21/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 3551 minute),13),
	(373,514,date_add(STR_TO_DATE('28/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 3777 minute),873),
	(663,514,date_add(STR_TO_DATE('28/2/2023:10:00:00','%d/%m/%Y:%h:%i:%s'),interval 5391 minute),1031);
