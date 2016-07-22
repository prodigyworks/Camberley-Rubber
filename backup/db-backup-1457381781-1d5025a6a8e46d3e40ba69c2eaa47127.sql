DROP TABLE camberley_alarmschecklist;

CREATE TABLE `camberley_alarmschecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `cpid` int(11) NOT NULL,
  `faultsfound` int(11) NOT NULL,
  `faultsfound_notes` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_alarmschecklist VALUES("1","1","2016-02-17 10:20:00","1","131","81922","1",0x,0x,"1","1","2016-02-17 10:21:05","2016-02-17 10:21:05");



DROP TABLE camberley_alarmtestchecklist;

CREATE TABLE `camberley_alarmtestchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `faultsfound` int(11) NOT NULL,
  `faultsfound_notes` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_applicationactionroles;

CREATE TABLE `camberley_applicationactionroles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `actionid` int(11) DEFAULT NULL,
  `roleid` varchar(20) NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1053 DEFAULT CHARSET=latin1;

INSERT INTO camberley_applicationactionroles VALUES("699","510","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("698","509","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("697","508","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("696","507","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("695","506","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("694","505","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("693","504","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("692","503","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("691","502","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("690","501","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("689","500","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("688","499","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("687","498","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("686","497","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("685","496","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("684","495","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("683","494","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("682","493","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("681","492","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("680","491","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("679","490","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("678","489","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("677","488","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("676","487","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("675","486","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("674","485","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("673","484","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("672","483","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("671","482","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("670","481","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("669","480","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("668","479","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("667","478","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("666","477","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("665","476","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("664","475","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("663","474","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("662","473","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("661","472","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("660","471","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("659","470","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("658","469","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("657","468","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("656","467","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("655","466","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("654","465","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("653","464","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("652","463","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("651","462","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("650","461","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("649","460","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("648","459","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("647","458","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("646","457","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("645","456","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("644","455","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("643","454","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("642","453","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("641","452","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("640","451","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("639","450","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("638","449","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("637","448","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("636","447","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("635","446","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("634","445","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("633","444","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("632","443","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("631","442","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("630","441","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("629","440","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("628","439","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("627","438","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("626","437","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("625","436","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("624","435","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("623","434","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("622","433","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("700","511","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("701","512","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("702","513","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("703","514","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("704","515","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("705","516","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("706","517","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("707","518","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("708","519","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("709","520","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("710","521","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("711","522","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("712","523","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("713","524","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("714","525","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("715","526","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("716","527","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("717","528","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("718","529","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("719","530","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("720","531","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("721","532","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("722","533","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("723","534","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("724","535","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("725","536","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("726","537","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("727","538","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("728","539","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("729","540","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("730","541","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("731","542","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("732","543","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("733","544","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("734","545","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("735","546","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("736","547","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("737","548","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("738","549","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("739","550","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("740","551","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("741","552","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("742","553","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("743","554","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("744","555","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("745","556","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("746","557","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("747","558","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("748","559","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("749","560","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("750","561","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("751","562","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("752","563","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("753","564","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("754","565","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("755","566","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("756","567","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("757","568","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("758","569","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("759","570","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("760","571","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("761","572","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("762","573","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("763","574","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("764","575","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("765","576","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("766","577","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("767","578","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("768","579","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("769","580","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("770","581","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("771","582","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("772","583","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactionroles VALUES("773","584","PUBLIC","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactionroles VALUES("774","585","PUBLIC","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactionroles VALUES("775","586","PUBLIC","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactionroles VALUES("776","587","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("777","588","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("778","589","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("779","590","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("780","591","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("781","592","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("782","593","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("783","594","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("784","595","PUBLIC","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactionroles VALUES("785","596","PUBLIC","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactionroles VALUES("786","597","PUBLIC","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactionroles VALUES("787","598","PUBLIC","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactionroles VALUES("788","599","PUBLIC","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactionroles VALUES("789","600","PUBLIC","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactionroles VALUES("790","601","PUBLIC","2014-03-31 14:14:13","1","2014-03-31 14:14:13","1");
INSERT INTO camberley_applicationactionroles VALUES("791","602","PUBLIC","2014-04-04 15:46:57","1","2014-04-04 15:46:57","1");
INSERT INTO camberley_applicationactionroles VALUES("792","603","PUBLIC","2014-05-13 17:42:51","1","2014-05-13 17:42:51","1");
INSERT INTO camberley_applicationactionroles VALUES("793","604","PUBLIC","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactionroles VALUES("794","605","PUBLIC","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactionroles VALUES("795","606","PUBLIC","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactionroles VALUES("796","607","PUBLIC","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactionroles VALUES("797","608","PUBLIC","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactionroles VALUES("798","609","PUBLIC","2014-05-19 12:49:43","1","2014-05-19 12:49:43","1");
INSERT INTO camberley_applicationactionroles VALUES("799","610","PUBLIC","2014-09-04 10:08:59","1","2014-09-04 10:08:59","1");
INSERT INTO camberley_applicationactionroles VALUES("800","611","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("801","612","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("802","613","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("803","614","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("804","615","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("805","616","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("806","617","PUBLIC","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactionroles VALUES("807","618","PUBLIC","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactionroles VALUES("808","619","PUBLIC","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactionroles VALUES("809","620","PUBLIC","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactionroles VALUES("810","621","PUBLIC","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactionroles VALUES("811","622","PUBLIC","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactionroles VALUES("812","623","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("813","624","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("814","625","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("815","626","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("816","627","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("817","628","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("818","629","PUBLIC","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactionroles VALUES("819","630","PUBLIC","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactionroles VALUES("820","631","PUBLIC","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactionroles VALUES("821","632","PUBLIC","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactionroles VALUES("822","633","PUBLIC","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactionroles VALUES("823","634","PUBLIC","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactionroles VALUES("824","635","PUBLIC","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactionroles VALUES("825","636","PUBLIC","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactionroles VALUES("826","637","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("827","638","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("828","639","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("829","640","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("830","641","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("831","642","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("832","643","PUBLIC","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactionroles VALUES("833","644","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("834","645","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("835","646","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("836","647","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("837","648","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("838","649","PUBLIC","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactionroles VALUES("839","650","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("840","651","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("841","652","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("842","653","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("843","654","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("844","655","PUBLIC","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactionroles VALUES("845","656","PUBLIC","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactionroles VALUES("846","657","PUBLIC","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactionroles VALUES("847","658","PUBLIC","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactionroles VALUES("848","659","PUBLIC","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactionroles VALUES("849","660","PUBLIC","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactionroles VALUES("850","661","PUBLIC","2014-10-13 20:52:27","1","2014-10-13 20:52:27","1");
INSERT INTO camberley_applicationactionroles VALUES("851","662","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("852","663","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("853","664","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("854","665","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("855","666","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("856","667","PUBLIC","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactionroles VALUES("857","668","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("858","669","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("859","670","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("860","671","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("861","672","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("862","673","PUBLIC","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactionroles VALUES("863","674","PUBLIC","2014-11-29 17:10:44","1","2014-11-29 17:10:44","1");
INSERT INTO camberley_applicationactionroles VALUES("864","675","PUBLIC","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactionroles VALUES("865","676","PUBLIC","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactionroles VALUES("866","677","PUBLIC","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactionroles VALUES("867","678","PUBLIC","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactionroles VALUES("868","679","PUBLIC","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactionroles VALUES("869","680","PUBLIC","2014-11-30 21:37:50","1","2014-11-30 21:37:50","1");
INSERT INTO camberley_applicationactionroles VALUES("870","681","PUBLIC","2014-11-30 22:08:03","1","2014-11-30 22:08:03","1");
INSERT INTO camberley_applicationactionroles VALUES("871","682","PUBLIC","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactionroles VALUES("872","683","PUBLIC","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactionroles VALUES("873","684","PUBLIC","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactionroles VALUES("874","685","PUBLIC","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactionroles VALUES("875","686","PUBLIC","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactionroles VALUES("876","687","PUBLIC","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactionroles VALUES("877","688","PUBLIC","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactionroles VALUES("878","689","PUBLIC","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactionroles VALUES("879","690","PUBLIC","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactionroles VALUES("880","691","PUBLIC","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactionroles VALUES("881","692","PUBLIC","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactionroles VALUES("882","693","PUBLIC","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactionroles VALUES("883","694","PUBLIC","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactionroles VALUES("884","695","PUBLIC","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactionroles VALUES("885","696","PUBLIC","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactionroles VALUES("886","697","PUBLIC","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactionroles VALUES("887","698","PUBLIC","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactionroles VALUES("888","699","PUBLIC","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactionroles VALUES("889","700","PUBLIC","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactionroles VALUES("890","701","PUBLIC","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactionroles VALUES("891","702","PUBLIC","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactionroles VALUES("892","703","PUBLIC","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactionroles VALUES("893","704","PUBLIC","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactionroles VALUES("894","705","PUBLIC","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactionroles VALUES("895","706","PUBLIC","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactionroles VALUES("896","707","PUBLIC","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactionroles VALUES("897","708","PUBLIC","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactionroles VALUES("898","709","PUBLIC","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactionroles VALUES("899","710","PUBLIC","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactionroles VALUES("900","711","PUBLIC","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactionroles VALUES("901","712","PUBLIC","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactionroles VALUES("902","713","PUBLIC","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactionroles VALUES("903","714","PUBLIC","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactionroles VALUES("904","715","PUBLIC","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactionroles VALUES("905","716","PUBLIC","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactionroles VALUES("906","717","PUBLIC","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactionroles VALUES("907","718","PUBLIC","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactionroles VALUES("908","719","PUBLIC","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactionroles VALUES("909","720","PUBLIC","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactionroles VALUES("910","721","PUBLIC","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactionroles VALUES("911","722","PUBLIC","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactionroles VALUES("912","723","PUBLIC","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactionroles VALUES("913","724","PUBLIC","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactionroles VALUES("914","725","PUBLIC","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactionroles VALUES("915","726","PUBLIC","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactionroles VALUES("916","727","PUBLIC","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactionroles VALUES("917","728","PUBLIC","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactionroles VALUES("918","729","PUBLIC","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactionroles VALUES("919","730","PUBLIC","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactionroles VALUES("920","731","PUBLIC","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactionroles VALUES("921","732","PUBLIC","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactionroles VALUES("922","733","PUBLIC","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactionroles VALUES("923","734","PUBLIC","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactionroles VALUES("924","735","PUBLIC","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactionroles VALUES("925","736","PUBLIC","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactionroles VALUES("926","737","PUBLIC","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactionroles VALUES("927","738","PUBLIC","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactionroles VALUES("928","739","PUBLIC","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactionroles VALUES("929","740","PUBLIC","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactionroles VALUES("930","741","PUBLIC","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactionroles VALUES("931","742","PUBLIC","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactionroles VALUES("932","743","PUBLIC","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactionroles VALUES("933","744","PUBLIC","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactionroles VALUES("934","745","PUBLIC","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactionroles VALUES("935","746","PUBLIC","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactionroles VALUES("936","747","PUBLIC","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactionroles VALUES("937","748","PUBLIC","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactionroles VALUES("938","749","PUBLIC","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactionroles VALUES("939","750","PUBLIC","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactionroles VALUES("940","751","PUBLIC","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactionroles VALUES("941","752","PUBLIC","2014-12-22 13:30:40","1","2014-12-22 13:30:40","1");
INSERT INTO camberley_applicationactionroles VALUES("942","753","PUBLIC","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactionroles VALUES("943","754","PUBLIC","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactionroles VALUES("944","755","PUBLIC","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactionroles VALUES("945","756","PUBLIC","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactionroles VALUES("946","757","PUBLIC","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactionroles VALUES("947","758","PUBLIC","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactionroles VALUES("948","759","PUBLIC","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactionroles VALUES("949","760","PUBLIC","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactionroles VALUES("950","761","PUBLIC","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactionroles VALUES("951","762","PUBLIC","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactionroles VALUES("952","763","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("953","764","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("954","765","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("955","766","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("956","767","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("957","768","PUBLIC","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactionroles VALUES("958","769","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("959","770","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("960","771","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("961","772","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("962","773","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("963","774","PUBLIC","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactionroles VALUES("964","775","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("965","776","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("966","777","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("967","778","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("968","779","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("969","780","PUBLIC","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactionroles VALUES("970","781","PUBLIC","2014-12-28 11:57:55","1","2014-12-28 11:57:55","1");
INSERT INTO camberley_applicationactionroles VALUES("971","782","PUBLIC","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactionroles VALUES("972","783","PUBLIC","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactionroles VALUES("973","784","PUBLIC","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactionroles VALUES("974","785","PUBLIC","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactionroles VALUES("975","786","PUBLIC","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactionroles VALUES("976","787","PUBLIC","2015-01-06 20:31:32","1","2015-01-06 20:31:32","1");
INSERT INTO camberley_applicationactionroles VALUES("977","788","PUBLIC","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactionroles VALUES("978","789","PUBLIC","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactionroles VALUES("979","790","PUBLIC","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactionroles VALUES("980","791","PUBLIC","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactionroles VALUES("981","792","PUBLIC","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactionroles VALUES("982","793","PUBLIC","2015-01-22 18:54:08","1","2015-01-22 18:54:08","1");
INSERT INTO camberley_applicationactionroles VALUES("983","794","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("984","795","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("985","796","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("986","797","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("987","798","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("988","799","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("989","800","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("990","801","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("991","802","PUBLIC","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactionroles VALUES("992","803","PUBLIC","2015-06-15 11:15:06","1","2015-06-15 11:15:06","1");
INSERT INTO camberley_applicationactionroles VALUES("993","804","PUBLIC","2015-06-15 11:59:42","1","2015-06-15 11:59:42","1");
INSERT INTO camberley_applicationactionroles VALUES("994","805","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("995","806","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("996","807","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("997","808","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("998","809","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("999","810","PUBLIC","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactionroles VALUES("1000","811","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1001","812","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1002","813","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1003","814","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1004","815","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1005","816","PUBLIC","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactionroles VALUES("1006","817","PUBLIC","2015-06-18 18:56:14","1","2015-06-18 18:56:14","1");
INSERT INTO camberley_applicationactionroles VALUES("1007","818","PUBLIC","2015-10-20 18:14:15","1","2015-10-20 18:14:15","1");
INSERT INTO camberley_applicationactionroles VALUES("1008","819","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1009","820","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1010","821","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1011","822","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1012","823","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1013","824","PUBLIC","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1014","825","PUBLIC","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactionroles VALUES("1015","826","PUBLIC","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactionroles VALUES("1016","827","PUBLIC","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactionroles VALUES("1017","828","PUBLIC","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactionroles VALUES("1018","829","PUBLIC","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactionroles VALUES("1019","830","PUBLIC","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactionroles VALUES("1020","831","PUBLIC","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactionroles VALUES("1021","832","PUBLIC","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactionroles VALUES("1022","833","PUBLIC","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactionroles VALUES("1023","834","PUBLIC","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactionroles VALUES("1024","835","PUBLIC","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactionroles VALUES("1025","836","PUBLIC","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactionroles VALUES("1026","837","PUBLIC","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactionroles VALUES("1027","838","PUBLIC","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactionroles VALUES("1028","839","PUBLIC","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactionroles VALUES("1029","840","PUBLIC","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactionroles VALUES("1030","841","PUBLIC","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactionroles VALUES("1031","842","PUBLIC","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactionroles VALUES("1032","843","PUBLIC","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactionroles VALUES("1033","844","PUBLIC","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactionroles VALUES("1034","845","PUBLIC","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactionroles VALUES("1035","846","PUBLIC","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactionroles VALUES("1036","847","PUBLIC","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactionroles VALUES("1037","848","PUBLIC","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactionroles VALUES("1038","849","PUBLIC","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactionroles VALUES("1039","850","PUBLIC","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactionroles VALUES("1040","851","PUBLIC","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactionroles VALUES("1041","852","PUBLIC","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactionroles VALUES("1042","853","PUBLIC","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactionroles VALUES("1043","854","PUBLIC","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactionroles VALUES("1044","855","PUBLIC","2016-01-18 09:15:05","1","2016-01-18 09:15:05","1");
INSERT INTO camberley_applicationactionroles VALUES("1045","856","PUBLIC","2016-01-18 09:18:33","1","2016-01-18 09:18:33","1");
INSERT INTO camberley_applicationactionroles VALUES("1046","857","PUBLIC","2016-01-18 10:33:11","1","2016-01-18 10:33:11","1");
INSERT INTO camberley_applicationactionroles VALUES("1047","858","PUBLIC","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactionroles VALUES("1048","859","PUBLIC","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactionroles VALUES("1049","860","PUBLIC","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactionroles VALUES("1050","861","PUBLIC","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");
INSERT INTO camberley_applicationactionroles VALUES("1051","862","PUBLIC","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");
INSERT INTO camberley_applicationactionroles VALUES("1052","863","PUBLIC","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");



DROP TABLE camberley_applicationactions;

CREATE TABLE `camberley_applicationactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pageid` int(11) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=864 DEFAULT CHARSET=latin1;

INSERT INTO camberley_applicationactions VALUES("505","7218","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("504","7207","Print","printInvoiceReport","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("503","7207","Invoice Items","redirectEdit","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("502","7207","Invoice Items","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("501","7158","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("500","7214","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("499","7214","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("498","7214","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("497","7214","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("496","7214","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("495","4","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("494","4","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("493","4","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("492","11","User Roles","userRoles","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("491","11","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("490","11","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("489","11","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("488","11","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("487","11","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("486","130","Live","live","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("485","130","Expire","expire","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("484","130","User Roles","userRoles","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("483","130","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("482","130","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("481","130","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("480","130","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("479","7211","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("478","7211","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("477","7211","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("476","7211","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("475","7211","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("474","7210","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("473","7210","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("472","7210","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("471","7210","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("470","7207","Print","printinvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("469","7208","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("468","7208","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("467","7208","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("466","7208","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("465","7208","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("464","7165","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("463","7165","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("462","7165","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("461","7165","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("460","7165","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("459","7160","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("458","7160","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("457","7160","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("456","7160","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("455","7160","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("454","7207","Remove","removeSelectedRow","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("453","7207","Edit","editSelectedRow","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("452","7207","View","viewSelectedRow","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("451","7207","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("450","7207","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("449","7207","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("448","7207","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("447","7207","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("446","7105","Move Down","sequenceDown","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("445","7105","Move Up","sequenceUp","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("444","7105","Content","editContent","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("443","7105","Roles","pageRoles","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("442","7105","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("441","7105","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("440","7105","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("439","7105","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("438","7105","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("437","7158","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("436","7158","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("435","7158","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("434","7158","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("433","7158","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("506","7218","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("507","7218","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("508","7218","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("509","7218","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("510","7218","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("511","7158","Documents","viewDocument","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("512","7158","Documents","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("513","7219","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("514","7219","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("515","7219","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("516","7219","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("517","7219","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("518","7158","Typists","editTypists","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("519","7220","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("520","7220","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("521","7220","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("522","7220","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("523","7220","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("524","7220","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("525","7220","Documents","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("526","7221","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("527","7221","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("528","7221","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("529","7221","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("530","7221","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("531","7223","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("532","7223","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("533","7223","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("534","7223","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("535","7223","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("536","7223","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("537","7223","Documents","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("538","7223","Invoice","addCrud","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("539","7223","Invoice","editCrudItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("540","7223","Invoice","edit","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("541","7225","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("542","7225","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("543","7225","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("544","7225","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("545","7225","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("546","7158","Quote","editQuote","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("547","7226","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("548","7226","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("549","7226","View / Edit Quote","redirectEdit","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("550","7226","Print","printQuoteReport","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("551","7218","Quote","editQuote","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("552","7218","Transcripts","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("553","7229","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("554","7229","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("555","7229","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("556","7229","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("557","7229","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("558","7230","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("559","7230","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("560","7230","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("561","7230","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("562","7230","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("563","7232","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("564","7232","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("565","7232","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("566","7232","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("567","7232","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("568","7232","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("569","7232","Quote","editQuote","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("570","7232","Documents","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("571","7231","Filter","Filter","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("572","7231","Add item","AddItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("573","7231","View item","ViewItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("574","7231","Edit item","EditItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("575","7231","Remove item","RemoveItem","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("576","7231","Invoice","editInvoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("577","7231","Quote","editQuote","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("578","7231","Documents","editDocuments","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("579","7158","Running","running","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("580","7231","Running","running","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("581","7223","Running","running","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("582","7223","Invoice","invoice","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("583","7223","View Case Information","viewCase","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_applicationactions VALUES("584","7233","Filter","Filter","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactions VALUES("585","7233","View item","ViewItem","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactions VALUES("586","7233","Remove item","RemoveItem","2014-02-17 10:04:39","1","2014-02-17 10:04:39","1");
INSERT INTO camberley_applicationactions VALUES("587","7235","Filter","Filter","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("588","7235","Add item","AddItem","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("589","7235","View item","ViewItem","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("590","7235","Edit item","EditItem","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("591","7235","Remove item","RemoveItem","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("592","7235","Invoice","editInvoice","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("593","7235","Quote","editQuote","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("594","7235","Running","running","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("595","7235","Documents","editDocuments","2014-02-20 18:19:35","1","2014-02-20 18:19:35","1");
INSERT INTO camberley_applicationactions VALUES("596","7238","Filter","Filter","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactions VALUES("597","7238","Add item","AddItem","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactions VALUES("598","7238","View item","ViewItem","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactions VALUES("599","7238","Edit item","EditItem","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactions VALUES("600","7238","Remove item","RemoveItem","2014-03-24 10:52:42","1","2014-03-24 10:52:42","1");
INSERT INTO camberley_applicationactions VALUES("601","7158","Contacts","editContact","2014-03-31 14:14:13","1","2014-03-31 14:14:13","1");
INSERT INTO camberley_applicationactions VALUES("602","7231","Contacts","editContact","2014-04-04 15:46:57","1","2014-04-04 15:46:57","1");
INSERT INTO camberley_applicationactions VALUES("603","7210","Add item","AddItem","2014-05-13 17:42:51","1","2014-05-13 17:42:51","1");
INSERT INTO camberley_applicationactions VALUES("604","7176","Filter","Filter","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactions VALUES("605","7176","Add item","AddItem","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactions VALUES("606","7176","View item","ViewItem","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactions VALUES("607","7176","Edit item","EditItem","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactions VALUES("608","7176","Remove item","RemoveItem","2014-05-14 13:37:14","1","2014-05-14 13:37:14","1");
INSERT INTO camberley_applicationactions VALUES("609","7176","Map","showMap","2014-05-19 12:49:43","1","2014-05-19 12:49:43","1");
INSERT INTO camberley_applicationactions VALUES("610","7176","Delivery Note","printDeliveryNote","2014-09-04 10:08:59","1","2014-09-04 10:08:59","1");
INSERT INTO camberley_applicationactions VALUES("611","7243","Filter","Filter","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("612","7243","Add item","AddItem","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("613","7243","View item","ViewItem","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("614","7243","Edit item","EditItem","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("615","7243","Remove item","RemoveItem","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("616","7243","Approve","approveHoliday","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("617","7243","Reject","rejectHoliday","2014-10-09 19:56:41","1","2014-10-09 19:56:41","1");
INSERT INTO camberley_applicationactions VALUES("618","7244","Filter","Filter","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactions VALUES("619","7244","Add item","AddItem","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactions VALUES("620","7244","View item","ViewItem","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactions VALUES("621","7244","Edit item","EditItem","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactions VALUES("622","7244","Remove item","RemoveItem","2014-10-09 20:11:08","1","2014-10-09 20:11:08","1");
INSERT INTO camberley_applicationactions VALUES("623","7240","Filter","Filter","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("624","7240","Add item","AddItem","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("625","7240","View item","ViewItem","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("626","7240","Edit item","EditItem","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("627","7240","Remove item","RemoveItem","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("628","7240","Approve","approveHoliday","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("629","7240","Reject","rejectHoliday","2014-10-10 22:40:08","1","2014-10-10 22:40:08","1");
INSERT INTO camberley_applicationactions VALUES("630","7247","Filter","Filter","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactions VALUES("631","7247","View item","ViewItem","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactions VALUES("632","7247","Remove item","RemoveItem","2014-10-10 22:52:43","1","2014-10-10 22:52:43","1");
INSERT INTO camberley_applicationactions VALUES("633","7248","Filter","Filter","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactions VALUES("634","7248","View item","ViewItem","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactions VALUES("635","7248","Remove item","RemoveItem","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactions VALUES("636","7248","Approve","approveHoliday","2014-10-10 22:53:13","1","2014-10-10 22:53:13","1");
INSERT INTO camberley_applicationactions VALUES("637","7241","Filter","Filter","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("638","7241","Add item","AddItem","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("639","7241","View item","ViewItem","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("640","7241","Edit item","EditItem","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("641","7241","Remove item","RemoveItem","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("642","7241","Approve","approveAbsence","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("643","7241","Reject","rejectAbsence","2014-10-11 13:29:36","1","2014-10-11 13:29:36","1");
INSERT INTO camberley_applicationactions VALUES("644","7254","Filter","Filter","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("645","7254","View item","ViewItem","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("646","7254","Edit item","EditItem","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("647","7254","Remove item","RemoveItem","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("648","7254","Approve","approveAbsence","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("649","7254","Reject","rejectAbsence","2014-10-11 13:32:00","1","2014-10-11 13:32:00","1");
INSERT INTO camberley_applicationactions VALUES("650","7253","Filter","Filter","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("651","7253","View item","ViewItem","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("652","7253","Edit item","EditItem","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("653","7253","Remove item","RemoveItem","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("654","7253","Approve","approveAbsence","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("655","7253","Reject","rejectAbsence","2014-10-11 14:04:23","1","2014-10-11 14:04:23","1");
INSERT INTO camberley_applicationactions VALUES("656","7255","Filter","Filter","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactions VALUES("657","7255","View item","ViewItem","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactions VALUES("658","7255","Remove item","RemoveItem","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactions VALUES("659","7255","Approve","approveAbsence","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactions VALUES("660","7255","Reject","rejectAbsence","2014-10-11 14:06:14","1","2014-10-11 14:06:14","1");
INSERT INTO camberley_applicationactions VALUES("661","7176","Route","route","2014-10-13 20:52:27","1","2014-10-13 20:52:27","1");
INSERT INTO camberley_applicationactions VALUES("662","7260","Filter","Filter","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("663","7260","Add item","AddItem","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("664","7260","View item","ViewItem","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("665","7260","Edit item","EditItem","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("666","7260","Remove item","RemoveItem","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("667","7260","Documents","editDocuments","2014-10-26 21:38:04","1","2014-10-26 21:38:04","1");
INSERT INTO camberley_applicationactions VALUES("668","7259","Filter","Filter","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("669","7259","Add item","AddItem","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("670","7259","Edit item","EditItem","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("671","7259","Remove item","RemoveItem","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("672","7259","Map","showMap","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("673","7259","Delivery Note","printDeliveryNote","2014-11-29 17:07:31","1","2014-11-29 17:07:31","1");
INSERT INTO camberley_applicationactions VALUES("674","7259","Allocate","edit","2014-11-29 17:10:44","1","2014-11-29 17:10:44","1");
INSERT INTO camberley_applicationactions VALUES("675","7261","Filter","Filter","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactions VALUES("676","7261","Add item","AddItem","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactions VALUES("677","7261","View item","ViewItem","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactions VALUES("678","7261","Edit item","EditItem","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactions VALUES("679","7261","Remove item","RemoveItem","2014-11-30 15:42:41","1","2014-11-30 15:42:41","1");
INSERT INTO camberley_applicationactions VALUES("680","7176","Documents","editDocuments","2014-11-30 21:37:50","1","2014-11-30 21:37:50","1");
INSERT INTO camberley_applicationactions VALUES("681","7210","Documents","editDocuments","2014-11-30 22:08:03","1","2014-11-30 22:08:03","1");
INSERT INTO camberley_applicationactions VALUES("682","7262","Filter","Filter","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactions VALUES("683","7262","Add item","AddItem","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactions VALUES("684","7262","View item","ViewItem","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactions VALUES("685","7262","Edit item","EditItem","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactions VALUES("686","7262","Remove item","RemoveItem","2014-12-07 18:49:21","1","2014-12-07 18:49:21","1");
INSERT INTO camberley_applicationactions VALUES("687","7263","Filter","Filter","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactions VALUES("688","7263","Add item","AddItem","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactions VALUES("689","7263","View item","ViewItem","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactions VALUES("690","7263","Edit item","EditItem","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactions VALUES("691","7263","Remove item","RemoveItem","2014-12-07 19:05:23","1","2014-12-07 19:05:23","1");
INSERT INTO camberley_applicationactions VALUES("692","7264","Filter","Filter","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactions VALUES("693","7264","Add item","AddItem","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactions VALUES("694","7264","View item","ViewItem","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactions VALUES("695","7264","Edit item","EditItem","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactions VALUES("696","7264","Remove item","RemoveItem","2014-12-07 19:14:20","1","2014-12-07 19:14:20","1");
INSERT INTO camberley_applicationactions VALUES("697","7265","Filter","Filter","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactions VALUES("698","7265","Add item","AddItem","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactions VALUES("699","7265","View item","ViewItem","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactions VALUES("700","7265","Edit item","EditItem","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactions VALUES("701","7265","Remove item","RemoveItem","2014-12-09 20:15:21","1","2014-12-09 20:15:21","1");
INSERT INTO camberley_applicationactions VALUES("702","7266","Filter","Filter","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactions VALUES("703","7266","Add item","AddItem","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactions VALUES("704","7266","View item","ViewItem","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactions VALUES("705","7266","Edit item","EditItem","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactions VALUES("706","7266","Remove item","RemoveItem","2014-12-18 14:13:35","1","2014-12-18 14:13:35","1");
INSERT INTO camberley_applicationactions VALUES("707","7267","Filter","Filter","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactions VALUES("708","7267","Remove item","RemoveItem","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactions VALUES("709","7267","Notify","edit","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactions VALUES("710","7267","Map","showMap","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactions VALUES("711","7267","Delivery Note","printDeliveryNote","2014-12-18 15:44:56","1","2014-12-18 15:44:56","1");
INSERT INTO camberley_applicationactions VALUES("712","7268","Filter","Filter","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactions VALUES("713","7268","Remove item","RemoveItem","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactions VALUES("714","7268","Notify","edit","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactions VALUES("715","7268","Map","showMap","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactions VALUES("716","7268","Delivery Note","printDeliveryNote","2014-12-19 12:26:09","1","2014-12-19 12:26:09","1");
INSERT INTO camberley_applicationactions VALUES("717","7269","Filter","Filter","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactions VALUES("718","7269","Remove item","RemoveItem","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactions VALUES("719","7269","Notify","edit","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactions VALUES("720","7269","Map","showMap","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactions VALUES("721","7269","Delivery Note","printDeliveryNote","2014-12-19 15:12:39","1","2014-12-19 15:12:39","1");
INSERT INTO camberley_applicationactions VALUES("722","7270","Filter","Filter","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactions VALUES("723","7270","Remove item","RemoveItem","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactions VALUES("724","7270","Notify","edit","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactions VALUES("725","7270","Map","showMap","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactions VALUES("726","7270","Delivery Note","printDeliveryNote","2014-12-19 15:13:34","1","2014-12-19 15:13:34","1");
INSERT INTO camberley_applicationactions VALUES("727","7273","Filter","Filter","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactions VALUES("728","7273","Add item","AddItem","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactions VALUES("729","7273","View item","ViewItem","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactions VALUES("730","7273","Edit item","EditItem","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactions VALUES("731","7273","Remove item","RemoveItem","2014-12-21 13:23:44","1","2014-12-21 13:23:44","1");
INSERT INTO camberley_applicationactions VALUES("732","7274","Filter","Filter","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactions VALUES("733","7274","Add item","AddItem","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactions VALUES("734","7274","View item","ViewItem","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactions VALUES("735","7274","Edit item","EditItem","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactions VALUES("736","7274","Remove item","RemoveItem","2014-12-21 21:00:52","1","2014-12-21 21:00:52","1");
INSERT INTO camberley_applicationactions VALUES("737","7275","Filter","Filter","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactions VALUES("738","7275","Add item","AddItem","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactions VALUES("739","7275","View item","ViewItem","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactions VALUES("740","7275","Edit item","EditItem","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactions VALUES("741","7275","Remove item","RemoveItem","2014-12-21 21:01:54","1","2014-12-21 21:01:54","1");
INSERT INTO camberley_applicationactions VALUES("742","7277","Filter","Filter","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactions VALUES("743","7277","Add item","AddItem","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactions VALUES("744","7277","View item","ViewItem","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactions VALUES("745","7277","Edit item","EditItem","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactions VALUES("746","7277","Remove item","RemoveItem","2014-12-21 22:20:41","1","2014-12-21 22:20:41","1");
INSERT INTO camberley_applicationactions VALUES("747","7278","Filter","Filter","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactions VALUES("748","7278","Add item","AddItem","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactions VALUES("749","7278","View item","ViewItem","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactions VALUES("750","7278","Edit item","EditItem","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactions VALUES("751","7278","Remove item","RemoveItem","2014-12-21 22:30:08","1","2014-12-21 22:30:08","1");
INSERT INTO camberley_applicationactions VALUES("752","7267","Notify","notify","2014-12-22 13:30:40","1","2014-12-22 13:30:40","1");
INSERT INTO camberley_applicationactions VALUES("753","7286","Filter","Filter","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactions VALUES("754","7286","Add item","AddItem","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactions VALUES("755","7286","View item","ViewItem","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactions VALUES("756","7286","Edit item","EditItem","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactions VALUES("757","7286","Remove item","RemoveItem","2014-12-23 22:35:38","1","2014-12-23 22:35:38","1");
INSERT INTO camberley_applicationactions VALUES("758","7287","Filter","Filter","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactions VALUES("759","7287","Add item","AddItem","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactions VALUES("760","7287","View item","ViewItem","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactions VALUES("761","7287","Edit item","EditItem","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactions VALUES("762","7287","Remove item","RemoveItem","2014-12-23 22:37:02","1","2014-12-23 22:37:02","1");
INSERT INTO camberley_applicationactions VALUES("763","7285","Filter","Filter","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("764","7285","Add item","AddItem","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("765","7285","View item","ViewItem","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("766","7285","Edit item","EditItem","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("767","7285","Remove item","RemoveItem","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("768","7285","Documents","editDocuments","2014-12-23 23:04:29","1","2014-12-23 23:04:29","1");
INSERT INTO camberley_applicationactions VALUES("769","7282","Filter","Filter","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("770","7282","Add item","AddItem","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("771","7282","View item","ViewItem","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("772","7282","Edit item","EditItem","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("773","7282","Remove item","RemoveItem","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("774","7282","Documents","editDocuments","2014-12-24 12:07:13","1","2014-12-24 12:07:13","1");
INSERT INTO camberley_applicationactions VALUES("775","7288","Filter","Filter","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("776","7288","Add item","AddItem","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("777","7288","View item","ViewItem","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("778","7288","Edit item","EditItem","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("779","7288","Remove item","RemoveItem","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("780","7288","Documents","editDocuments","2014-12-28 11:44:58","1","2014-12-28 11:44:58","1");
INSERT INTO camberley_applicationactions VALUES("781","7288","Print","printQuote","2014-12-28 11:57:55","1","2014-12-28 11:57:55","1");
INSERT INTO camberley_applicationactions VALUES("782","7290","Filter","Filter","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactions VALUES("783","7290","Add item","AddItem","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactions VALUES("784","7290","View item","ViewItem","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactions VALUES("785","7290","Edit item","EditItem","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactions VALUES("786","7290","Remove item","RemoveItem","2015-01-02 13:06:35","1","2015-01-02 13:06:35","1");
INSERT INTO camberley_applicationactions VALUES("787","7288","Convert","accept","2015-01-06 20:31:32","1","2015-01-06 20:31:32","1");
INSERT INTO camberley_applicationactions VALUES("788","7291","Filter","Filter","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactions VALUES("789","7291","Add item","AddItem","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactions VALUES("790","7291","View item","ViewItem","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactions VALUES("791","7291","Edit item","EditItem","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactions VALUES("792","7291","Remove item","RemoveItem","2015-01-10 21:56:44","1","2015-01-10 21:56:44","1");
INSERT INTO camberley_applicationactions VALUES("793","7288","Undo","undo","2015-01-22 18:54:08","1","2015-01-22 18:54:08","1");
INSERT INTO camberley_applicationactions VALUES("794","7298","Filter","Filter","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("795","7298","Add item","AddItem","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("796","7298","View item","ViewItem","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("797","7298","Edit item","EditItem","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("798","7298","Remove item","RemoveItem","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("799","7298","Documents","editDocuments","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("800","7298","Invoice","accept","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("801","7298","Undo","undo","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("802","7298","Print","printQuote","2015-06-13 16:08:48","1","2015-06-13 16:08:48","1");
INSERT INTO camberley_applicationactions VALUES("803","7288","Print","printOrder","2015-06-15 11:15:06","1","2015-06-15 11:15:06","1");
INSERT INTO camberley_applicationactions VALUES("804","7298","Print","printInvoice","2015-06-15 11:59:42","1","2015-06-15 11:59:42","1");
INSERT INTO camberley_applicationactions VALUES("805","7299","Filter","Filter","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("806","7299","Add item","AddItem","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("807","7299","View item","ViewItem","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("808","7299","Edit item","EditItem","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("809","7299","Remove item","RemoveItem","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("810","7299","Documents","editDocuments","2015-06-15 19:32:05","1","2015-06-15 19:32:05","1");
INSERT INTO camberley_applicationactions VALUES("811","7300","Filter","Filter","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("812","7300","Add item","AddItem","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("813","7300","View item","ViewItem","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("814","7300","Edit item","EditItem","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("815","7300","Remove item","RemoveItem","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("816","7300","Documents","editDocuments","2015-06-15 19:36:54","1","2015-06-15 19:36:54","1");
INSERT INTO camberley_applicationactions VALUES("817","7288","Delivery Note","printDelivery","2015-06-18 18:56:14","1","2015-06-18 18:56:14","1");
INSERT INTO camberley_applicationactions VALUES("818","7300","Users","userSites","2015-10-20 18:14:15","1","2015-10-20 18:14:15","1");
INSERT INTO camberley_applicationactions VALUES("819","7303","Filter","Filter","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("820","7303","Add item","AddItem","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("821","7303","View item","ViewItem","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("822","7303","Edit item","EditItem","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("823","7303","Remove item","RemoveItem","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("824","7303","Documents","editDocuments","2016-01-11 18:52:11","1","2016-01-11 18:52:11","1");
INSERT INTO camberley_applicationactions VALUES("825","7305","Filter","Filter","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactions VALUES("826","7305","Add item","AddItem","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactions VALUES("827","7305","View item","ViewItem","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactions VALUES("828","7305","Edit item","EditItem","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactions VALUES("829","7305","Remove item","RemoveItem","2016-01-12 19:39:49","1","2016-01-12 19:39:49","1");
INSERT INTO camberley_applicationactions VALUES("830","7306","Filter","Filter","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactions VALUES("831","7306","Add item","AddItem","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactions VALUES("832","7306","View item","ViewItem","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactions VALUES("833","7306","Edit item","EditItem","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactions VALUES("834","7306","Remove item","RemoveItem","2016-01-16 12:30:19","1","2016-01-16 12:30:19","1");
INSERT INTO camberley_applicationactions VALUES("835","7301","Filter","Filter","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactions VALUES("836","7301","Add item","AddItem","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactions VALUES("837","7301","View item","ViewItem","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactions VALUES("838","7301","Edit item","EditItem","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactions VALUES("839","7301","Remove item","RemoveItem","2016-01-16 12:31:29","1","2016-01-16 12:31:29","1");
INSERT INTO camberley_applicationactions VALUES("840","7304","Filter","Filter","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactions VALUES("841","7304","Add item","AddItem","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactions VALUES("842","7304","View item","ViewItem","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactions VALUES("843","7304","Edit item","EditItem","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactions VALUES("844","7304","Remove item","RemoveItem","2016-01-16 12:45:58","1","2016-01-16 12:45:58","1");
INSERT INTO camberley_applicationactions VALUES("845","7309","Filter","Filter","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactions VALUES("846","7309","Add item","AddItem","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactions VALUES("847","7309","View item","ViewItem","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactions VALUES("848","7309","Edit item","EditItem","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactions VALUES("849","7309","Remove item","RemoveItem","2016-01-16 17:11:00","1","2016-01-16 17:11:00","1");
INSERT INTO camberley_applicationactions VALUES("850","7310","Filter","Filter","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactions VALUES("851","7310","Add item","AddItem","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactions VALUES("852","7310","View item","ViewItem","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactions VALUES("853","7310","Edit item","EditItem","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactions VALUES("854","7310","Remove item","RemoveItem","2016-01-16 18:32:10","1","2016-01-16 18:32:10","1");
INSERT INTO camberley_applicationactions VALUES("855","7309","Documents","editDocuments","2016-01-18 09:15:05","1","2016-01-18 09:15:05","1");
INSERT INTO camberley_applicationactions VALUES("856","7309","Print","printreport.php","2016-01-18 09:18:33","1","2016-01-18 09:18:33","1");
INSERT INTO camberley_applicationactions VALUES("857","7309","Print","printReport","2016-01-18 10:33:11","1","2016-01-18 10:33:11","1");
INSERT INTO camberley_applicationactions VALUES("858","7314","Filter","Filter","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactions VALUES("859","7314","Documents","editDocuments","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactions VALUES("860","7314","Print","printReport","2016-01-21 12:53:27","1","2016-01-21 12:53:27","1");
INSERT INTO camberley_applicationactions VALUES("861","7315","Filter","Filter","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");
INSERT INTO camberley_applicationactions VALUES("862","7315","Documents","editDocuments","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");
INSERT INTO camberley_applicationactions VALUES("863","7315","Print","printReport","2016-01-21 12:54:03","1","2016-01-21 12:54:03","1");



DROP TABLE camberley_applicationtablecolumns;

CREATE TABLE `camberley_applicationtablecolumns` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `headerid` int(10) NOT NULL,
  `columnindex` int(10) NOT NULL,
  `width` int(10) NOT NULL,
  `hidecolumn` int(10) NOT NULL DEFAULT '0',
  `label` varchar(60) NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `headerid_column` (`headerid`,`columnindex`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;




DROP TABLE camberley_applicationtables;

CREATE TABLE `camberley_applicationtables` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pageid` int(10) NOT NULL,
  `memberid` int(10) NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;




DROP TABLE camberley_category;

CREATE TABLE `camberley_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `formname` varchar(40) DEFAULT NULL,
  `postformname` varchar(40) DEFAULT NULL,
  `reportname` varchar(40) DEFAULT NULL,
  `sequence` varchar(1) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `imageid` int(11) DEFAULT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=81791 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_category VALUES("81779","Ovens","S","C","form-ovens.php","form-ovenspost.php","report-ovens.php","M","2016-01-01","0","1","1","2016-01-11 18:51:35","2016-02-05 17:22:54");
INSERT INTO camberley_category VALUES("81780","Fire Extinguisher Check","S","M","form-fireextinguishers.php","form-fireextinguisherspost.php","report-fireextinguishers.php","W","2016-01-01","0","1","1","2016-01-11 18:52:06","2016-02-07 19:04:03");
INSERT INTO camberley_category VALUES("81782","Emergency Lights (Weekly)","S","M","form-emergencylightsweekly.php","form-emergencylightspost.php","report-emergencylightsweekly.php","W","2016-01-18","0","1","1","2016-01-18 12:10:42","2016-02-12 17:36:03");
INSERT INTO camberley_category VALUES("81783","Fire Alarm Call Points","S","M","form-alarmcallpoints.php","form-alarmcallpointspost.php","report-alarmcallpoints.php","D","2014-11-02","0","1","1","2016-01-18 13:36:22","2016-02-07 21:24:58");
INSERT INTO camberley_category VALUES("81784","Services","S","F","form-services.php","form-servicespost.php","report-services.php","D","2016-01-18","0","1","1","2016-01-18 13:37:02","2016-02-07 20:45:01");
INSERT INTO camberley_category VALUES("81785","REP Injection Machines","S","C","form-injectionmachines.php","form-injectionmachinespost.php","report-injectionmachines.php","W","2014-11-02","0","1","1","2016-01-18 13:42:45","2016-02-05 17:22:59");
INSERT INTO camberley_category VALUES("81786","Workshop Machines","S","C","form-workshopmachines.php","form-workshopmachinespost.php","report-workshopmachines.php","M","2014-11-02","0","1","1","2016-01-18 13:43:41","2016-02-05 17:19:09");
INSERT INTO camberley_category VALUES("81789","Ladders","S","C","form-ladders.php","form-ladderspost.php","report-ladders.php","W","2016-01-18","0","1","1","2016-01-19 21:09:26","2016-02-05 17:19:51");
INSERT INTO camberley_category VALUES("81790","Cooling Towers","S","F","form-coolingtowers.php","form-coolingtowerspost.php","report-coolingtowers.php","W","2014-11-02","0","1","1","2016-01-22 16:46:16","2016-02-05 17:17:45");



DROP TABLE camberley_checklist;

CREATE TABLE `camberley_checklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoryid` int(11) DEFAULT NULL,
  `inspectedby` int(11) DEFAULT NULL,
  `inspecteddatetime` datetime DEFAULT NULL,
  `datestamp` date DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `notes` text,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  `Column 13` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategoryid` (`subcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_checklist VALUES("1","82236","1","2016-02-17 10:20:00","2016-02-17","Y",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("2","82017","1","2016-02-17 10:29:00","2016-02-17","Y",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("3","82234","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("4","82171","1","2016-02-17 10:18:00","2016-02-17","Y",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("5","81946","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("6","81945","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("7","81929","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("8","81934","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("9","81935","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("10","81936","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("11","81937","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("12","81938","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("13","81939","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("14","81940","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("15","81941","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("16","81942","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("17","81930","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("18","81943","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("19","81944","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("20","81931","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("21","81932","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("22","81933","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("23","82147","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("24","82155","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("25","82156","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("26","82157","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("27","82158","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("28","82159","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("29","82160","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("30","82161","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("31","82162","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("32","82163","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("33","82148","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("34","82164","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("35","82165","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("36","82166","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("37","82149","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("38","82167","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("39","82168","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("40","82169","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("41","82170","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("42","82150","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("43","82151","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("44","82152","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("45","82153","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("46","82154","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("47","82016","1","2016-02-17 10:32:00","2016-02-17","Y",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("48","81785","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("49","81793","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("50","81794","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("51","81795","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("52","81796","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("53","81797","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("54","81786","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("55","81787","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("56","81788","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("57","81789","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("58","81790","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("59","81791","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("60","81792","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("61","81969","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("62","81993","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("63","81999","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("64","82000","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("65","82001","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("66","82002","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("67","82003","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("68","82004","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("69","82005","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("70","81994","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("71","82006","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("72","81995","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("73","82007","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("74","82008","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("75","81996","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("76","82009","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("77","82010","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("78","82011","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("79","82012","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("80","81997","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("81","81998","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("82","81967","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("83","81968","","","2016-02-17","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("84","82236","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("85","82017","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("86","82234","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("87","82171","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("88","81946","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("89","81945","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("90","81929","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("91","81934","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("92","81935","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("93","81936","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("94","81937","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("95","81938","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("96","81939","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("97","81940","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("98","81941","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("99","81942","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("100","81930","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("101","81943","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("102","81944","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("103","81931","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("104","81932","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("105","81933","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("106","82147","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("107","82155","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("108","82156","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("109","82157","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("110","82158","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("111","82159","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("112","82160","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("113","82161","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("114","82162","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("115","82163","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("116","82148","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("117","82164","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("118","82165","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("119","82166","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("120","82149","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("121","82167","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("122","82168","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("123","82169","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("124","82170","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("125","82150","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("126","82151","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("127","82152","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("128","82153","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("129","82154","","","2016-02-23","N",0x,"","","","","");
INSERT INTO camberley_checklist VALUES("130","82016","","","2016-02-23","N",0x,"","","","","");



DROP TABLE camberley_coolingtowerschecklist;

CREATE TABLE `camberley_coolingtowerschecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `meterreading` varchar(20) NOT NULL,
  `pump1ph` varchar(50) NOT NULL,
  `pump2tdssystem` varchar(50) NOT NULL,
  `pump2tdsmakeup` varchar(50) NOT NULL,
  `pump3dipslide` varchar(1) NOT NULL,
  `pump4suspendedmatter` varchar(1) NOT NULL,
  `pump5pondtemp` varchar(50) NOT NULL,
  `pump6systempressure` varchar(50) NOT NULL,
  `hardness` varchar(20) NOT NULL,
  `bromine` varchar(20) NOT NULL,
  `c16` varchar(20) NOT NULL,
  `c31` varchar(20) NOT NULL,
  `comments` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_coolingtowerschecklist VALUES("1","47","2016-02-17 10:32:00","1","135","1000","7","66","87","2","T","100","99","1","7","188","483",0x546573746564,0x,"1","1","2016-02-17 10:33:49","2016-02-17 10:33:49");



DROP TABLE camberley_documents;

CREATE TABLE `camberley_documents` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `image` longblob,
  `createdby` int(11) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `lastmodifiedby` int(11) DEFAULT NULL,
  `lastmodifieddate` timestamp NULL DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;




DROP TABLE camberley_errors;

CREATE TABLE `camberley_errors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pageid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `description` text,
  `createddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26023 DEFAULT CHARSET=latin1;

INSERT INTO camberley_errors VALUES("26014","7308","1",0x202d20436f6c756d6e20277374617475732720696e20776865726520636c6175736520697320616d626967756f7573,"2016-02-11 16:10:21","2016-02-11 16:10:21","1","2016-02-11 16:10:21","1");
INSERT INTO camberley_errors VALUES("26015","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f647269766562656c742c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f647269766562656c745f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131322c2027323031362d30322d31322031363a3238272c200d0a09090909312c20200d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a090909092c200d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a090909092c0d0a090909092c0d0a090909092c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a0909090927546573742031272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742032272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742033272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927546573742034272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742035272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742036272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742037272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742039272c0d0a0909090927272c0d0a0909090927272c0d0a090909092754657374203130272c0d0a090909092754657374203131272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20596f75206861766520616e206572726f7220696e20796f75722053514c2073796e7461783b20636865636b20746865206d616e75616c207468617420636f72726573706f6e647320746f20796f7572204d7953514c207365727665722076657273696f6e20666f72207468652072696768742073796e74617820746f20757365206e6561722027200d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a090909093127206174206c696e65203933,"2016-02-12 16:30:26","2016-02-12 16:30:26","1","2016-02-12 16:30:26","1");
INSERT INTO camberley_errors VALUES("26010","7308","1",0x544553542031,"2016-02-11 15:07:09","2016-02-11 15:07:09","1","2016-02-11 15:07:09","1");
INSERT INTO camberley_errors VALUES("26011","7308","1",0x544553542032,"2016-02-11 15:07:09","2016-02-11 15:07:09","1","2016-02-11 15:07:09","1");
INSERT INTO camberley_errors VALUES("26012","7308","1",0x544553542033,"2016-02-11 15:07:09","2016-02-11 15:07:09","1","2016-02-11 15:07:09","1");
INSERT INTO camberley_errors VALUES("26013","7308","1",0x544553542034,"2016-02-11 15:07:09","2016-02-11 15:07:09","1","2016-02-11 15:07:09","1");
INSERT INTO camberley_errors VALUES("26016","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f647269766562656c742c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f647269766562656c745f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131332c2027323031362d30322d31322031363a3238272c200d0a09090909312c20200d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a090909092c200d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a090909092c0d0a090909092c0d0a090909092c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a0909090927546573742031272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742032272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742033272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927546573742034272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742035272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742036272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742037272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742039272c0d0a0909090927272c0d0a0909090927272c0d0a090909092754657374203130272c0d0a090909092754657374203131272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20596f75206861766520616e206572726f7220696e20796f75722053514c2073796e7461783b20636865636b20746865206d616e75616c207468617420636f72726573706f6e647320746f20796f7572204d7953514c207365727665722076657273696f6e20666f72207468652072696768742073796e74617820746f20757365206e6561722027200d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a090909093127206174206c696e65203933,"2016-02-12 16:31:39","2016-02-12 16:31:39","1","2016-02-12 16:31:39","1");
INSERT INTO camberley_errors VALUES("26017","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f647269766562656c742c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f647269766562656c745f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131342c2027323031362d30322d31322031363a3238272c200d0a09090909312c20200d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909302c20312c0d0a09090909312c20312c0d0a09090909312c200d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a090909092c0d0a090909092c0d0a090909092c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a09090909312c0d0a0909090927546573742031272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742032272c0d0a0909090927272c2027272c0d0a0909090927272c2027546573742033272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927546573742034272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742035272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742036272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742037272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927546573742039272c0d0a0909090927272c0d0a0909090927272c0d0a090909092754657374203130272c0d0a090909092754657374203131272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20596f75206861766520616e206572726f7220696e20796f75722053514c2073796e7461783b20636865636b20746865206d616e75616c207468617420636f72726573706f6e647320746f20796f7572204d7953514c207365727665722076657273696f6e20666f72207468652072696768742073796e74617820746f20757365206e65617220270d0a090909092c0d0a090909092c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909312c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a27206174206c696e6520313039,"2016-02-12 16:32:54","2016-02-12 16:32:54","1","2016-02-12 16:32:54","1");
INSERT INTO camberley_errors VALUES("26018","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f647269766562656c742c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f647269766562656c745f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131352c2027323031362d30322d31322031363a3336272c200d0a09090909312c20200d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a090909092c202c0d0a090909092c202c0d0a090909092c200d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a0909090927272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20596f75206861766520616e206572726f7220696e20796f75722053514c2073796e7461783b20636865636b20746865206d616e75616c207468617420636f72726573706f6e647320746f20796f7572204d7953514c207365727665722076657273696f6e20666f72207468652072696768742073796e74617820746f20757365206e6561722027202c0d0a090909092c202c0d0a090909092c200d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a090909092c0d0a09090927206174206c696e65203931,"2016-02-12 16:36:30","2016-02-12 16:36:30","1","2016-02-12 16:36:30","1");
INSERT INTO camberley_errors VALUES("26019","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f7761746572737570706c792c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f7761746572737570706c795f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131372c2027323031362d30322d31322031363a3435272c200d0a09090909312c20200d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909302c20302c0d0a09090909302c20302c0d0a09090909302c200d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a0909090927272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a090909092744272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20556e6b6e6f776e20636f6c756d6e202777617368626f6f74685f7761746572737570706c792720696e20276669656c64206c69737427,"2016-02-12 17:12:50","2016-02-12 17:12:50","1","2016-02-12 17:12:50","1");
INSERT INTO camberley_errors VALUES("26020","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f7761746572737570706c792c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f7761746572737570706c795f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131382c2027323031362d30322d31322031363a3435272c200d0a09090909312c20200d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909302c20302c0d0a09090909302c20302c0d0a09090909302c200d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a0909090927272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a090909092744272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20556e6b6e6f776e20636f6c756d6e202777617368626f6f74685f7761746572737570706c795f6e6f7465732720696e20276669656c64206c69737427,"2016-02-12 17:13:03","2016-02-12 17:13:03","1","2016-02-12 17:13:03","1");
INSERT INTO camberley_errors VALUES("26021","7308","1",0x494e5345525420494e544f2063616d6265726c65795f73657276696365636865636b6c697374200d0a090909280d0a09090909636865636b6c69737469642c207369676e617475726569642c20696e7370656374696f6e646174652c200d0a09090909696e7370656374696f6e7573657269642c200d0a090909096c617267655f656d657273746f70732c206c617267655f6772656173652c0d0a090909096c617267655f656c656374726963732c206c617267655f636f6f6c696e672c0d0a09090909736d616c6c5f656d657273746f70732c20736d616c6c5f6772656173652c0d0a09090909736d616c6c5f656c656374726963732c20736d616c6c5f636f6f6c696e672c0d0a090909096d65726b6c655f656d657273746f70732c206d65726b6c655f66696e676572677561726466726f6e742c0d0a090909096d65726b6c655f6d656368616e6963732c206d65726b6c655f66696e6765726775617264726561722c0d0a090909096d65726b6c655f656c656374726963732c200d0a09090909746f6f6c5f656c656374726963732c0d0a09090909746f6f6c5f616972737570706c792c0d0a09090909746f6f6c5f66696c746572732c0d0a09090909746f6f6c5f6379636c6f6e652c0d0a090909097475726265785f77617465722c0d0a090909097475726265785f616972737570706c792c0d0a090909097475726265785f656c656374726963732c0d0a0909090973686f74626c617374315f656c656374726963732c0d0a0909090973686f74626c617374315f616972737570706c792c0d0a0909090973686f74626c617374315f66696c746572732c0d0a0909090973686f74626c617374315f6379636c6f6e652c0d0a0909090973686f74626c617374325f656c656374726963732c0d0a0909090973686f74626c617374325f616972737570706c792c0d0a0909090973686f74626c617374325f66696c746572732c0d0a0909090973686f74626c617374325f6379636c6f6e652c0d0a0909090977617368626f6f74685f656c656374726963732c0d0a0909090977617368626f6f74685f7761746572737570706c792c0d0a0909090977617368626f6f74685f6672616d652c0d0a09090909647279626f6f74685f656c656374726963732c0d0a09090909647279626f6f74685f647269766562656c742c0d0a09090909647279626f6f74685f6672616d652c0d0a090909096167697461746f725f656c656374726963732c0d0a090909096167697461746f725f636861696e732c0d0a090909096167697461746f725f6772656173652c0d0a090909096368656d6963616c5f62756e642c0d0a090909097261636b696e675f7361666574796c6f636b2c0d0a090909097261636b696e675f666c6f6f72626f6c74732c0d0a090909097261636b696e675f6c6f61646d61726b696e67732c0d0a090909097261636b696e675f737570706f72746265616d732c0d0a090909097261636b696e675f75707269676874732c0d0a090909096c617267655f656d657273746f70735f6e6f7465732c0d0a090909096c617267655f6772656173655f6e6f7465732c206c617267655f656c656374726963735f6e6f7465732c0d0a090909096c617267655f636f6f6c696e675f6e6f7465732c20736d616c6c5f656d657273746f70735f6e6f7465732c0d0a09090909736d616c6c5f6772656173655f6e6f7465732c20736d616c6c5f656c656374726963735f6e6f7465732c0d0a09090909736d616c6c5f636f6f6c696e675f6e6f7465732c206d65726b6c655f656d657273746f70735f6e6f7465732c0d0a090909096d65726b6c655f66696e676572677561726466726f6e745f6e6f7465732c206d65726b6c655f6d656368616e6963735f6e6f7465732c0d0a090909096d65726b6c655f66696e6765726775617264726561725f6e6f7465732c206d65726b6c655f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f656c656374726963735f6e6f7465732c0d0a09090909746f6f6c5f616972737570706c795f6e6f7465732c0d0a09090909746f6f6c5f66696c746572735f6e6f7465732c0d0a09090909746f6f6c5f6379636c6f6e655f6e6f7465732c0d0a090909097475726265785f77617465725f6e6f7465732c0d0a090909097475726265785f616972737570706c795f6e6f7465732c0d0a090909097475726265785f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374315f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374315f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374315f6379636c6f6e655f6e6f7465732c0d0a0909090973686f74626c617374325f656c656374726963735f6e6f7465732c0d0a0909090973686f74626c617374325f616972737570706c795f6e6f7465732c0d0a0909090973686f74626c617374325f66696c746572735f6e6f7465732c0d0a0909090973686f74626c617374325f6379636c6f6e655f6e6f7465732c0d0a0909090977617368626f6f74685f656c656374726963735f6e6f7465732c0d0a0909090977617368626f6f74685f7761746572737570706c795f6e6f7465732c0d0a0909090977617368626f6f74685f6672616d655f6e6f7465732c0d0a09090909647279626f6f74685f656c656374726963735f6e6f7465732c0d0a09090909647279626f6f74685f647269766562656c745f6e6f7465732c0d0a09090909647279626f6f74685f6672616d655f6e6f7465732c0d0a090909096167697461746f725f656c656374726963735f6e6f7465732c0d0a090909096167697461746f725f636861696e735f6e6f7465732c0d0a090909096167697461746f725f6772656173655f6e6f7465732c0d0a090909096368656d6963616c5f62756e645f6e6f7465732c0d0a090909097261636b696e675f7361666574796c6f636b5f6e6f7465732c0d0a090909097261636b696e675f666c6f6f72626f6c74735f6e6f7465732c0d0a090909097261636b696e675f6c6f61646d61726b696e67735f6e6f7465732c0d0a090909097261636b696e675f737570706f72746265616d735f6e6f7465732c0d0a090909097261636b696e675f75707269676874735f6e6f7465732c0d0a09090909636f7272656374696f6e5f6e6f7465732c0d0a090909096d657461637265617465647573657269642c206d6574616d6f6469666965647573657269642c200d0a090909096d65746163726561746564646174652c206d6574616d6f646966696564646174650d0a090909290d0a09090956414c5545530d0a090909280d0a0909090938333938362c203131392c2027323031362d30322d31322031363a3435272c200d0a09090909312c20200d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909312c20312c0d0a09090909302c20302c0d0a09090909302c20302c0d0a09090909302c200d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909312c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a09090909302c0d0a0909090927272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c2027272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a0909090927272c0d0a090909092744272c0d0a09090909312c20312c200d0a090909094e4f5728292c204e4f5728290d0a09090929202d20556e6b6e6f776e20636f6c756d6e202777617368626f6f74685f7761746572737570706c795f6e6f7465732720696e20276669656c64206c69737427,"2016-02-12 17:13:09","2016-02-12 17:13:09","1","2016-02-12 17:13:09","1");
INSERT INTO camberley_errors VALUES("26022","2000","0",0x53454c4543542044495354494e435420412e2a0d0a09090946524f4d2063616d6265726c65795f6d656d6265727320410d0a090909574845524520412e6c6f67696e203d202761646d696e270d0a090909414e4420412e706173737764203d20273231323332663239376135376135613734333839346130653461383031666333270d0a090909414e4420412e6163636570746564203d20275927,"2016-03-07 20:16:14","2016-03-07 20:16:14","0","2016-03-07 20:16:14","0");



DROP TABLE camberley_filter;

CREATE TABLE `camberley_filter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `description` varchar(60) NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;




DROP TABLE camberley_filterdata;

CREATE TABLE `camberley_filterdata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filterid` int(11) NOT NULL,
  `columnname` varchar(60) DEFAULT NULL,
  `value` text,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;




DROP TABLE camberley_fireextinguisherchecklist;

CREATE TABLE `camberley_fireextinguisherchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `faultsfound` int(11) NOT NULL,
  `faultsfound_notes` text NOT NULL,
  `comments` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_fireextinguisherchecklistitem;

CREATE TABLE `camberley_fireextinguisherchecklistitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fireextinguisherchecklistid` int(11) NOT NULL,
  `fault` int(11) NOT NULL,
  `fault_notes` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`fireextinguisherchecklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_images;

CREATE TABLE `camberley_images` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `path` char(255) DEFAULT '',
  `mimetype` char(50) DEFAULT '',
  `name` char(255) DEFAULT '',
  `imgwidth` smallint(4) DEFAULT '0',
  `imgheight` smallint(4) DEFAULT '0',
  `tag` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `image` longblob,
  `createddate` timestamp NULL DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID` (`id`),
  FULLTEXT KEY `search_index` (`name`,`description`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

INSERT INTO camberley_images VALUES("130","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:19:08","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_images VALUES("131","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:21:05","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_images VALUES("132","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:26:02","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_images VALUES("133","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:28:04","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_images VALUES("134","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:29:06","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_images VALUES("135","","image/png","Signture","0","0","","",0x89504e470d0a1a0a0000000d49484452000000c8000000280802000000347e224b00000aa049444154789ced9a7d4c53571fc74f4b0b0556282d56a02d5414a9b79722944e60d0288a2fb46aa6f8820624ce08be8009c4d76dea40d4b86c33465c66f02586e142704c17eb3bbe57075859e98a522c6a8b18a0b665505aa1f4f9e33eb94f9fbac975cfea9227e7f317fddddff99def2ddf9c9ef3bb97e472b90004f27743fea70540fe3f81c68278857730567d7dfdcd9b37bd27e52f633018ae5fbfee116c6a6afa47c440fe8d8b187abd9ecd666767673f7dfa94e090bf9dab57af565757bf19dfb871635c5c5c6767271e311a8d6c36fbd9b367ef4f1ce4bf21ba62151717f7f4f4848484a8d56a3cd8d9d9595e5e3e3838e81dcf7bb27bf7ee7dfbf6b5b6b6ba077ffffdf753a74ec964b24b972ee1c1eaeaea79f3e6d5d6d68e8e8ebe1f6d100f881aabb1b1d1c7c787cd660b85420080d3e9fceaabaf5014ada8a83873e6ccf0f0b03745026c46954a151b1b7befde3df778555595bfbfff071f7c9096968607ebeaea8442616c6c2c99fc9f1bb45aadde1609c121642c87c3d1d3d3c3e3f168345a6464646b6b6b7272b242a1d8b163c7e6cd9b0d0683c562f1b650ad566bb7dbf97cfe942953dce3870e1d5ab264098d46c3e3dddddd2a95cad7d7572010e0699d9d9d616161ef6d718550882435373703000402019bcdaea8a8a8aaaadab163078542f1f3f34b4a4a8a8e8ea6d168c4a77cfcf83183c1183f7efc3b096d6c6c140804c1c1c1d8928971f6ec596c3b959292a2d3e9b0b2b76edd8a8f8fb75aad3c1e0fcfacadad653018070f1edcbe7dbbfb3206f11284bee29a9a1aec8ff2f2728d4673f8f061bbdd9e9c9c9c97978720c83bb96a787878eedcb95f7ef9e5bb2e1e972f5f4e4d4d65b3d94c26130f1e3e7c582a9502001004c1cbdebf7f5f2412858787bb0baba9a9494e4ef6f7f787ae7a3f10fa965b5a5a0000d7ae5dcbcbcb934aa5c3c3c30505057171717f613e2a95fae4c9131e8fd7d8d8487c94d96c3e77ee1c8220b1b1b17850a7d335343488c5e2989818068381976d6c6ce4f17851515178667d7dbd46a34151d47d38c4ab8c6d2ca7d3899d04737272020303d3d2d2b2b3b3030202decc3c71e2444848c8175f7ce11e1c1c1c74dfdadfbd7b974c266fdab469c68c19c455d6d5d571b95c9bcd86a2a8c3e1686a6aaaacaccccfcfa752a9bebebe1289c4bd6c4b4b4b505010fe3bd8d5d555565626140a2d168b4422213e29e47f62cc8604de5fd8be7dbb5eafffb3b423478ef0f9fc9494948f3efaa8b6b6562010e0f1e5cb979b4ca603070e9496963299cce7cf9f63975ebf7e5d585868b7db5d2e97c562311a8d7f58b9aaaa2a2c2c6cc284091289442412050404cc993367ebd6ad0080e9d3a7efd9b3c76834e2651f3d7a846d042d16cbc99327d96c3600804422b1d96c2e975b545484d5ecefef5fbf7e3d8220376edc78273110828cbd6229954a2a95eaefefffe4c9130e87f38739bffcf2cbdebd7b376ddaa4d168162d5ad4d0d0c0e7f32b2b2b0100a3a3a37575756161612f5ebc080808983265cae9d3a7b1515aadf6bbefbefbf9e79fbbbbbb535353636262feb0239095950500b05aad03030352a974cf9e3d52a9d4e1700000264f9e3c75ead4868686b4b434acac5aad4651d4d7d7373838b8baba7ad5aa555c2e5724126dd8b061ebd6ad08825cbd7ab5a9a9293232d2e9746edbb6ada0a0e0d9b367c4c5400842c858d9d9d94b962c512814ee4d4877d6af5fbf70e1c25dbb76eddfbfdfe572391c0eb95c8eedb2dbdbdb4b4b4b77eedc191a1afadb6fbf7df8e1877c3e1f1b75e7ce1d14455b5b5b172d5a4426934924526565a5eb8db72d6c369bafafefa79f7e5a5858386ddab41933669496968e8c8c70389c888888c4c444954a3571e244acac46a3e17038e1e1e100802b57aeb058aceeeeee65cb968944a28d1b37161616262424c8e5f2c4c4c4e6e666168b45a1506eddba455c0c842063b71b944a657e7e7e525292582c5eb66cd9b7df7ebb6ad52af7840b172eb4b4b4e874ba2d5bb6d8ed76994ca6502866cd9a959c9c3c3c3cfce38f3f565454200892949494999949a7d3b95c2e36f0e2c58b288adeb973874aa58ac5e2a1a1210a854222913c041c3f7e7ce6cc993e3e3e454545f855a55289a22883c1080f0fd76834a9a9a958d9478f1ef1f9fcd0d0502ccd66b36566668e8c8c4c9f3e1d8becddbb372525252d2d8dc160e874bac0c040ec7c4a500c842063ac58bdbdbd2f5fbe0c0c0c140804c5c5c5c78e1d2b2d2d5db060c1952b57f09c1f7ef8213f3f7ff5ead5341a4d2e970b0402bd5e6fb3d9c68f1f7ff4e8d1f4f47493c91413130300d0ebf57e7e7ed84ae670386edcb861341a9b9a9a0a0a0a743addb469d3c68d1bf7a686e3c78f8787874f9a34c9fddfdcd1d1c162b1a2a3a33dcab6b7b7b3582cbc49a65028121212b0632336e9a953a7e472796464e49a356bdadadaa64e9d4aa150888b8110640c6329954a8944323434841db27272721e3c78101010909b9b5b5e5e8ee5343737cb64b2acacac4f3ef964f2e4c90080aeaeae57af5e198dc6b2b2b29c9c9ca8a8a8e0e0600000d6a06732996d6d6d353535030303f7efdf5fbb766d5757574747475c5c5c4444c49b1afafafa868686222323dd8376bb1d0080fde4b997d56ab50000dc581d1d1dfefefe0882601ff7efdf9f9e9e6e369b333232eeddbbf7fdf7df4b24121e8fa7542a098a8110640c633537372308c2e572f1be625454544d4dcdf9f3e7838383b18ebcdd6e371a8d999999212121b76fdf5ebc783100a0afaf6fe5ca952525258f1f3f9e39732636b6bfbfdfe974b6b4b46cdbb60ddb32c7c7c733994c994c363030e070387007b833323242a7d33dd68fe8e8689bcd86753ddccb3a9dcedededefafa7aacc7313232f2faf56b0e8763369b2f5cb870f4e851b95c1e1515f5ebafbf2e58b0a0acacacb7b7572291603742440c842063ecb1542a95542a757f3602002093c962b1582c16631f67cf9e7de0c001bd5efff0e1c3d0d0d0cf3fff5ca7d39d3e7d5a2693b1582c9148842d570080a0a0a09f7efae9c4891367ce9c696b6b9b356b564a4a4a7c7cbc50284410e4c58b172c16eb4d0d1111116ab5dac3582b56ac3879f2a4d96cf628abd1688e1c39b273e74e8d46131f1f9f919171f6ecd9f6f676954a555555959e9efef5d75fd3e974b55afdcd37df58add6acac2c269359525272f9f26522622004f1d9bd7bf75b2e7ff6d967191919090909ee0f523c98376f5e5f5f9f5eaf97cbe5717171fdfdfd252525269329292989c3e1e0bb6600405656d6c3870f8b8b8bdbdada56ac58b17af56ab3d93c7ffe7c128924140ab55a6d626222ee429cbcbc3c93c944a7d3c3c2c2f0606a6aaac1602093c9288ace9f3f1f2fbb6bd72e97cb151414c4e572793c5e4646865aad66b3d9b9b9b99d9d9d454545068361dcb8714b972eedefeffff8e38fb1278f64323937379788180841486f3f516fd8b061c28409ebd6ad0b0c0c7c4b9acbe5d26ab5168b253a3a1adbf70c0c0c3c7dfa1445518fcc9e9e1e83c180a2a89f9f9fc72583c130343484edd23cb0d96c341acde331dfe8e8a84aa5128bc52412c9bdacd56a35994cd8be1e00303838a856abe9747a6c6c2c954a75b95c0f1e3c2093c993264d0a0a0afab33b7a8b180811c630160040a150cc9e3d9b4221f41e04048231b6b12090bf007c8704e215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205e011a0be215a0b1205ee15fc3ea8fb8bea8c11a0000000049454e44ae426082,"2016-02-17 10:33:49","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");



DROP TABLE camberley_ladderchecklist;

CREATE TABLE `camberley_ladderchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `loosefeet` int(11) NOT NULL,
  `loosesteps` int(11) NOT NULL,
  `brokenbraces` int(11) NOT NULL,
  `damagedsurfaces` int(11) NOT NULL,
  `looserivets` int(11) NOT NULL,
  `brokensteps` int(11) NOT NULL,
  `loosefeet_notes` text NOT NULL,
  `brokenbraces_notes` text NOT NULL,
  `damagedsurfaces_notes` text NOT NULL,
  `looserivets_notes` text NOT NULL,
  `brokensteps_notes` text NOT NULL,
  `loosesteps_notes` text NOT NULL,
  `comments` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_lightschecklist;

CREATE TABLE `camberley_lightschecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `correction_notes` text NOT NULL,
  `comments` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_lightschecklist VALUES("1","4","2016-02-17 10:18:00","1","130",0x,0x48656c6c6f,"1","1","2016-02-17 10:19:08","2016-02-17 10:19:08");



DROP TABLE camberley_lightschecklistitem;

CREATE TABLE `camberley_lightschecklistitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lightchecklistid` int(11) NOT NULL,
  `fault` int(11) NOT NULL,
  `fault_notes` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `name` varchar(10) NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`lightchecklistid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_lightschecklistitem VALUES("1","1","0",0x,"Rear exit maint ( EL1 )","el1","1","1","2016-02-17 10:19:08","2016-02-17 10:19:08");
INSERT INTO camberley_lightschecklistitem VALUES("2","1","0",0x,"Rear exit maint ( EL2 )","el2","1","1","2016-02-17 10:19:08","2016-02-17 10:19:08");
INSERT INTO camberley_lightschecklistitem VALUES("3","1","0",0x,"Roller shutter/services ( EL3 )","el3","1","1","2016-02-17 10:19:08","2016-02-17 10:19:08");



DROP TABLE camberley_loginaudit;

CREATE TABLE `camberley_loginaudit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `memberid` int(10) unsigned NOT NULL,
  `timeon` datetime DEFAULT NULL,
  `timeoff` datetime DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1126 DEFAULT CHARSET=latin1;

INSERT INTO camberley_loginaudit VALUES("1123","1","2016-02-17 10:12:32","2016-02-17 10:33:55","2016-02-17 10:12:32","1","2016-02-17 10:33:55","1");
INSERT INTO camberley_loginaudit VALUES("1124","1","2016-02-23 18:02:54","2016-02-24 14:52:02","2016-02-23 18:02:54","1","2016-02-24 14:52:02","1");
INSERT INTO camberley_loginaudit VALUES("1125","1","2016-03-07 20:16:19","","2016-03-07 20:16:19","1","2016-03-07 20:16:19","1");



DROP TABLE camberley_members;

CREATE TABLE `camberley_members` (
  `member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(60) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `imageid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `description` text,
  `lastaccessdate` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `systemuser` varchar(1) DEFAULT NULL,
  `accepted` varchar(1) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `guid` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `dateofbirth` datetime NOT NULL,
  `notes` text NOT NULL,
  `address` text NOT NULL,
  `loginauditid` int(11) NOT NULL,
  `postcode_lat` float NOT NULL,
  `postcode_lng` float NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

INSERT INTO camberley_members VALUES("1","System","Manager","System Manager","admin","6b2d6d9a723e1aeb577a0925dd88bf34","info@prodigyworks.co.uk","Mr","143","37288",0x,"2016-02-24 14:51:59","Y","DE75 7YX","","Y","","502d388d61d5b","0111 222222","01922","22","0000-00-00 00:00:00",0x,0x,"1125","0","0","0000-00-00 00:00:00","0","2016-03-07 20:16:19","1");



DROP TABLE camberley_messages;

CREATE TABLE `camberley_messages` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `from_member_id` int(11) DEFAULT NULL,
  `to_member_id` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text,
  `status` varchar(1) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `action` text,
  `createddate` timestamp NULL DEFAULT NULL,
  `replied` varchar(1) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `to_member_id` (`to_member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1475 DEFAULT CHARSET=latin1;

INSERT INTO camberley_messages VALUES("1473","1","1","Fault Found",0x3c703e41206661756c7420686173206265656e20666f756e6420666f722053657276696365732062792053797374656d204d616e616765722061742031372f30322f323031362031303a31303c2f703e,"N","",0x,"2016-02-17 10:26:02","","2016-02-17 10:26:02","1","2016-02-17 10:26:02","1");
INSERT INTO camberley_messages VALUES("1474","1","1","Fault Found",0x3c703e41206661756c7420686173206265656e20666f756e6420666f722053657276696365732062792053797374656d204d616e616765722061742031372f30322f323031362031303a31303c2f703e,"N","",0x,"2016-02-17 10:28:04","","2016-02-17 10:28:04","1","2016-02-17 10:28:04","1");



DROP TABLE camberley_ovenchecklist;

CREATE TABLE `camberley_ovenchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `doorlock` int(11) NOT NULL,
  `doorseal` int(11) NOT NULL,
  `fanmotor` int(11) NOT NULL,
  `electricalsupply` int(11) NOT NULL,
  `conditioninside` int(11) NOT NULL,
  `conditionoutside` int(11) NOT NULL,
  `settemperature` int(11) NOT NULL,
  `actualtemperature` int(11) NOT NULL,
  `doorlock_notes` text NOT NULL,
  `doorseal_notes` text NOT NULL,
  `fanmotor_notes` text NOT NULL,
  `electricalsupply_notes` text NOT NULL,
  `conditioninside_notes` text NOT NULL,
  `conditionoutside_notes` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_pagenavigation;

CREATE TABLE `camberley_pagenavigation` (
  `pagenavigationid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pageid` int(11) NOT NULL,
  `childpageid` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `pagetype` varchar(1) DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `divider` int(11) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`pagenavigationid`),
  UNIQUE KEY `ix_pagenav` (`pageid`,`childpageid`,`sequence`)
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;

INSERT INTO camberley_pagenavigation VALUES("1","1","1","1","P","","","","red","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("2","1","8","600","M","Administration","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("3","1","11","321","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("118","1","7167","2700","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("9","1","1271","2000","M","Configuration","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("151","7195","7201","300","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("119","1","7168","2500","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("19","1","3000","11","P","","","","blue","0000-00-00 00:00:00","0","2014-05-13 17:27:27","1");
INSERT INTO camberley_pagenavigation VALUES("150","7196","7200","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("149","7196","7199","100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("22","1","130","2","M","Data Management","","","","0000-00-00 00:00:00","0","2014-05-13 17:27:27","1");
INSERT INTO camberley_pagenavigation VALUES("148","7195","7198","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("147","7195","7197","100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("132","7180","7182","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("133","3000","7183","1600","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("134","3000","7184","300","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("135","7174","7185","300","M","Graphs","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("136","7174","7186","500","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("137","7174","7187","400","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("138","7174","7188","600","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("139","3000","7189","800","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("140","3000","7190","1700","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("141","1","7191","3400","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("142","1","7192","3500","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("143","1","7193","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("144","1","7194","3600","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("145","1","7195","3700","P","","","","brown","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("146","1","7196","3800","P","","","","cyan","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("61","1","4","2100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("62","1","7105","500","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("63","1","7107","500","H","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("131","7180","7181","100","M","Members","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("130","1","7180","3300","P","Members","","","pink","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("129","1","7179","3100","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("128","3000","7178","1500","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("127","7174","7177","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("110","3000","7159","500","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("111","7213","7160","300","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("112","3000","7161","600","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("113","1","7162","2200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("114","1","7163","2300","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("115","1","7164","2400","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("116","7213","7165","400","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("117","3000","7166","700","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("109","3000","7158","100","M","Data Management","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("125","1","7174","3200","P","","","","orange","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("126","7174","7176","100","M","Bookings","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("124","1","7173","3000","P","","","","yellow","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("123","1","7172","2600","P","","","","green","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("122","3000","7171","1200","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("121","3000","7170","1000","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("120","3000","7169","900","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("152","1","7202","3900","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("153","1","7203","4100","L","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:42","1");
INSERT INTO camberley_pagenavigation VALUES("154","1","7204","4200","L","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:38","1");
INSERT INTO camberley_pagenavigation VALUES("155","1","7205","4300","L","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:35","1");
INSERT INTO camberley_pagenavigation VALUES("156","1","7206","4500","L","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:27","1");
INSERT INTO camberley_pagenavigation VALUES("157","3000","7207","2200","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("158","3000","7208","2300","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("159","1","7209","4400","P","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:30","1");
INSERT INTO camberley_pagenavigation VALUES("160","3000","7210","1400","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("161","3000","7211","1800","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("162","7174","7212","700","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("163","1","7213","4600","P","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:25","1");
INSERT INTO camberley_pagenavigation VALUES("164","7213","7214","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("165","7213","7215","200","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("166","7213","7216","400","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("167","7213","7217","100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("168","3000","7218","2400","M","Reports","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("169","3000","7219","2000","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("170","3000","7220","2500","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("171","3000","7221","1900","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("172","1","7222","4700","P","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:18","1");
INSERT INTO camberley_pagenavigation VALUES("173","7222","7223","100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("174","3000","7224","2600","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("175","3000","7225","2100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("176","1","7226","4800","P","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:15","1");
INSERT INTO camberley_pagenavigation VALUES("177","3000","7227","2700","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("178","3000","7228","2800","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("179","1","7229","4900","P","","","","","0000-00-00 00:00:00","0","2014-02-17 10:03:11","1");
INSERT INTO camberley_pagenavigation VALUES("180","7229","7230","100","L","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("181","3000","7231","1300","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("182","3000","7232","1100","M","","","","","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pagenavigation VALUES("183","1","7233","4000","M","","","","","2014-02-17 10:03:08","1","2014-02-17 10:03:42","1");
INSERT INTO camberley_pagenavigation VALUES("184","1","7234","5000","M","","","","","2014-02-20 15:20:59","1","2014-02-20 15:20:59","1");
INSERT INTO camberley_pagenavigation VALUES("185","3000","7235","2900","M","","","","","2014-02-20 18:19:22","1","2014-02-20 18:19:22","1");
INSERT INTO camberley_pagenavigation VALUES("186","7174","7236","800","M","","","","","2014-03-02 11:04:46","1","2014-03-02 11:04:46","1");
INSERT INTO camberley_pagenavigation VALUES("187","7174","7237","900","M","","","","","2014-03-13 15:43:57","1","2014-03-13 15:43:57","1");
INSERT INTO camberley_pagenavigation VALUES("188","3000","7238","3000","L","","","","","2014-03-24 10:24:22","1","2014-03-24 10:24:22","1");
INSERT INTO camberley_pagenavigation VALUES("189","7174","7239","1000","M","","","","","2014-09-03 12:48:15","1","2014-09-03 12:48:15","1");
INSERT INTO camberley_pagenavigation VALUES("190","1","7240","5100","P","","","","","2014-10-09 19:35:09","1","2014-10-09 19:35:09","1");
INSERT INTO camberley_pagenavigation VALUES("191","1","7241","5200","P","","","","","2014-10-09 19:38:01","1","2014-10-09 19:38:01","1");
INSERT INTO camberley_pagenavigation VALUES("192","7240","7242","100","M","Holidays","","","","2014-10-09 19:42:05","1","2014-10-09 19:42:05","1");
INSERT INTO camberley_pagenavigation VALUES("193","7240","7243","200","M","","","","","2014-10-09 19:46:32","1","2014-10-09 19:46:32","1");
INSERT INTO camberley_pagenavigation VALUES("194","7240","7244","300","M","","","","","2014-10-09 19:48:06","1","2014-10-09 19:48:06","1");
INSERT INTO camberley_pagenavigation VALUES("195","7240","7245","400","M","Reports","","","","2014-10-09 19:49:14","1","2014-10-09 19:49:14","1");
INSERT INTO camberley_pagenavigation VALUES("196","7240","7246","500","M","","","","","2014-10-09 19:50:11","1","2014-10-09 19:50:11","1");
INSERT INTO camberley_pagenavigation VALUES("197","7240","7247","600","M","","","","","2014-10-09 19:50:51","1","2014-10-09 19:50:51","1");
INSERT INTO camberley_pagenavigation VALUES("198","7240","7248","700","M","","","","","2014-10-09 19:51:43","1","2014-10-09 19:51:43","1");
INSERT INTO camberley_pagenavigation VALUES("199","7240","7249","800","M","Calendar","","","","2014-10-09 19:52:46","1","2014-10-09 19:52:46","1");
INSERT INTO camberley_pagenavigation VALUES("200","7240","7250","900","M","","","","","2014-10-09 19:53:34","1","2014-10-09 19:53:34","1");
INSERT INTO camberley_pagenavigation VALUES("201","7240","7251","1000","L","","","","","2014-10-10 22:34:36","1","2014-10-10 22:34:36","1");
INSERT INTO camberley_pagenavigation VALUES("202","7241","7252","100","M","Absence","","","","2014-10-11 13:20:04","1","2014-10-11 13:20:04","1");
INSERT INTO camberley_pagenavigation VALUES("203","7241","7253","200","M","","","","","2014-10-11 13:22:06","1","2014-10-11 13:22:06","1");
INSERT INTO camberley_pagenavigation VALUES("204","7241","7254","300","M","Reports","","","","2014-10-11 13:22:35","1","2014-10-11 13:22:35","1");
INSERT INTO camberley_pagenavigation VALUES("205","7241","7255","400","M","","","","","2014-10-11 13:23:27","1","2014-10-11 13:23:27","1");
INSERT INTO camberley_pagenavigation VALUES("206","7241","7256","500","M","Calendar","","","","2014-10-11 13:24:38","1","2014-10-11 13:24:38","1");
INSERT INTO camberley_pagenavigation VALUES("207","7241","7257","600","M","","","","","2014-10-11 13:25:28","1","2014-10-11 13:25:28","1");
INSERT INTO camberley_pagenavigation VALUES("208","7241","7258","700","L","","","","","2014-10-11 13:26:16","1","2014-10-11 13:26:16","1");
INSERT INTO camberley_pagenavigation VALUES("209","7174","7259","1300","M","Workflow","","","","2014-10-11 14:22:02","1","2014-12-21 20:42:59","1");
INSERT INTO camberley_pagenavigation VALUES("210","7174","7260","1100","L","","","","","2014-10-26 21:29:58","1","2014-12-19 12:10:02","1");
INSERT INTO camberley_pagenavigation VALUES("211","3000","7261","3100","M","Booking Administration","","","","2014-11-30 15:22:04","1","2014-11-30 15:22:04","1");
INSERT INTO camberley_pagenavigation VALUES("212","3000","7262","3200","M","","","","","2014-12-07 18:44:25","1","2014-12-07 18:44:25","1");
INSERT INTO camberley_pagenavigation VALUES("213","3000","7263","3300","M","","","","","2014-12-07 19:04:33","1","2014-12-07 19:04:33","1");
INSERT INTO camberley_pagenavigation VALUES("214","3000","7264","3400","M","","","","","2014-12-07 19:13:02","1","2014-12-07 19:13:02","1");
INSERT INTO camberley_pagenavigation VALUES("215","3000","7265","3500","M","","","","","2014-12-09 20:13:19","1","2014-12-09 20:13:19","1");
INSERT INTO camberley_pagenavigation VALUES("216","3000","7266","3600","M","","","","","2014-12-18 14:12:18","1","2014-12-18 14:12:18","1");
INSERT INTO camberley_pagenavigation VALUES("217","7174","7267","1400","M","","","","","2014-12-18 15:42:25","1","2014-12-21 20:42:56","1");
INSERT INTO camberley_pagenavigation VALUES("218","7174","7268","1500","M","","","","","2014-12-19 12:13:51","1","2014-12-21 20:42:53","1");
INSERT INTO camberley_pagenavigation VALUES("219","7174","7269","1600","M","","","","","2014-12-19 12:14:29","1","2014-12-21 20:42:49","1");
INSERT INTO camberley_pagenavigation VALUES("220","7174","7270","1700","M","Completed","","","","2014-12-19 12:17:00","1","2014-12-21 20:42:47","1");
INSERT INTO camberley_pagenavigation VALUES("221","7174","7271","1800","M","","","","","2014-12-19 12:19:12","1","2014-12-21 20:42:45","1");
INSERT INTO camberley_pagenavigation VALUES("222","7174","7272","1200","M","","","","","2014-12-19 12:19:30","1","2014-12-21 20:42:59","1");
INSERT INTO camberley_pagenavigation VALUES("223","3000","7273","3700","M","","","","","2014-12-21 13:20:56","1","2014-12-21 13:20:56","1");
INSERT INTO camberley_pagenavigation VALUES("224","3000","7274","3800","M","","","","","2014-12-21 20:55:13","1","2014-12-21 20:55:13","1");
INSERT INTO camberley_pagenavigation VALUES("225","3000","7275","3900","M","","","","","2014-12-21 20:55:42","1","2014-12-21 20:55:42","1");
INSERT INTO camberley_pagenavigation VALUES("226","1","7276","5300","P","","","","","2014-12-21 21:36:55","1","2014-12-21 21:36:55","1");
INSERT INTO camberley_pagenavigation VALUES("227","7276","7277","100","M","Data","","","","2014-12-21 21:39:17","1","2014-12-21 21:39:17","1");
INSERT INTO camberley_pagenavigation VALUES("228","7276","7278","200","M","","","","","2014-12-21 21:39:46","1","2014-12-21 21:39:46","1");
INSERT INTO camberley_pagenavigation VALUES("229","1","7279","5400","P","","","","","2014-12-22 22:08:35","1","2014-12-22 22:08:35","1");
INSERT INTO camberley_pagenavigation VALUES("230","1","7280","5500","P","","","","","2014-12-22 22:08:51","1","2014-12-22 22:08:51","1");
INSERT INTO camberley_pagenavigation VALUES("231","7279","7281","100","M","","","","","2014-12-22 22:14:49","1","2014-12-22 22:14:49","1");
INSERT INTO camberley_pagenavigation VALUES("232","7279","7282","200","M","","","","","2014-12-22 22:15:02","1","2014-12-22 22:15:02","1");
INSERT INTO camberley_pagenavigation VALUES("233","7279","7283","300","M","","","","","2014-12-22 22:15:30","1","2014-12-22 22:15:30","1");
INSERT INTO camberley_pagenavigation VALUES("234","7280","7284","100","M","","","","","2014-12-22 22:19:19","1","2014-12-22 22:19:19","1");
INSERT INTO camberley_pagenavigation VALUES("235","7280","7285","200","M","","","","","2014-12-22 22:20:53","1","2014-12-22 22:20:53","1");
INSERT INTO camberley_pagenavigation VALUES("236","7280","7286","300","M","","","","","2014-12-22 22:21:41","1","2014-12-22 22:21:41","1");
INSERT INTO camberley_pagenavigation VALUES("237","7280","7287","400","M","","","","","2014-12-22 22:22:37","1","2014-12-22 22:22:37","1");
INSERT INTO camberley_pagenavigation VALUES("238","1","7288","5600","P","","","","","2014-12-23 19:46:42","1","2014-12-23 19:46:42","1");
INSERT INTO camberley_pagenavigation VALUES("239","7279","7289","400","M","","","","","2015-01-02 12:57:48","1","2015-01-02 12:57:48","1");
INSERT INTO camberley_pagenavigation VALUES("240","7279","7290","500","L","","","","","2015-01-02 12:58:00","1","2015-01-02 12:58:00","1");
INSERT INTO camberley_pagenavigation VALUES("241","7280","7291","500","M","","","","","2015-01-10 21:56:37","1","2015-01-10 21:56:37","1");
INSERT INTO camberley_pagenavigation VALUES("242","7288","7292","600","M","Reports","","","","2015-01-11 00:09:58","1","2015-01-11 00:09:58","1");
INSERT INTO camberley_pagenavigation VALUES("243","7288","7293","700","M","","","","","2015-01-22 19:05:10","1","2015-01-22 19:05:10","1");
INSERT INTO camberley_pagenavigation VALUES("244","7288","7294","800","M","","","","","2015-06-09 21:11:50","1","2015-06-09 21:11:50","1");
INSERT INTO camberley_pagenavigation VALUES("245","7288","7295","900","L","","","","","2015-06-11 18:33:01","1","2015-06-11 18:33:01","1");
INSERT INTO camberley_pagenavigation VALUES("246","7288","7296","1000","L","","","","","2015-06-12 16:26:13","1","2015-06-12 16:26:13","1");
INSERT INTO camberley_pagenavigation VALUES("247","1","7297","5700","L","","","","","2015-06-12 18:37:09","1","2015-06-12 18:37:09","1");
INSERT INTO camberley_pagenavigation VALUES("248","7288","7298","1100","M","","","","","2015-06-13 16:05:20","1","2015-06-13 16:05:20","1");
INSERT INTO camberley_pagenavigation VALUES("249","7280","7299","600","L","","","","","2015-06-15 19:31:40","1","2015-06-15 19:31:40","1");
INSERT INTO camberley_pagenavigation VALUES("250","7280","7300","700","L","","","","","2015-06-15 19:31:59","1","2015-06-15 19:31:59","1");
INSERT INTO camberley_pagenavigation VALUES("251","1","7301","5800","L","","","","","2015-06-15 21:25:51","1","2015-06-15 21:25:51","1");
INSERT INTO camberley_pagenavigation VALUES("252","1","7302","5900","L","","","","","2015-06-15 21:26:08","1","2015-06-15 21:26:08","1");
INSERT INTO camberley_pagenavigation VALUES("253","7279","7303","600","L","","","","","2016-01-11 18:47:00","1","2016-01-11 18:47:00","1");
INSERT INTO camberley_pagenavigation VALUES("254","1","7304","6000","M","","","","","2016-01-11 18:56:18","1","2016-01-11 18:56:18","1");
INSERT INTO camberley_pagenavigation VALUES("255","1","7305","6100","M","","","","","2016-01-12 19:38:26","1","2016-01-12 19:38:26","1");
INSERT INTO camberley_pagenavigation VALUES("256","7279","7306","700","M","","","","","2016-01-16 11:55:04","1","2016-01-16 11:55:04","1");
INSERT INTO camberley_pagenavigation VALUES("257","7279","7307","800","L","","","","","2016-01-16 14:45:34","1","2016-01-16 14:45:34","1");
INSERT INTO camberley_pagenavigation VALUES("258","7279","7308","900","L","","","","","2016-01-16 15:00:47","1","2016-01-16 15:00:47","1");
INSERT INTO camberley_pagenavigation VALUES("259","1","7309","6200","P","","","","","2016-01-16 17:08:05","1","2016-01-16 17:08:05","1");
INSERT INTO camberley_pagenavigation VALUES("260","7279","7310","1000","L","","","","","2016-01-16 18:22:02","1","2016-01-16 18:22:02","1");
INSERT INTO camberley_pagenavigation VALUES("261","7279","7311","1100","M","","","","","2016-01-18 11:49:03","1","2016-01-18 11:49:03","1");
INSERT INTO camberley_pagenavigation VALUES("262","1","7312","6300","P","","","","","2016-01-19 19:54:51","1","2016-01-19 19:54:51","1");
INSERT INTO camberley_pagenavigation VALUES("263","7279","7313","1200","L","","","","","2016-01-21 12:50:10","1","2016-01-21 12:50:10","1");
INSERT INTO camberley_pagenavigation VALUES("264","7309","7314","100","M","","","","","2016-01-21 12:51:14","1","2016-01-21 12:51:14","1");
INSERT INTO camberley_pagenavigation VALUES("265","7309","7315","200","M","","","","","2016-01-21 12:51:25","1","2016-01-21 12:51:25","1");
INSERT INTO camberley_pagenavigation VALUES("266","7279","7316","1300","M","","","","","2016-02-04 18:48:08","1","2016-02-04 18:48:08","1");



DROP TABLE camberley_pageroles;

CREATE TABLE `camberley_pageroles` (
  `pageroleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pageid` int(11) NOT NULL,
  `roleid` varchar(20) NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`pageroleid`),
  UNIQUE KEY `ix_pageroles` (`pageid`,`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=1242 DEFAULT CHARSET=latin1;

INSERT INTO camberley_pageroles VALUES("3","3","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("665","11","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("9","13","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("667","100","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1095","7183","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1082","7182","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("21","1509","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1080","7180","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("174","7106","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("161","2000","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("160","14","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("159","10","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1063","7172","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("157","6","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("156","5","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("155","2","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1079","7179","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1064","7173","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1062","7171","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1061","7170","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1110","7202","COMPANY","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1070","7167","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1071","7168","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1073","7169","INSTRUCTOR","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1076","7158","INSTRUCTOR","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1072","7169","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1136","7174","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1067","7175","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1078","7178","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1068","7176","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1069","7177","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("963","4","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("654","7107","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1147","7213","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("669","100","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1084","7184","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("670","130","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("676","1271","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("678","7105","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("656","7107","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1081","7181","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1074","7160","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1050","7161","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1053","7162","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1054","7163","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1055","7164","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1097","7165","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1057","7166","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1085","7185","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("982","7125","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1116","7206","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1115","7205","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1114","7204","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1124","8","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1111","7203","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1107","7201","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1106","7200","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1105","7199","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1104","7198","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1029","7143","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1103","7197","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1102","7196","SCHOOL","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1101","7195","COMPANY","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1033","7147","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1094","7194","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1096","7193","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1092","7192","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1091","7191","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1090","7190","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1089","7189","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1088","7188","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1087","7187","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1086","7186","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1048","7159","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1075","7158","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1129","3000","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1118","7207","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1119","7208","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1120","7209","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1121","7210","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1122","7211","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1123","7212","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1128","1","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1132","7214","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1133","7215","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1134","7216","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1135","7217","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1137","7174","STATEMENTS","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1138","7218","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1139","3010","USER","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1140","7219","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1141","7220","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1142","7221","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1145","7222","TYPIST","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1144","7223","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1146","7222","ADMIN","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1148","7213","STATEMENTS","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1149","7224","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1150","7225","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1151","7226","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1152","7227","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1153","7228","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1154","7229","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1155","7230","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1156","7231","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1157","7232","PUBLIC","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pageroles VALUES("1158","7233","PUBLIC","2014-02-17 10:03:08","1","2014-02-17 10:03:08","1");
INSERT INTO camberley_pageroles VALUES("1159","7234","PUBLIC","2014-02-20 15:20:59","1","2014-02-20 15:20:59","1");
INSERT INTO camberley_pageroles VALUES("1160","7235","PUBLIC","2014-02-20 18:19:22","1","2014-02-20 18:19:22","1");
INSERT INTO camberley_pageroles VALUES("1161","7236","PUBLIC","2014-03-02 11:04:46","1","2014-03-02 11:04:46","1");
INSERT INTO camberley_pageroles VALUES("1162","7237","PUBLIC","2014-03-13 15:43:57","1","2014-03-13 15:43:57","1");
INSERT INTO camberley_pageroles VALUES("1163","7238","PUBLIC","2014-03-24 10:24:22","1","2014-03-24 10:24:22","1");
INSERT INTO camberley_pageroles VALUES("1164","7239","PUBLIC","2014-09-03 12:48:15","1","2014-09-03 12:48:15","1");
INSERT INTO camberley_pageroles VALUES("1165","7240","PUBLIC","2014-10-09 19:35:09","1","2014-10-09 19:35:09","1");
INSERT INTO camberley_pageroles VALUES("1166","7241","PUBLIC","2014-10-09 19:38:01","1","2014-10-09 19:38:01","1");
INSERT INTO camberley_pageroles VALUES("1167","7242","PUBLIC","2014-10-09 19:42:05","1","2014-10-09 19:42:05","1");
INSERT INTO camberley_pageroles VALUES("1168","7243","PUBLIC","2014-10-09 19:46:32","1","2014-10-09 19:46:32","1");
INSERT INTO camberley_pageroles VALUES("1169","7244","PUBLIC","2014-10-09 19:48:06","1","2014-10-09 19:48:06","1");
INSERT INTO camberley_pageroles VALUES("1170","7245","PUBLIC","2014-10-09 19:49:14","1","2014-10-09 19:49:14","1");
INSERT INTO camberley_pageroles VALUES("1171","7246","PUBLIC","2014-10-09 19:50:11","1","2014-10-09 19:50:11","1");
INSERT INTO camberley_pageroles VALUES("1172","7247","PUBLIC","2014-10-09 19:50:51","1","2014-10-09 19:50:51","1");
INSERT INTO camberley_pageroles VALUES("1173","7248","PUBLIC","2014-10-09 19:51:43","1","2014-10-09 19:51:43","1");
INSERT INTO camberley_pageroles VALUES("1174","7249","PUBLIC","2014-10-09 19:52:46","1","2014-10-09 19:52:46","1");
INSERT INTO camberley_pageroles VALUES("1175","7250","PUBLIC","2014-10-09 19:53:34","1","2014-10-09 19:53:34","1");
INSERT INTO camberley_pageroles VALUES("1176","7251","PUBLIC","2014-10-10 22:34:36","1","2014-10-10 22:34:36","1");
INSERT INTO camberley_pageroles VALUES("1177","7252","PUBLIC","2014-10-11 13:20:04","1","2014-10-11 13:20:04","1");
INSERT INTO camberley_pageroles VALUES("1178","7253","PUBLIC","2014-10-11 13:22:06","1","2014-10-11 13:22:06","1");
INSERT INTO camberley_pageroles VALUES("1179","7254","PUBLIC","2014-10-11 13:22:35","1","2014-10-11 13:22:35","1");
INSERT INTO camberley_pageroles VALUES("1180","7255","PUBLIC","2014-10-11 13:23:27","1","2014-10-11 13:23:27","1");
INSERT INTO camberley_pageroles VALUES("1181","7256","PUBLIC","2014-10-11 13:24:38","1","2014-10-11 13:24:38","1");
INSERT INTO camberley_pageroles VALUES("1182","7257","PUBLIC","2014-10-11 13:25:28","1","2014-10-11 13:25:28","1");
INSERT INTO camberley_pageroles VALUES("1183","7258","PUBLIC","2014-10-11 13:26:16","1","2014-10-11 13:26:16","1");
INSERT INTO camberley_pageroles VALUES("1184","7259","PUBLIC","2014-10-11 14:22:02","1","2014-10-11 14:22:02","1");
INSERT INTO camberley_pageroles VALUES("1185","7260","PUBLIC","2014-10-26 21:29:58","1","2014-10-26 21:29:58","1");
INSERT INTO camberley_pageroles VALUES("1186","7261","PUBLIC","2014-11-30 15:22:04","1","2014-11-30 15:22:04","1");
INSERT INTO camberley_pageroles VALUES("1187","7262","PUBLIC","2014-12-07 18:44:25","1","2014-12-07 18:44:25","1");
INSERT INTO camberley_pageroles VALUES("1188","7263","PUBLIC","2014-12-07 19:04:33","1","2014-12-07 19:04:33","1");
INSERT INTO camberley_pageroles VALUES("1189","7264","PUBLIC","2014-12-07 19:13:02","1","2014-12-07 19:13:02","1");
INSERT INTO camberley_pageroles VALUES("1190","7265","PUBLIC","2014-12-09 20:13:19","1","2014-12-09 20:13:19","1");
INSERT INTO camberley_pageroles VALUES("1191","7266","PUBLIC","2014-12-18 14:12:18","1","2014-12-18 14:12:18","1");
INSERT INTO camberley_pageroles VALUES("1192","7267","PUBLIC","2014-12-18 15:42:25","1","2014-12-18 15:42:25","1");
INSERT INTO camberley_pageroles VALUES("1193","7268","PUBLIC","2014-12-19 12:13:51","1","2014-12-19 12:13:51","1");
INSERT INTO camberley_pageroles VALUES("1194","7269","PUBLIC","2014-12-19 12:14:29","1","2014-12-19 12:14:29","1");
INSERT INTO camberley_pageroles VALUES("1195","7270","PUBLIC","2014-12-19 12:17:00","1","2014-12-19 12:17:00","1");
INSERT INTO camberley_pageroles VALUES("1196","7271","PUBLIC","2014-12-19 12:19:12","1","2014-12-19 12:19:12","1");
INSERT INTO camberley_pageroles VALUES("1197","7272","PUBLIC","2014-12-19 12:19:30","1","2014-12-19 12:19:30","1");
INSERT INTO camberley_pageroles VALUES("1198","7273","PUBLIC","2014-12-21 13:20:56","1","2014-12-21 13:20:56","1");
INSERT INTO camberley_pageroles VALUES("1199","7274","PUBLIC","2014-12-21 20:55:13","1","2014-12-21 20:55:13","1");
INSERT INTO camberley_pageroles VALUES("1200","7275","PUBLIC","2014-12-21 20:55:42","1","2014-12-21 20:55:42","1");
INSERT INTO camberley_pageroles VALUES("1201","7276","PUBLIC","2014-12-21 21:36:55","1","2014-12-21 21:36:55","1");
INSERT INTO camberley_pageroles VALUES("1202","7277","PUBLIC","2014-12-21 21:39:17","1","2014-12-21 21:39:17","1");
INSERT INTO camberley_pageroles VALUES("1203","7278","PUBLIC","2014-12-21 21:39:46","1","2014-12-21 21:39:46","1");
INSERT INTO camberley_pageroles VALUES("1204","7279","PUBLIC","2014-12-22 22:08:35","1","2014-12-22 22:08:35","1");
INSERT INTO camberley_pageroles VALUES("1205","7280","PUBLIC","2014-12-22 22:08:51","1","2014-12-22 22:08:51","1");
INSERT INTO camberley_pageroles VALUES("1206","7281","PUBLIC","2014-12-22 22:14:49","1","2014-12-22 22:14:49","1");
INSERT INTO camberley_pageroles VALUES("1207","7282","PUBLIC","2014-12-22 22:15:02","1","2014-12-22 22:15:02","1");
INSERT INTO camberley_pageroles VALUES("1208","7283","PUBLIC","2014-12-22 22:15:30","1","2014-12-22 22:15:30","1");
INSERT INTO camberley_pageroles VALUES("1209","7284","PUBLIC","2014-12-22 22:19:19","1","2014-12-22 22:19:19","1");
INSERT INTO camberley_pageroles VALUES("1210","7285","PUBLIC","2014-12-22 22:20:53","1","2014-12-22 22:20:53","1");
INSERT INTO camberley_pageroles VALUES("1211","7286","PUBLIC","2014-12-22 22:21:41","1","2014-12-22 22:21:41","1");
INSERT INTO camberley_pageroles VALUES("1212","7287","PUBLIC","2014-12-22 22:22:37","1","2014-12-22 22:22:37","1");
INSERT INTO camberley_pageroles VALUES("1213","7288","PUBLIC","2014-12-23 19:46:42","1","2014-12-23 19:46:42","1");
INSERT INTO camberley_pageroles VALUES("1214","7289","PUBLIC","2015-01-02 12:57:48","1","2015-01-02 12:57:48","1");
INSERT INTO camberley_pageroles VALUES("1215","7290","PUBLIC","2015-01-02 12:58:00","1","2015-01-02 12:58:00","1");
INSERT INTO camberley_pageroles VALUES("1216","7291","PUBLIC","2015-01-10 21:56:37","1","2015-01-10 21:56:37","1");
INSERT INTO camberley_pageroles VALUES("1217","7292","PUBLIC","2015-01-11 00:09:58","1","2015-01-11 00:09:58","1");
INSERT INTO camberley_pageroles VALUES("1218","7293","PUBLIC","2015-01-22 19:05:10","1","2015-01-22 19:05:10","1");
INSERT INTO camberley_pageroles VALUES("1219","7294","PUBLIC","2015-06-09 21:11:50","1","2015-06-09 21:11:50","1");
INSERT INTO camberley_pageroles VALUES("1220","7295","PUBLIC","2015-06-11 18:33:01","1","2015-06-11 18:33:01","1");
INSERT INTO camberley_pageroles VALUES("1221","7296","PUBLIC","2015-06-12 16:26:13","1","2015-06-12 16:26:13","1");
INSERT INTO camberley_pageroles VALUES("1222","7297","PUBLIC","2015-06-12 18:37:09","1","2015-06-12 18:37:09","1");
INSERT INTO camberley_pageroles VALUES("1223","7298","PUBLIC","2015-06-13 16:05:20","1","2015-06-13 16:05:20","1");
INSERT INTO camberley_pageroles VALUES("1224","7299","PUBLIC","2015-06-15 19:31:40","1","2015-06-15 19:31:40","1");
INSERT INTO camberley_pageroles VALUES("1225","7300","PUBLIC","2015-06-15 19:31:59","1","2015-06-15 19:31:59","1");
INSERT INTO camberley_pageroles VALUES("1226","7301","PUBLIC","2015-06-15 21:25:51","1","2015-06-15 21:25:51","1");
INSERT INTO camberley_pageroles VALUES("1227","7302","PUBLIC","2015-06-15 21:26:08","1","2015-06-15 21:26:08","1");
INSERT INTO camberley_pageroles VALUES("1228","7303","PUBLIC","2016-01-11 18:47:00","1","2016-01-11 18:47:00","1");
INSERT INTO camberley_pageroles VALUES("1229","7304","PUBLIC","2016-01-11 18:56:18","1","2016-01-11 18:56:18","1");
INSERT INTO camberley_pageroles VALUES("1230","7305","PUBLIC","2016-01-12 19:38:26","1","2016-01-12 19:38:26","1");
INSERT INTO camberley_pageroles VALUES("1231","7306","PUBLIC","2016-01-16 11:55:04","1","2016-01-16 11:55:04","1");
INSERT INTO camberley_pageroles VALUES("1232","7307","PUBLIC","2016-01-16 14:45:34","1","2016-01-16 14:45:34","1");
INSERT INTO camberley_pageroles VALUES("1233","7308","PUBLIC","2016-01-16 15:00:47","1","2016-01-16 15:00:47","1");
INSERT INTO camberley_pageroles VALUES("1234","7309","PUBLIC","2016-01-16 17:08:05","1","2016-01-16 17:08:05","1");
INSERT INTO camberley_pageroles VALUES("1235","7310","PUBLIC","2016-01-16 18:22:02","1","2016-01-16 18:22:02","1");
INSERT INTO camberley_pageroles VALUES("1236","7311","PUBLIC","2016-01-18 11:49:03","1","2016-01-18 11:49:03","1");
INSERT INTO camberley_pageroles VALUES("1237","7312","PUBLIC","2016-01-19 19:54:51","1","2016-01-19 19:54:51","1");
INSERT INTO camberley_pageroles VALUES("1238","7313","PUBLIC","2016-01-21 12:50:10","1","2016-01-21 12:50:10","1");
INSERT INTO camberley_pageroles VALUES("1239","7314","PUBLIC","2016-01-21 12:51:14","1","2016-01-21 12:51:14","1");
INSERT INTO camberley_pageroles VALUES("1240","7315","PUBLIC","2016-01-21 12:51:25","1","2016-01-21 12:51:25","1");
INSERT INTO camberley_pageroles VALUES("1241","7316","PUBLIC","2016-02-04 18:48:08","1","2016-02-04 18:48:08","1");



DROP TABLE camberley_pages;

CREATE TABLE `camberley_pages` (
  `pageid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pagename` varchar(50) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `mobilepagename` varchar(50) DEFAULT NULL,
  `content` text,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `ix_page` (`pagename`)
) ENGINE=MyISAM AUTO_INCREMENT=7317 DEFAULT CHARSET=latin1;

INSERT INTO camberley_pages VALUES("1","index.php","Home","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("2","system-access-denied.php","Access Denied","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("3","system-admin.php","Admin","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("5","system-login-timeout.php","Session Timeout","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("6","system-login-failed.php","Login Failed","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("8","system-register.php","Register","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("10","system-register-success.php","Register Success","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("11","system-admin-roles.php","Manage Roles","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("13","system-register-exec.php","Register Save","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("14","system-imageviewer.php","Image Viewer","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("100","profile.php","Edit Profile","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("130","users.php","Manage Users","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("2000","system-login.php","Account log in","P","m.system-login.php",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("1271","siteconfig.php","Site Configuration","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("1508","passwordchanged.php","Changed Password","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("1509","system-register-amend.php","User Amendment","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7105","managepages.php","Manage Pages","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("3010","documents.php","Documents","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7106","manageactions.php","Manage Actions","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("4","manageerrors.php","System Errors","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7125","messages.php","Messages","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7143","managegrids.php","Manage Grids","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7165","manageterms.php","Manage Terms","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7147","runalerts.php","Alert Schedule","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7239","reportbookings.php","Report Bookings","P","",0x,"2014-09-03 12:48:15","1","2014-09-03 12:48:15","1");
INSERT INTO camberley_pages VALUES("7302","system-client-exec.php","Select Client Exel","P","",0x,"2015-06-15 21:26:08","1","2015-06-15 21:26:08","1");
INSERT INTO camberley_pages VALUES("7158","managevehicles.php","Manage Vehicles","P","",0x,"0000-00-00 00:00:00","0","2014-05-13 17:27:50","1");
INSERT INTO camberley_pages VALUES("7181","instructors.php","Instructors","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7182","students.php","Students","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7216","recalculateconfirm.php","Recalculate Price","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7215","recalculateprice.php","Recalculate Price","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7214","manageinvoiceitemtemplates.php","Invoice Items","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7210","managedrivers.php","Manage Drivers","P","",0x,"0000-00-00 00:00:00","0","2014-05-13 17:28:43","1");
INSERT INTO camberley_pages VALUES("7197","companymembers.php","Company Members","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7199","schoolmembers.php","School Members","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7200","schoolsubgroups.php","School Sub Groups","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7201","managecompanysubgroups.php","Manage Sub Groups","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7204","messageview.php","Message View","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7205","messagecompose.php","Message Compose","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7206","messageforward.php","MessageForward","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7176","managebookings.php","All Bookings","P","",0x,"0000-00-00 00:00:00","0","2014-12-21 11:35:18","1");
INSERT INTO camberley_pages VALUES("7217","editinvoices.php","View / Edit Invoices","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7223","invoiceupload.php","Invoice Upload","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7230","trackingreport.php","Tracking Report","P","",0x,"0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_pages VALUES("7285","managecustomers.php","Manage Customers","P","",0x,"2014-12-22 22:20:53","1","2014-12-22 22:20:53","1");
INSERT INTO camberley_pages VALUES("7232","managetrailers.php","Manage Trailers","P","",0x,"0000-00-00 00:00:00","0","2014-05-13 17:28:10","1");
INSERT INTO camberley_pages VALUES("7233","manageauditlogs.php","Audit Logs","P","",0x,"2014-02-17 10:03:08","1","2014-02-17 10:04:20","1");
INSERT INTO camberley_pages VALUES("7234","runsql.php","Run SQL","P","",0x,"2014-02-20 15:20:59","1","2014-02-20 15:20:59","1");
INSERT INTO camberley_pages VALUES("7282","managecategories.php","Manage Categories","P","m.categories.php",0x,"2014-12-22 22:15:02","1","2016-01-11 18:42:35","1");
INSERT INTO camberley_pages VALUES("7242","raiseholidayrequest.php","Raise Holiday Requests","P","",0x,"2014-10-09 19:42:05","1","2014-10-09 19:42:05","1");
INSERT INTO camberley_pages VALUES("7243","pendingholidays.php","Pending Holiday Requests","P","",0x,"2014-10-09 19:46:32","1","2014-10-09 19:46:32","1");
INSERT INTO camberley_pages VALUES("7244","managebankholidays.php","Manage Bank Holidays","P","",0x,"2014-10-09 19:48:06","1","2014-10-09 19:48:06","1");
INSERT INTO camberley_pages VALUES("7245","holidayexceptionreport.php","Holiday Exception Report","P","",0x,"2014-10-09 19:49:14","1","2014-10-09 19:49:14","1");
INSERT INTO camberley_pages VALUES("7246","viewallholidays.php","View All Holidays","P","",0x,"2014-10-09 19:50:11","1","2014-10-09 19:50:11","1");
INSERT INTO camberley_pages VALUES("7247","viewallholidaystaken.php","View All Holidays Taken","P","",0x,"2014-10-09 19:50:51","1","2014-10-09 19:50:51","1");
INSERT INTO camberley_pages VALUES("7248","rejectedholidays.php","View All Rejected Holidays","P","",0x,"2014-10-09 19:51:43","1","2014-10-09 19:51:43","1");
INSERT INTO camberley_pages VALUES("7249","pendingholidayscalendar.php","Pending Holidays Calendar","P","",0x,"2014-10-09 19:52:46","1","2014-10-09 19:53:40","1");
INSERT INTO camberley_pages VALUES("7250","acceptedholidayscalendar.php","Accepted Holidays Calendar","P","",0x,"2014-10-09 19:53:34","1","2014-10-09 19:53:34","1");
INSERT INTO camberley_pages VALUES("7251","holidayconfirm.php","Raise Holiday Requests","P","",0x,"2014-10-10 22:34:36","1","2014-10-10 22:39:57","1");
INSERT INTO camberley_pages VALUES("7252","raiseabsencerequest.php","Raise Absence Request","P","",0x,"2014-10-11 13:20:04","1","2014-10-11 13:20:04","1");
INSERT INTO camberley_pages VALUES("7253","pendingabsences.php","Pending Absences","P","",0x,"2014-10-11 13:22:06","1","2014-10-11 13:22:06","1");
INSERT INTO camberley_pages VALUES("7254","viewabsences.php","View Absences","P","",0x,"2014-10-11 13:22:35","1","2014-10-11 13:22:35","1");
INSERT INTO camberley_pages VALUES("7255","viewsickness.php","View Sickness","P","",0x,"2014-10-11 13:23:27","1","2014-10-11 13:23:27","1");
INSERT INTO camberley_pages VALUES("7256","pendingabsencescalendar.php","Pending Absences Calendar","P","",0x,"2014-10-11 13:24:38","1","2014-10-11 13:24:38","1");
INSERT INTO camberley_pages VALUES("7257","acceptedabsencescalendar.php","Accepted Absences Calendar","P","",0x,"2014-10-11 13:25:28","1","2014-10-11 13:25:28","1");
INSERT INTO camberley_pages VALUES("7258","absenceconfirm.php","Raise Absence Request","P","",0x,"2014-10-11 13:26:16","1","2014-10-11 13:26:16","1");
INSERT INTO camberley_pages VALUES("7259","allocatejobs.php","Jobs Awaiting Allocation","P","",0x,"2014-10-11 14:22:02","1","2014-12-18 15:41:44","1");
INSERT INTO camberley_pages VALUES("7260","managebookinglegs.php","Manage Booking Legs","P","",0x,"2014-10-26 21:29:58","1","2014-10-26 21:29:58","1");
INSERT INTO camberley_pages VALUES("7261","managevehicletypes.php","Manage Vehicle Types","P","",0x,"2014-11-30 15:22:04","1","2014-11-30 15:22:04","1");
INSERT INTO camberley_pages VALUES("7262","managetaxcodes.php","Manage Tax Codes","P","",0x,"2014-12-07 18:44:25","1","2014-12-07 18:44:25","1");
INSERT INTO camberley_pages VALUES("7263","manageaccountstatus.php","Manage Account Status","P","",0x,"2014-12-07 19:04:33","1","2014-12-07 19:04:33","1");
INSERT INTO camberley_pages VALUES("7264","manageratecodes.php","Manage Rate Codes","P","",0x,"2014-12-07 19:13:02","1","2014-12-07 19:13:02","1");
INSERT INTO camberley_pages VALUES("7265","manageloadtypes.php","Manage Load Types","P","",0x,"2014-12-09 20:13:19","1","2014-12-09 20:13:19","1");
INSERT INTO camberley_pages VALUES("7266","managebookingstatus.php","Manage Booking Status","P","",0x,"2014-12-18 14:12:18","1","2014-12-18 14:12:18","1");
INSERT INTO camberley_pages VALUES("7267","jobsawaitingdrivernotification.php","Jobs Awaiting Driver Notification","P","",0x,"2014-12-18 15:42:25","1","2014-12-18 15:42:25","1");
INSERT INTO camberley_pages VALUES("7268","jobsawaitingdriverconfirmation.php","Jobs Awaiting Progress Confirmation","P","",0x,"2014-12-19 12:13:51","1","2014-12-19 12:13:51","1");
INSERT INTO camberley_pages VALUES("7269","jobsawaitingcompletion.php","Jobs In Progress","P","",0x,"2014-12-19 12:14:29","1","2014-12-19 12:18:14","1");
INSERT INTO camberley_pages VALUES("7270","completedjobs.php","Completed Jobs","P","",0x,"2014-12-19 12:17:00","1","2014-12-19 12:17:00","1");
INSERT INTO camberley_pages VALUES("7271","invoicedjobs.php","Invoiced Jobs","P","",0x,"2014-12-19 12:19:12","1","2014-12-19 12:25:41","1");
INSERT INTO camberley_pages VALUES("7272","failedjobs.php","Failed Jobs","P","",0x,"2014-12-19 12:19:30","1","2014-12-19 12:19:30","1");
INSERT INTO camberley_pages VALUES("7273","manageworktypes.php","Manage Work Types","P","",0x,"2014-12-21 13:20:56","1","2014-12-21 13:20:56","1");
INSERT INTO camberley_pages VALUES("7274","managevehicleunavailabilitycode.php","Manage Vehicle Unavailability Codes","P","",0x,"2014-12-21 20:55:13","1","2014-12-21 20:55:13","1");
INSERT INTO camberley_pages VALUES("7275","managetrailerunavailabilitycode.php","Manage Trailer Unavailability Codes","P","",0x,"2014-12-21 20:55:42","1","2014-12-21 20:55:42","1");
INSERT INTO camberley_pages VALUES("7303","managesubcategories.php","Manage Sub Categories","P","",0x,"2016-01-11 18:47:00","1","2016-01-11 18:47:00","1");
INSERT INTO camberley_pages VALUES("7277","vehicleunavailability.php","Vehicle Unavailability","P","",0x,"2014-12-21 21:39:17","1","2014-12-21 21:39:17","1");
INSERT INTO camberley_pages VALUES("7278","trailerunavailability.php","Trailer Unavailability","P","",0x,"2014-12-21 21:39:46","1","2014-12-21 21:39:46","1");
INSERT INTO camberley_pages VALUES("7279","categories.php","Categories","P","",0x,"2014-12-22 22:08:35","1","2016-01-11 18:42:21","1");
INSERT INTO camberley_pages VALUES("7284","importcustomers.php","Import Customers","P","",0x,"2014-12-22 22:19:19","1","2014-12-22 22:19:19","1");
INSERT INTO camberley_pages VALUES("7300","managecustomerclientsites.php","Manage Customer Client Sites","P","",0x,"2015-06-15 19:31:59","1","2015-06-15 19:31:59","1");
INSERT INTO camberley_pages VALUES("7306","m.categories.php","Category List (Mobile)","P","",0x,"2016-01-16 11:55:04","1","2016-01-16 11:55:04","1");
INSERT INTO camberley_pages VALUES("7301","system-client.php","Select Client","P","",0x,"2015-06-15 21:25:51","1","2015-06-15 21:25:51","1");
INSERT INTO camberley_pages VALUES("7299","managecustomerclients.php","Manage Customer Clients","P","",0x,"2015-06-15 19:31:40","1","2015-06-15 19:31:40","1");
INSERT INTO camberley_pages VALUES("7292","reportconversionstatistics.php","Report Conversion Statistics","P","",0x,"2015-01-11 00:09:58","1","2015-01-11 00:09:58","1");
INSERT INTO camberley_pages VALUES("7293","reportbulkquotations.php","Report Bulk Quotations","P","",0x,"2015-01-22 19:05:10","1","2015-01-22 19:05:10","1");
INSERT INTO camberley_pages VALUES("7294","onlineordering.php","Online Ordering","P","",0x,"2015-06-09 21:11:50","1","2015-06-09 21:11:50","1");
INSERT INTO camberley_pages VALUES("7295","processorder.php","Process Order","P","",0x,"2015-06-11 18:33:01","1","2015-06-11 18:33:01","1");
INSERT INTO camberley_pages VALUES("7296","processorderconfirm.php","Process Order Confirmation","P","",0x,"2015-06-12 16:26:13","1","2015-06-12 16:26:13","1");
INSERT INTO camberley_pages VALUES("7297","m.system-login.php","System Login (Mobile)","P","",0x,"2015-06-12 18:37:09","1","2015-06-12 18:37:09","1");
INSERT INTO camberley_pages VALUES("7298","invoices.php","Invoices","P","",0x,"2015-06-13 16:05:20","1","2015-06-13 16:05:20","1");
INSERT INTO camberley_pages VALUES("7304","dashboard.php","Dashboard","P","",0x,"2016-01-11 18:56:18","1","2016-01-11 18:56:18","1");
INSERT INTO camberley_pages VALUES("7305","manageuseragents.php","Manage User Agents","P","",0x,"2016-01-12 19:38:26","1","2016-01-12 19:38:26","1");
INSERT INTO camberley_pages VALUES("7307","m.subcategories.php","Check List","P","",0x,"2016-01-16 14:45:34","1","2016-01-16 14:45:34","1");
INSERT INTO camberley_pages VALUES("7308","m.checklist.php","Check List","P","",0x,"2016-01-16 15:00:46","1","2016-01-16 15:00:46","1");
INSERT INTO camberley_pages VALUES("7309","checklists.php","Check Lists","P","",0x,"2016-01-16 17:08:05","1","2016-01-16 17:08:05","1");
INSERT INTO camberley_pages VALUES("7310","checklistconfirm.php","Check List Confirmation","P","",0x,"2016-01-16 18:22:02","1","2016-01-16 18:22:02","1");
INSERT INTO camberley_pages VALUES("7311","importlocations.php","Import Locations","P","",0x,"2016-01-18 11:49:03","1","2016-01-18 11:49:03","1");
INSERT INTO camberley_pages VALUES("7312","reports.php","Reports","P","",0x,"2016-01-19 19:54:51","1","2016-01-19 19:54:51","1");
INSERT INTO camberley_pages VALUES("7313","m.faults.php","Faults","P","",0x,"2016-01-21 12:50:10","1","2016-01-21 12:50:10","1");
INSERT INTO camberley_pages VALUES("7314","managechecklists.php","Check Lists","P","",0x,"2016-01-21 12:51:14","1","2016-01-21 12:51:31","1");
INSERT INTO camberley_pages VALUES("7315","faults.php","Faults","P","",0x,"2016-01-21 12:51:25","1","2016-01-21 12:51:25","1");
INSERT INTO camberley_pages VALUES("7316","runchecklist.php","Re-run Checklist Schedule","P","",0x,"2016-02-04 18:48:08","1","2016-02-04 18:48:08","1");



DROP TABLE camberley_repchecklist;

CREATE TABLE `camberley_repchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `hydraulic_valves` int(11) NOT NULL,
  `hydraulic_valves_notes` text NOT NULL,
  `hydraulic_hoses` int(11) NOT NULL,
  `hydraulic_hoses_notes` text NOT NULL,
  `hydraulic_pistons` int(11) NOT NULL,
  `hydraulic_pistons_notes` text NOT NULL,
  `hydraulic_oillevel` int(11) NOT NULL,
  `hydraulic_oillevel_notes` text NOT NULL,
  `heating_toppltn` int(11) NOT NULL,
  `heating_toppltn_notes` text NOT NULL,
  `heating_bottompltn` int(11) NOT NULL,
  `heating_bottompltn_notes` text NOT NULL,
  `heating_extruder` int(11) NOT NULL,
  `heating_extruder_notes` text NOT NULL,
  `heating_injection` int(11) NOT NULL,
  `heating_injection_notes` text NOT NULL,
  `heating_oillevel` int(11) NOT NULL,
  `heating_oillevel_notes` text NOT NULL,
  `pnuematic_airpressure` int(11) NOT NULL,
  `pnuematic_airpressure_notes` text NOT NULL,
  `pnuematic_gatespeed` int(11) NOT NULL,
  `pnuematic_gatespeed_notes` text NOT NULL,
  `safety_gatenudgebar` int(11) NOT NULL,
  `safety_gatenudgebar_notes` text NOT NULL,
  `safety_emergencystop` int(11) NOT NULL,
  `safety_emergencystop_notes` text NOT NULL,
  `safety_clampsafety` int(11) NOT NULL,
  `safety_clampsafety_notes` text NOT NULL,
  `additional_columnnuts` int(11) NOT NULL,
  `additional_columnnuts_notes` text NOT NULL,
  `additional_encodebelts` int(11) NOT NULL,
  `additional_encodebelts_notes` text NOT NULL,
  `additional_platenparellelism` int(11) NOT NULL,
  `additional_platenparellelism_notes` text NOT NULL,
  `comments` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




DROP TABLE camberley_roles;

CREATE TABLE `camberley_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roleid` varchar(20) DEFAULT '',
  `systemrole` varchar(1) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO camberley_roles VALUES("1","PUBLIC","Y","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("2","ADMIN","N","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("3","USER","Y","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("48","UNAUTHENTICATED","N","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("49","STATEMENTS","N","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("50","TYPIST","N","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("51","OFFICE","N","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_roles VALUES("52","FAULT","N","2016-02-11 15:07:50","1","2016-02-11 15:07:50","1");



DROP TABLE camberley_servicechecklist;

CREATE TABLE `camberley_servicechecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `large_emerstops` int(11) NOT NULL,
  `large_emerstops_notes` text NOT NULL,
  `large_grease` int(11) NOT NULL,
  `large_grease_notes` text NOT NULL,
  `large_electrics` int(11) NOT NULL,
  `large_electrics_notes` text NOT NULL,
  `large_cooling` int(11) NOT NULL,
  `large_cooling_notes` text NOT NULL,
  `small_emerstops` int(11) NOT NULL,
  `small_emerstops_notes` text NOT NULL,
  `small_grease` int(11) NOT NULL,
  `small_grease_notes` text NOT NULL,
  `small_electrics` int(11) NOT NULL,
  `small_electrics_notes` text NOT NULL,
  `small_cooling` int(11) NOT NULL,
  `small_cooling_notes` text NOT NULL,
  `merkle_emerstops` int(11) NOT NULL,
  `merkle_emerstops_notes` text NOT NULL,
  `merkle_fingerguardfront` int(11) NOT NULL,
  `merkle_fingerguardfront_notes` text NOT NULL,
  `merkle_mechanics` int(11) NOT NULL,
  `merkle_mechanics_notes` text NOT NULL,
  `merkle_fingerguardrear` int(11) NOT NULL,
  `merkle_fingerguardrear_notes` text NOT NULL,
  `merkle_electrics` int(11) NOT NULL,
  `merkle_electrics_notes` text NOT NULL,
  `tool_electrics` int(11) NOT NULL,
  `tool_electrics_notes` text NOT NULL,
  `tool_airsupply_notes` text NOT NULL,
  `tool_filters_notes` text NOT NULL,
  `tool_cyclone_notes` text NOT NULL,
  `turbex_water_notes` text NOT NULL,
  `turbex_airsupply_notes` text NOT NULL,
  `turbex_electrics_notes` text NOT NULL,
  `shotblast1_electrics_notes` text NOT NULL,
  `shotblast1_airsupply_notes` text NOT NULL,
  `shotblast1_filters_notes` text NOT NULL,
  `shotblast1_cyclone_notes` text NOT NULL,
  `shotblast2_electrics_notes` text NOT NULL,
  `shotblast2_airsupply_notes` text NOT NULL,
  `shotblast2_filters_notes` text NOT NULL,
  `shotblast2_cyclone_notes` text NOT NULL,
  `washbooth_electrics_notes` text NOT NULL,
  `washbooth_watersupply_notes` text NOT NULL,
  `washbooth_frame_notes` text NOT NULL,
  `drybooth_electrics_notes` text NOT NULL,
  `drybooth_drivebelt_notes` text NOT NULL,
  `drybooth_frame_notes` text NOT NULL,
  `agitator_electrics_notes` text NOT NULL,
  `agitator_chains_notes` text NOT NULL,
  `agitator_grease_notes` text NOT NULL,
  `chemical_bund_notes` text NOT NULL,
  `racking_safetylock_notes` text NOT NULL,
  `racking_floorbolts_notes` text NOT NULL,
  `racking_loadmarkings_notes` text NOT NULL,
  `racking_supportbeams_notes` text NOT NULL,
  `tool_airsupply` int(11) NOT NULL,
  `tool_filters` int(11) NOT NULL,
  `tool_cyclone` int(11) NOT NULL,
  `turbex_water` int(11) NOT NULL,
  `turbex_airsupply` int(11) NOT NULL,
  `turbex_electrics` int(11) NOT NULL,
  `shotblast1_electrics` int(11) NOT NULL,
  `shotblast1_airsupply` int(11) NOT NULL,
  `shotblast1_filters` int(11) NOT NULL,
  `shotblast1_cyclone` int(11) NOT NULL,
  `shotblast2_electrics` int(11) NOT NULL,
  `shotblast2_airsupply` int(11) NOT NULL,
  `shotblast2_filters` int(11) NOT NULL,
  `shotblast2_cyclone` int(11) NOT NULL,
  `washbooth_electrics` int(11) NOT NULL,
  `washbooth_watersupply` int(11) NOT NULL,
  `washbooth_frame` int(11) NOT NULL,
  `drybooth_electrics` int(11) NOT NULL,
  `drybooth_drivebelt` int(11) NOT NULL,
  `drybooth_frame` int(11) NOT NULL,
  `agitator_electrics` int(11) NOT NULL,
  `agitator_chains` int(11) NOT NULL,
  `agitator_grease` int(11) NOT NULL,
  `chemical_bund` int(11) NOT NULL,
  `racking_safetylock` int(11) NOT NULL,
  `racking_floorbolts` int(11) NOT NULL,
  `racking_loadmarkings` int(11) NOT NULL,
  `racking_supportbeams` int(11) NOT NULL,
  `racking_uprights` int(11) NOT NULL,
  `racking_uprights_notes` text NOT NULL,
  `comments` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_servicechecklist VALUES("1","2","2016-02-17 10:25:00","1","132","1",0x,"1",0x,"0",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"0",0x,"0",0x,"1",0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,"1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1",0x,0x,0x,"1","1","2016-02-17 10:26:02","2016-02-17 10:26:02");
INSERT INTO camberley_servicechecklist VALUES("2","2","2016-02-17 10:27:00","1","133","1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,"1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1",0x,0x,0x,"1","1","2016-02-17 10:28:04","2016-02-17 10:28:04");
INSERT INTO camberley_servicechecklist VALUES("3","2","2016-02-17 10:29:00","1","134","1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,"1",0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,0x,"1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1",0x,0x,0x,"1","1","2016-02-17 10:29:06","2016-02-17 10:29:06");



DROP TABLE camberley_siteconfig;

CREATE TABLE `camberley_siteconfig` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `domainurl` varchar(60) DEFAULT NULL,
  `address` text,
  `bookingprefix` varchar(5) DEFAULT NULL,
  `invoiceprefix` varchar(5) DEFAULT NULL,
  `productcodeprefix` varchar(5) DEFAULT NULL,
  `productgroupprefix` varchar(5) DEFAULT NULL,
  `emailfooter` text,
  `lastschedulerun` date DEFAULT NULL,
  `checkpointstartdate` date DEFAULT NULL,
  `runscheduledays` int(11) DEFAULT NULL,
  `vatrate` decimal(10,2) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO camberley_siteconfig VALUES("1","http://localhost/camberley",0x556e69742031330d0a4c696e636f6c6e205061726b0d0a4c696e636f6c6e20526f61640d0a48696768205779636f6d62650d0a4275636b696e6768616d73686972650d0a4850313220335244,"ORD-","INV-","PC-","PG-",0x3c703e3c7370616e3e5468616e6b20796f7520666f72207573696e6720746865204a524d20666163696c697479207365727669636573206170702e3c2f7370616e3e3c2f703e,"2016-02-23","2015-10-07","1","20.00","0000-00-00 00:00:00","0","2016-02-23 18:02:56","1");



DROP TABLE camberley_subcategory;

CREATE TABLE `camberley_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `imageid` int(11) DEFAULT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoryid_name` (`categoryid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=82237 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_subcategory VALUES("81785","81779","OVEN1","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81786","81779","OVEN2","MEZZANINE FLOOR","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81787","81779","OVEN3","SPRAY SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81788","81779","OVEN4","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81789","81779","OVEN5","REP 13","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81790","81779","OVEN7","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81791","81779","OVEN8","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81792","81779","OVEN9","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81793","81779","OVEN10","REP 12","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81794","81779","OVEN11","REP 13","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81795","81779","OVEN12","SPRAY SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81796","81779","OVEN13","CAMLOCK ABRAID","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81797","81779","OVEN14","OVEN ROOM","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81798","81781","EL1","Rear exit maint","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81799","81781","EL2","Rear exit maint","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81800","81781","EL3","Roller shutter/services","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81801","81781","EL4","Mains incoming Fire Exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81802","81781","EL5","Maintenance workshop","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81803","81781","EL6","Rear stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81804","81781","EL7","Rear stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81805","81781","EL8","Fire Exit by server room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81806","81781","EL9","Corridor by stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81807","81781","EL10","Spray Shop High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81808","81781","EL11","Spray Shop High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81809","81781","EL12","Camlock prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81810","81781","EL13","CRM Inspection","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81811","81781","EL14","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81812","81781","EL15","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81813","81781","EL16","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81814","81781","EL17","Toilet corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81815","81781","EL18","Lapping room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81816","81781","EL19","Camlock Exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81817","81781","EL20","Gents toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81818","81781","EL21","Gents toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81819","81781","EL22","Rear door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81820","81781","EL23","Rear door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81821","81781","EL24","Corridor front door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81822","81781","EL25","Locker room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81823","81781","EL26","Front door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81824","81781","EL27","Canteen","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81825","81781","EL28","Inside front door Reception","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81826","81781","EL29","Corridor directors","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81827","81781","E30","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81828","81781","EL31","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81829","81781","EL32","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81830","81781","EL33","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81831","81781","EL34","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81832","81781","EL35","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81833","81781","EL36","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81834","81781","EL37","CamLock Stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81835","81781","EL38","Front corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81836","81781","EL39","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81837","81781","EL40","Front stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81838","81781","EL41","Directors office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81839","81781","EL42","Visitors toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81840","81781","EL43","Bonding room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81841","81781","EL44","CamLock Lab","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81842","81781","EL45","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81843","81781","EL46","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81844","81781","EL47","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81845","81781","EL48","CRM Stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81846","81781","EL49","Extension side exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81847","81781","EL50","Camlock door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81848","81781","EL51","Camlock Office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81849","81781","EL52","Abraiding room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81850","81781","EL53","Extension side exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81851","81781","EL54","Ladies toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81852","81781","EL55","Ladies toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81853","81781","EL56","Rubber racks High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81854","81781","EL57","Rubber racks High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81855","81781","EL58","Extension  ","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81856","81781","EL60","Maintenance office door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81916","81783","CP1","Main Entrance","M","","","1","","2016-02-07 21:36:44");
INSERT INTO camberley_subcategory VALUES("81917","81783","CP2","Notice Board offices","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81918","81783","CP3","Quality Office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81919","81783","CP4","Camlock Office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81920","81783","CP5","Directors Office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81921","81783","CP6","Server Room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81922","81783","CP7","Notice Board ShopFloor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81923","81783","CP8","Rear Fire Exit (Workshop)","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81924","81783","CP9","Fire Exit (CamLock Production)","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81925","81783","CP10","Fire Escape (Mains Incoming)","M","","","1","","2016-02-07 21:36:47");
INSERT INTO camberley_subcategory VALUES("81926","81783","CP11","Fire Exit (Maintenance)","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81927","81783","CP12","Rear Exit (Extension)","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81928","81783","CP13","Roller Shutter (Extension)","M","","","","","");
INSERT INTO camberley_subcategory VALUES("81929","81785","REP1","REP SHOP","A","","","1","","2016-02-01 20:58:37");
INSERT INTO camberley_subcategory VALUES("81930","81785","REP2","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81931","81785","REP4","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81932","81785","REP5","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81933","81785","REP6","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81934","81785","REP10","REP SHOP","A","","","1","","2016-02-01 20:58:40");
INSERT INTO camberley_subcategory VALUES("81935","81785","REP11","REP SHOP","A","","","1","","2016-02-01 20:58:43");
INSERT INTO camberley_subcategory VALUES("81936","81785","REP12","REP SHOP","A","","","1","","2016-02-01 20:58:46");
INSERT INTO camberley_subcategory VALUES("81937","81785","REP13","REP SHOP","A","","","1","","2016-02-01 21:00:28");
INSERT INTO camberley_subcategory VALUES("81938","81785","REP15","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81939","81785","REP16","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81940","81785","REP17","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81941","81785","REP18","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81942","81785","REP19","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81943","81785","REP20","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81944","81785","REP21","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81945","81785","ARBURG 320","REP SHOP","A","","","1","","2016-02-01 20:58:34");
INSERT INTO camberley_subcategory VALUES("81946","81785","ARBURG 270","REP SHOP","A","","","1","","2016-02-01 20:58:31");
INSERT INTO camberley_subcategory VALUES("81967","81786","TY 1","WORKSHOP","A","","","1","","2016-01-18 17:28:21");
INSERT INTO camberley_subcategory VALUES("81968","81786","TY 2","WORKSHOP","A","","","1","","2016-01-18 17:28:24");
INSERT INTO camberley_subcategory VALUES("81969","81786","Lg PALAMINE","WORKSHOP","A","","","1","","2016-01-18 17:27:57");
INSERT INTO camberley_subcategory VALUES("81993","81786","PRESS 1","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81994","81786","PRESS 2","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81995","81786","PRESS 3","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81996","81786","PRESS 4","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81997","81786","PRESS 5","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81998","81786","PRESS 8","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("81999","81786","PRESS 11","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82000","81786","PRESS 12","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82001","81786","PRESS 13","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82002","81786","PRESS 14","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82003","81786","PRESS 15","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82004","81786","PRESS 17","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82005","81786","PRESS 18","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82006","81786","PRESS 20","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82007","81786","PRESS 36","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82008","81786","PRESS 37","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82009","81786","PRESS 40","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82010","81786","PRESS 41","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82011","81786","PRESS 43","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82012","81786","PRESS 44","WORKSHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82016","81790","Check List","Check List","A","0","1","1","2016-01-22 16:58:51","2016-02-07 17:01:20");
INSERT INTO camberley_subcategory VALUES("82017","81784","Check List","Check List","A","0","1","1","2016-02-01 18:51:02","2016-02-07 17:01:49");
INSERT INTO camberley_subcategory VALUES("82083","81780","Head strip tower","2kg powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82084","81780","Maintenance office","9ltr foam","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82086","81780","Maintenance workshop","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82088","81780","Rear exit (maintenance)","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82089","81780","Rear exit (mains incoming)","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82090","81780","Server room entrance","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82092","81780","Fire exit rear stairs","9ltr Water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82093","81780","Corridor (Directors office)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82095","81780","Corridor (Quality)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82097","81780","Corridor (Sales)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82099","81780","Corridor (Lift)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82101","81780","Corridor (Conference room)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82103","81780","Reception","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82105","81780","Corridor (Reception) CRM Prod","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82106","81780","Corridor (Reception)","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82107","81780","Trimming","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82109","81780","Outside Camlock Commercial","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82110","81780","Outside Spray Shop","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82112","81780","Spray Shop","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82114","81780","Canteen","Fire Blanket","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82115","81780","Outside Mill Shop","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82118","81780","Camlock","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82120","81780","Directors Kitchen","2kg powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82122","81780","Large Van","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82123","81780","Accounts office","6Kg Powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82127","81780","Rear door ","2Kg Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82128","81780","Location","Type","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82130","81780","Maintenance Mezzanine","6kg powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82131","81780","Camlock Production exit","6kg powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82133","81780","Locker room","6kg powder","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82135","81780","Server Room","2k Co2","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82136","81780","Rear Side Door (Extension)","6ltr foam","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82137","81780","Rear Roller Door (Extension)","6ltr foam","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82138","81780","Outside Camlock Double door","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82139","81780","Inspection ","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82140","81780","Outside CRM Production Office","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82141","81780","CRM Production Office","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82142","81780","Bonding room","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82143","81780","Camlock Lab","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82144","81780","KPI Room","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82145","81780","Camlock exit","6ltr foam","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82146","81780","Camlock Stores","9ltr water","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82147","81789","L1","SERVICES","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82148","81789","L2","MAINTENANCE","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82149","81789","L3","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82150","81789","L4","CAMLOCK STORES","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82151","81789","L5","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82152","81789","L7","SERVICES","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82153","81789","L8","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82154","81789","L9","MEZZANINE","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82155","81789","L11","MAINTENANCE","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82156","81789","L12","MAINTENANCE","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82157","81789","L13","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82158","81789","L14","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82159","81789","L15","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82160","81789","L16","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82161","81789","L17","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82162","81789","L18","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82163","81789","L19","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82164","81789","L27","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82165","81789","L28","MAINTENANCE","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82166","81789","L29","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82167","81789","L30","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82168","81789","L31","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82169","81789","L32","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82170","81789","L33","REP SHOP","A","","","","","");
INSERT INTO camberley_subcategory VALUES("82171","81782","Check List","Check List","A","0","1","1","2016-02-07 15:41:15","2016-02-07 18:04:19");
INSERT INTO camberley_subcategory VALUES("82175","81782","EL1","Rear exit maint","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82176","81782","EL2","Rear exit maint","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82177","81782","EL3","Roller shutter/services","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82178","81782","EL4","Mains incoming Fire Exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82179","81782","EL5","Maintenance workshop","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82180","81782","EL6","Rear stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82181","81782","EL7","Rear stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82182","81782","EL8","Fire Exit by server room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82183","81782","EL9","Corridor by stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82184","81782","EL10","Spray Shop High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82185","81782","EL11","Spray Shop High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82186","81782","EL12","Camlock prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82187","81782","EL13","CRM Inspection","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82188","81782","EL14","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82189","81782","EL15","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82190","81782","EL16","High level CRM Prod","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82191","81782","EL17","Toilet corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82192","81782","EL18","Lapping room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82193","81782","EL19","Camlock Exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82194","81782","EL20","Gents toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82195","81782","EL21","Gents toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82196","81782","EL22","Rear door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82197","81782","EL23","Rear door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82198","81782","EL24","Corridor front door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82199","81782","EL25","Locker room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82200","81782","EL26","Front door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82201","81782","EL27","Canteen","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82202","81782","EL28","Inside front door Reception","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82203","81782","EL29","Corridor directors","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82204","81782","E30","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82205","81782","EL31","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82206","81782","EL32","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82207","81782","EL33","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82208","81782","EL34","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82209","81782","EL35","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82210","81782","EL36","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82211","81782","EL37","CamLock Stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82212","81782","EL38","Front corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82213","81782","EL39","Office corridor","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82214","81782","EL40","Front stairs","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82215","81782","EL41","Directors office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82216","81782","EL42","Visitors toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82217","81782","EL43","Bonding room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82218","81782","EL44","CamLock Lab","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82219","81782","EL45","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82220","81782","EL46","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82221","81782","EL47","CRM production office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82222","81782","EL48","CRM Stores","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82223","81782","EL49","Extension side exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82224","81782","EL50","Camlock door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82225","81782","EL51","Camlock Office","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82226","81782","EL52","Abraiding room","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82227","81782","EL53","Extension side exit","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82228","81782","EL54","Ladies toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82229","81782","EL55","Ladies toilet","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82230","81782","EL56","Rubber racks High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82231","81782","EL57","Rubber racks High level","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82232","81782","EL58","Extension  ","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82233","81782","EL60","Maintenance office door","M","","","","","");
INSERT INTO camberley_subcategory VALUES("82234","81780","Check List","Check List","A","0","1","1","2016-02-07 19:28:21","2016-02-07 19:28:21");
INSERT INTO camberley_subcategory VALUES("82236","81783","Check List","Check List","A","0","1","1","2016-02-07 21:36:39","2016-02-07 21:39:16");



DROP TABLE camberley_subcategorydocs;

CREATE TABLE `camberley_subcategorydocs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subcategoryid` int(11) DEFAULT NULL,
  `documentid` int(11) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

INSERT INTO camberley_subcategorydocs VALUES("36","27732","1","2014-12-24 12:29:23","2014-12-24 12:29:23","1","2014-12-24 12:29:23","1");
INSERT INTO camberley_subcategorydocs VALUES("37","81916","3","2016-02-07 20:20:57","2016-02-07 20:20:57","1","2016-02-07 20:20:57","1");
INSERT INTO camberley_subcategorydocs VALUES("38","81916","4","2016-02-07 20:20:57","2016-02-07 20:20:57","1","2016-02-07 20:20:57","1");
INSERT INTO camberley_subcategorydocs VALUES("39","81925","5","2016-02-07 20:21:22","2016-02-07 20:21:22","1","2016-02-07 20:21:22","1");
INSERT INTO camberley_subcategorydocs VALUES("40","81916","6","2016-02-07 20:21:49","2016-02-07 20:21:49","1","2016-02-07 20:21:49","1");
INSERT INTO camberley_subcategorydocs VALUES("41","81796","7","2016-02-07 20:27:24","2016-02-07 20:27:24","1","2016-02-07 20:27:24","1");



DROP TABLE camberley_useragent;

CREATE TABLE `camberley_useragent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `useragent` varchar(250) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useragent` (`useragent`)
) ENGINE=InnoDB AUTO_INCREMENT=81782 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO camberley_useragent VALUES("81781","IPad","Mozilla/5.0 (iPad; CPU OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) CriOS/30.0.1599.12 Mobile/11A465 Safari/8536.25 (3B92C18B-D9DE-4CB7-A02A-22FD2AF17C8F)","750","920","1","1","2016-01-12 19:41:08","2016-01-12 19:41:08");



DROP TABLE camberley_userroles;

CREATE TABLE `camberley_userroles` (
  `userroleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` varchar(20) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `metacreateddate` datetime NOT NULL,
  `metacreateduserid` int(11) NOT NULL,
  `metamodifieddate` datetime NOT NULL,
  `metamodifieduserid` int(11) NOT NULL,
  PRIMARY KEY (`userroleid`),
  UNIQUE KEY `ix_userroles` (`roleid`,`memberid`)
) ENGINE=MyISAM AUTO_INCREMENT=1690 DEFAULT CHARSET=latin1;

INSERT INTO camberley_userroles VALUES("1","PUBLIC","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1623","USER","228","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1624","INSTRUCTOR","228","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1622","PUBLIC","228","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1594","USER","219","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1619","PUBLIC","227","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1620","USER","227","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1601","INSTRUCTOR","216","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1602","INSTRUCTOR","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1603","STUDENT","216","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1604","PUBLIC","221","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1605","USER","221","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1606","INSTRUCTOR","221","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1607","PUBLIC","222","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1608","USER","222","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1609","INSTRUCTOR","222","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1610","PUBLIC","223","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1611","USER","223","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1612","INSTRUCTOR","223","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1613","PUBLIC","224","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1614","USER","224","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1615","PUBLIC","225","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1616","USER","225","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1617","PUBLIC","226","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1618","USER","226","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("345","ADMIN","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1628","COMPANY","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1629","PUBLIC","229","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1630","USER","229","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1631","COMPANY","229","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1632","INSTRUCTOR","229","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1633","PUBLIC","230","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1634","USER","230","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1635","COMPANY","230","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1636","INSTRUCTOR","230","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1637","PUBLIC","231","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1638","USER","231","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1639","COMPANY","231","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1640","INSTRUCTOR","231","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1641","PUBLIC","232","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1642","USER","232","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1643","COMPANY","232","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1644","INSTRUCTOR","232","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1645","PUBLIC","233","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1646","USER","233","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1647","COMPANY","233","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1648","INSTRUCTOR","233","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1592","PUBLIC","216","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1593","PUBLIC","219","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1688","USER","220","2015-07-31 19:29:28","1","2015-07-31 19:29:28","1");
INSERT INTO camberley_userroles VALUES("1621","INSTRUCTOR","227","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1480","USER","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1590","USER","216","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1651","PUBLIC","234","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1657","TYPIST","234","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1656","TYPIST","225","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1658","TYPIST","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1677","OFFICE","221","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1665","TYPIST","235","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1664","PUBLIC","235","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1676","OFFICE","224","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1678","OFFICE","231","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1679","OFFICE","232","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1687","PUBLIC","220","2015-07-31 19:29:28","1","2015-07-31 19:29:28","1");
INSERT INTO camberley_userroles VALUES("1681","OFFICE","1","0000-00-00 00:00:00","0","0000-00-00 00:00:00","0");
INSERT INTO camberley_userroles VALUES("1682","PUBLIC","236","2015-06-09 18:12:56","1","2015-06-09 18:12:56","1");
INSERT INTO camberley_userroles VALUES("1683","USER","236","2015-06-09 18:12:56","1","2015-06-09 18:12:56","1");
INSERT INTO camberley_userroles VALUES("1684","A","236","2015-06-09 18:12:56","1","2015-06-09 18:12:56","1");
INSERT INTO camberley_userroles VALUES("1685","PUBLIC","237","2015-06-09 18:17:39","1","2015-06-09 18:17:39","1");
INSERT INTO camberley_userroles VALUES("1686","USER","237","2015-06-09 18:17:39","1","2015-06-09 18:17:39","1");
INSERT INTO camberley_userroles VALUES("1689","FAULT","1","2016-02-11 15:07:57","1","2016-02-11 15:07:57","1");



DROP TABLE camberley_workshopchecklist;

CREATE TABLE `camberley_workshopchecklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistid` int(11) NOT NULL,
  `inspectiondate` datetime NOT NULL,
  `inspectionuserid` int(11) NOT NULL,
  `signatureid` int(11) NOT NULL,
  `hydraulichoses` int(11) NOT NULL,
  `hydraulicvalves` int(11) NOT NULL,
  `hydrauliccylinders` int(11) NOT NULL,
  `lightguard` int(11) NOT NULL,
  `frame` int(11) NOT NULL,
  `heaterstopplaten` int(11) NOT NULL,
  `heatersbottomplaten` int(11) NOT NULL,
  `timeclock` int(11) NOT NULL,
  `heatersbottomplaten_notes` text NOT NULL,
  `heaterstopplaten_notes` text NOT NULL,
  `timeclock_notes` text NOT NULL,
  `frame_notes` text NOT NULL,
  `lightguard_notes` text NOT NULL,
  `hydrauliccylinders_notes` text NOT NULL,
  `hydraulicvalves_notes` text NOT NULL,
  `hydraulichoses_notes` text NOT NULL,
  `correction_notes` text NOT NULL,
  `metacreateduserid` int(11) DEFAULT NULL,
  `metamodifieduserid` int(11) DEFAULT NULL,
  `metacreateddate` datetime DEFAULT NULL,
  `metamodifieddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklistid` (`checklistid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;




