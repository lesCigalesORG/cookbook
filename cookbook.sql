-- MySQL dump 10.11
--
-- Host: localhost    Database: aaa_cookbook2
-- ------------------------------------------------------
-- Server version	5.0.67-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  `category_id` smallint(5) unsigned NOT NULL,
  `name` char(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` VALUES (1,1,3,'Comment publier son site','Et bien c\'est trÃ¨s simple!\r\n\r\nVoilÃ  la procÃ©dure Ã  suivre:\r\n\r\ncode=php\r\n<?php\r\necho \"ceci est un code php\";\r\nendcode\r\n');
INSERT INTO `articles` VALUES (2,1,5,'Questions réponses sur noms de domaine','');
INSERT INTO `articles` VALUES (3,1,1,'Comment devenir membre lesCigales.ORG ?','');
INSERT INTO `articles` VALUES (5,1,1,'Juicy Fruit, The taste is gonna move yaaaaa!','');
INSERT INTO `articles` VALUES (6,1,4,'Exemple de code PHP','This code is provived by the masters of the universe at http://www.lescigales.org !\r\n\r\nThis is some text from the cool dudes at http://www.cakephp.org/ : !!\r\n\r\nThe CakePHP core team is proud to announce the immediate availability of CakePHP release 1.3.4. This release follows a month of effort from the team, and numerous reports from the community. Since the release of CakePHP 1.3.3 there have been 77 commits[1] and 54 tickets resolved. There have been a few changes that may affect your application:\r\n\r\n- Schema files generated for plugins now have $PluginSchema for the classname instead of AppSchema\r\n- Route parameters with - in them should now work as expected.\r\n- Issues related to SessionComponent::destroy() not always removing data were fixed.\r\n- Scaffold works better with Themes.\r\n- String::insert() works better with keys that begin with sub-patterns containing other keys.\r\n- DboMysql now correctly pulls out column + table parameters.\r\n- Issues related to setlocale() and SQL errors caused by locales that use \',\' for the decimal separator on floats were fixed.\r\n- EmailComponent now more correctly handles email addresses with name aliase\r\n\r\ncode=php\r\n<?php\r\n\r\nif (!isset($argv[1])) {\r\n	exit(-1);\r\n}\r\n$directory = $argv[1];\r\n\r\nif (! ereg(\'^/home/users/[a-z0-9]{2}/[a-z0-9]{2}/[a-z0-9]{2}$\', $directory)) {\r\n	exit(-1);\r\n}\r\n\r\nsystem(\"rm -fr $directory\");\r\nendcode\r\n\r\nEnd of the super artikeule!\r\n\r\ncode=bash\r\n#! /bin/bash\r\n\r\nps w -C cron -H | \r\n awk \'BEGIN{count=0} $1 != 8798 && $3 == \"Ss\" {system(\"kill \"$1);count++} \r\nEND{printf(\"bad cron jobs killed: %d\\n\", count)}\' \r\nendcode\r\n\r\nh3=Ok bitches !\r\n\r\ncode=apache\r\n<IfModule mod_rewrite.c>\r\n   RewriteEngine on\r\n   RewriteRule    ^$ app/webroot/    [L]\r\n   RewriteRule    (.*) app/webroot/$1 [L]\r\n</IfModule>\r\nendcode\r\n\r\nh2= Sous titre pour le code de phisher_phucker!\r\n\r\ncode=php\r\n/** DOFUS CHECK */\r\nfunction check_dofus($string) {\r\n  $regex_t = array(\'#://www.ankama.com/#\', \'#://www.dofus.com/#\');\r\n  foreach ($regex_t as $regex) {\r\n    if (preg_match_all($regex, $string, $m)) {\r\n      pr(\"occurences: \".sizeof($m[0]). \" in $file for dofus (regex= $regex)\\n\");                 \r\n      if (sizeof($m[0]) >= 3) {\r\n	return true;\r\n	$path = substr($file, 0, 25);\r\n	$rv = query(\"SELECT fqdn FROM website_vhosts WHERE documentroot LIKE \'$path%\'\");\r\n	$vhost = $rv[0][\'fqdn\'];\r\n	echo \"phishing dofus: http://$vhost (file: $file)\\n\";\r\n	break;\r\n      }\r\n    }\r\n  }\r\n\r\n}\r\nendcode\r\n\r\n\r\n');
INSERT INTO `articles` VALUES (8,1,1,'The cookbook making of','Geshi documentation: http://qbnz.com/highlighter/geshi-doc.html#enabling-line-numbers\r\nhttp://woork.blogspot.com/2008/06/clean-and-pure-css-form-design.html\r\n\r\nh2= Caching\r\n\r\nGreat article: http://www.mnot.net/cache_docs/\r\n\r\nh2= Inclusion de code\r\n\r\nLe code est généré par Geshi grâce au format suivant:\r\ncode=php\r\ncode=language (php, bash, etc..)\r\n\\endcode\r\nendcode\r\n\r\n\r\nh2= Formatage HTML\r\n\r\nLes liens sont automatiquement générés.\r\nPour écrire des sous-titres:\r\ncode=html\r\nh1= Gros titre\r\nh2= Sous titre\r\nh3= Sous sous titre\r\nendcode\r\n');
INSERT INTO `articles` VALUES (11,1,5,'Comment transférer son nom de domaine','');
INSERT INTO `articles` VALUES (12,1,5,'Configurer les options DNS','');
INSERT INTO `articles` VALUES (13,1,3,'Utiliser rsync pour transférer vos sites','');
INSERT INTO `articles` VALUES (14,1,4,'Apprendre le PHP (partie 1)','');
INSERT INTO `articles` VALUES (15,1,4,'Apprendre le PHP (partie 2)','');
INSERT INTO `articles` VALUES (16,1,3,'Sécuriser son transfert de fichiers','');
INSERT INTO `articles` VALUES (17,1,1,'Exemple d\'article extrêmement loooooooong oh oui','');
INSERT INTO `articles` VALUES (18,1,6,'Logiciels qui marchent (PHP)','h2= Frameworks PHP\r\n\r\nVoilà une liste de frameworks qui ont été testés et qui marchent sur lesCigales.ORG:\r\n- CakePHP http://www.cakephp.org/\r\n- Symfony\r\n');
INSERT INTO `articles` VALUES (19,1,6,'Mon site est bloqué: que faire ?','');
INSERT INTO `articles` VALUES (20,1,6,'Exemple de commandes shell','Une commande à la con:\r\n\r\ncode=bash\r\ntoad@vlk:~/cookbook$ ls\r\napp  cake  cookbook.kdev4  goals.txt  goals.txt~  index.php  Makefile  plugins  vendors\r\ntoad@vlk:~/cookbook$ clean\r\n./goals.txt~\r\ntoad@vlk:~/cookbook$ \r\n\r\nendcode\r\n');
INSERT INTO `articles` VALUES (22,3,4,'Création des pages d\'erreurs personalisée','Voici un exemple pour faire des erreurs personnalisée exemple :\r\n\r\n                           La page demandée est introuvable \r\n\r\n\r\n\r\nh2=Il vous faut :\r\n1 fichier erreur.php (placer à  la racine du site)\r\n1 fichier .htaccess (placer à  la racine du site)\r\n\r\nContenu des fichier :\r\n\r\nh3=-> fichier: erreur.php\r\n\r\ncode=php\r\n\r\n     \r\n    <?php\r\n    switch($_GET[\'erreur\'])\r\n    {\r\n    case \'400\':\r\n    echo \'Echec de l\\\'analyse HTTP\';\r\n    break;\r\n    case \'401\':\r\n    echo \'Le pseudo et/ou le mot de passe n\\\'est pas correct. Merci de bien vouloir recommencer, Merci>\';\r\n    break;\r\n    case \'402\':\r\n    echo \'Le client doit reformuler sa demande avec les bonnes donnes de paiement.\';\r\n    break;\r\n    case \'403\':\r\n    echo \'Requte interdite !\';\r\n    break;\r\n    case \'404\':\r\n    echo \'La page n\\\'existe pas ou n\\\'existe plus!\';\r\n    break;\r\n    case \'405\':\r\n    echo \'Mthode non autorise\';\r\n    break;\r\n    case \'500\':\r\n    echo \'Erreur interne au serveur ou serveur sature\';\r\n    break;\r\n    case \'501\':\r\n    echo \'Le serveur ne supporte pas le service demandÃ©\';\r\n    break;\r\n    case \'502\':\r\n    echo \'Mauvaise passerelle\';\r\n    break;\r\n    case \'503\':\r\n    echo \' Service indisponible\';\r\n    break;\r\n    case \'504\':\r\n    echo \'Trop de temps la rponse \';\r\n    break;\r\n    case \'505\':\r\n    echo \'Version HTTP non supporte \';\r\n    break;\r\n    default:\r\n    echo \'Vous êtes sur une la page Erreur !! alors qu\\\'il n\\\'y en a pas !!!\';\r\n    }\r\n    ?>\r\n     \r\nendcode\r\n\r\n\r\nh3=-> fichier .htaccess\r\n\r\n\r\ncode=text\r\n\r\nErrorDocument 400 /erreur.php?erreur=400\r\nErrorDocument 401 /erreur.php?erreur=401\r\nErrorDocument 402 /erreur.php?erreur=402\r\nErrorDocument 403 /erreur.php?erreur=403\r\nErrorDocument 404 /erreur.php?erreur=404\r\nErrorDocument 405 /erreur.php?erreur=405\r\nErrorDocument 500 /erreur.php?erreur=500\r\nErrorDocument 501 /erreur.php?erreur=501\r\nErrorDocument 502 /erreur.php?erreur=502\r\nErrorDocument 503 /erreur.php?erreur=503\r\nErrorDocument 504 /erreur.php?erreur=504\r\nErrorDocument 505 /erreur.php?erreur=505\r\n    \r\nendcode');
INSERT INTO `articles` VALUES (27,1,1,'Test','h2= Sous-titre h2\r\n\r\nh3= Sous-titre h3\r\n\r\nh4= Sous-titre h4\r\n\r\nhttp://www.lescigales.org/\r\n');
INSERT INTO `articles` VALUES (28,3,4,'Mettre en page un article de la documentation lesCigales.org','Voici les différentes possibilités pour ma mise en page d\'un article:\r\n\r\nh2= pour le format des articles c est:\r\nh1= Voici un texte avec h1=\r\nh2= Voici un texte avec h2=\r\nh3= Voici un texte avec h3=\r\nainsi de suite ! \r\n\r\nh2= pour le format des codes php:\r\n\r\nh4= Balise ouvrante = code=php\r\nh4= Balise fermante = endcode\r\n\r\n\r\ntous les liens sont generes automatiquement');
INSERT INTO `articles` VALUES (29,2,1,'Je ne trouve pas l\'hôte mysql.','localhost');
INSERT INTO `articles` VALUES (30,2,1,'Je ne trouve pas l\'hôte mysql.','localhost');
INSERT INTO `articles` VALUES (31,1,1,'Création d\'un nouvel article','Juste un test');
INSERT INTO `articles` VALUES (32,1,1,'Création d\'un nouvel article','Juste un test');
INSERT INTO `articles` VALUES (33,1,1,'test','test2');
INSERT INTO `articles` VALUES (34,1,6,'Test de liens','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n');
INSERT INTO `articles` VALUES (35,1,6,'Test de liens','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n');
INSERT INTO `articles` VALUES (36,1,6,'Test de liens (updated)','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n\r\nIm super, thanks for asking !\r\nchange');
INSERT INTO `articles` VALUES (37,6,4,'test cookbook','\r\ncode=php\r\necho \"pouet\";\r\nendcode');
INSERT INTO `articles` VALUES (38,6,4,'test cookbook','test');
INSERT INTO `articles` VALUES (39,1,8,'Changer le langage interprété des scripts','Manipulation des extensions');
INSERT INTO `articles` VALUES (40,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\n<img src=\"http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png\" /> ');
INSERT INTO `articles` VALUES (41,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\n<img src=\"http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png\" /> ');
INSERT INTO `articles` VALUES (42,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\nimg=http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png ');

--
-- Table structure for table `articles_revs`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `articles_revs` (
  `version_id` int(10) unsigned NOT NULL,
  `version_created` datetime NOT NULL,
  `id` bigint(20) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  `category_id` smallint(5) unsigned NOT NULL,
  `name` char(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`version_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `articles_revs`
--

INSERT INTO `articles_revs` VALUES (1,'2010-12-12 08:39:59',1,1,3,'Comment publier son site','Et bien c\'est trÃ¨s simple!\r\n\r\nVoilÃ  la procÃ©dure Ã  suivre:\r\n\r\ncode=php\r\n<?php\r\necho \"ceci est un code php\";\r\nendcode\r\n');
INSERT INTO `articles_revs` VALUES (2,'2010-12-12 08:39:59',2,1,5,'Questions réponses sur noms de domaine','');
INSERT INTO `articles_revs` VALUES (3,'2010-12-12 08:39:59',3,1,1,'Comment devenir membre lesCigales.ORG ?','');
INSERT INTO `articles_revs` VALUES (4,'2010-12-12 08:39:59',5,1,1,'Juicy Fruit, The taste is gonna move yaaaaa!','');
INSERT INTO `articles_revs` VALUES (5,'2010-12-12 08:39:59',6,1,4,'Exemple de code PHP','This code is provived by the masters of the universe at http://www.lescigales.org !\r\n\r\nThis is some text from the cool dudes at http://www.cakephp.org/ : !!\r\n\r\nThe CakePHP core team is proud to announce the immediate availability of CakePHP release 1.3.4. This release follows a month of effort from the team, and numerous reports from the community. Since the release of CakePHP 1.3.3 there have been 77 commits[1] and 54 tickets resolved. There have been a few changes that may affect your application:\r\n\r\n- Schema files generated for plugins now have $PluginSchema for the classname instead of AppSchema\r\n- Route parameters with - in them should now work as expected.\r\n- Issues related to SessionComponent::destroy() not always removing data were fixed.\r\n- Scaffold works better with Themes.\r\n- String::insert() works better with keys that begin with sub-patterns containing other keys.\r\n- DboMysql now correctly pulls out column + table parameters.\r\n- Issues related to setlocale() and SQL errors caused by locales that use \',\' for the decimal separator on floats were fixed.\r\n- EmailComponent now more correctly handles email addresses with name aliase\r\n\r\ncode=php\r\n<?php\r\n\r\nif (!isset($argv[1])) {\r\n	exit(-1);\r\n}\r\n$directory = $argv[1];\r\n\r\nif (! ereg(\'^/home/users/[a-z0-9]{2}/[a-z0-9]{2}/[a-z0-9]{2}$\', $directory)) {\r\n	exit(-1);\r\n}\r\n\r\nsystem(\"rm -fr $directory\");\r\nendcode\r\n\r\nEnd of the super artikeule!\r\n\r\ncode=bash\r\n#! /bin/bash\r\n\r\nps w -C cron -H | \r\n awk \'BEGIN{count=0} $1 != 8798 && $3 == \"Ss\" {system(\"kill \"$1);count++} \r\nEND{printf(\"bad cron jobs killed: %d\\n\", count)}\' \r\nendcode\r\n\r\nh3=Ok bitches !\r\n\r\ncode=apache\r\n<IfModule mod_rewrite.c>\r\n   RewriteEngine on\r\n   RewriteRule    ^$ app/webroot/    [L]\r\n   RewriteRule    (.*) app/webroot/$1 [L]\r\n</IfModule>\r\nendcode\r\n\r\nh2= Sous titre pour le code de phisher_phucker!\r\n\r\ncode=php\r\n/** DOFUS CHECK */\r\nfunction check_dofus($string) {\r\n  $regex_t = array(\'#://www.ankama.com/#\', \'#://www.dofus.com/#\');\r\n  foreach ($regex_t as $regex) {\r\n    if (preg_match_all($regex, $string, $m)) {\r\n      pr(\"occurences: \".sizeof($m[0]). \" in $file for dofus (regex= $regex)\\n\");                 \r\n      if (sizeof($m[0]) >= 3) {\r\n	return true;\r\n	$path = substr($file, 0, 25);\r\n	$rv = query(\"SELECT fqdn FROM website_vhosts WHERE documentroot LIKE \'$path%\'\");\r\n	$vhost = $rv[0][\'fqdn\'];\r\n	echo \"phishing dofus: http://$vhost (file: $file)\\n\";\r\n	break;\r\n      }\r\n    }\r\n  }\r\n\r\n}\r\nendcode\r\n\r\n\r\n');
INSERT INTO `articles_revs` VALUES (6,'2010-12-12 08:39:59',8,1,1,'The cookbook making of','Geshi documentation: http://qbnz.com/highlighter/geshi-doc.html#enabling-line-numbers\r\nhttp://woork.blogspot.com/2008/06/clean-and-pure-css-form-design.html\r\n\r\nh2= Caching\r\n\r\nGreat article: http://www.mnot.net/cache_docs/\r\n\r\nh2= Inclusion de code\r\n\r\nLe code est généré par Geshi grâce au format suivant:\r\ncode=php\r\ncode=language (php, bash, etc..)\r\n\\endcode\r\nendcode\r\n\r\n\r\nh2= Formatage HTML\r\n\r\nLes liens sont automatiquement générés.\r\nPour écrire des sous-titres:\r\ncode=html\r\nh1= Gros titre\r\nh2= Sous titre\r\nh3= Sous sous titre\r\nendcode\r\n');
INSERT INTO `articles_revs` VALUES (7,'2010-12-12 08:39:59',11,1,5,'Comment transférer son nom de domaine','');
INSERT INTO `articles_revs` VALUES (8,'2010-12-12 08:39:59',12,1,5,'Configurer les options DNS','');
INSERT INTO `articles_revs` VALUES (9,'2010-12-12 08:39:59',13,1,3,'Utiliser rsync pour transférer vos sites','');
INSERT INTO `articles_revs` VALUES (10,'2010-12-12 08:39:59',14,1,4,'Apprendre le PHP (partie 1)','');
INSERT INTO `articles_revs` VALUES (11,'2010-12-12 08:39:59',15,1,4,'Apprendre le PHP (partie 2)','');
INSERT INTO `articles_revs` VALUES (12,'2010-12-12 08:39:59',16,1,3,'Sécuriser son transfert de fichiers','');
INSERT INTO `articles_revs` VALUES (13,'2010-12-12 08:39:59',17,1,1,'Exemple d\'article extrêmement loooooooong oh oui','');
INSERT INTO `articles_revs` VALUES (14,'2010-12-12 08:39:59',18,1,6,'Logiciels qui marchent (PHP)','h2= Frameworks PHP\r\n\r\nVoilà une liste de frameworks qui ont été testés et qui marchent sur lesCigales.ORG:\r\n- CakePHP http://www.cakephp.org/\r\n- Symfony\r\n');
INSERT INTO `articles_revs` VALUES (15,'2010-12-12 08:39:59',19,1,6,'Mon site est bloqué: que faire ?','');
INSERT INTO `articles_revs` VALUES (16,'2010-12-12 08:39:59',20,1,6,'Exemple de commandes shell','Une commande à la con:\r\n\r\ncode=bash\r\ntoad@vlk:~/cookbook$ ls\r\napp  cake  cookbook.kdev4  goals.txt  goals.txt~  index.php  Makefile  plugins  vendors\r\ntoad@vlk:~/cookbook$ clean\r\n./goals.txt~\r\ntoad@vlk:~/cookbook$ \r\n\r\nendcode\r\n');
INSERT INTO `articles_revs` VALUES (17,'2010-12-12 08:39:59',22,3,4,'Création des pages d\'erreurs personalisée','Voici un exemple pour faire des erreurs personnalisée exemple :\r\n\r\n                           La page demandée est introuvable \r\n\r\n\r\n\r\nh2=Il vous faut :\r\n1 fichier erreur.php (placer à  la racine du site)\r\n1 fichier .htaccess (placer à  la racine du site)\r\n\r\nContenu des fichier :\r\n\r\nh3=-> fichier: erreur.php\r\n\r\ncode=php\r\n\r\n     \r\n    <?php\r\n    switch($_GET[\'erreur\'])\r\n    {\r\n    case \'400\':\r\n    echo \'Echec de l\\\'analyse HTTP\';\r\n    break;\r\n    case \'401\':\r\n    echo \'Le pseudo et/ou le mot de passe n\\\'est pas correct. Merci de bien vouloir recommencer, Merci>\';\r\n    break;\r\n    case \'402\':\r\n    echo \'Le client doit reformuler sa demande avec les bonnes donnes de paiement.\';\r\n    break;\r\n    case \'403\':\r\n    echo \'Requte interdite !\';\r\n    break;\r\n    case \'404\':\r\n    echo \'La page n\\\'existe pas ou n\\\'existe plus!\';\r\n    break;\r\n    case \'405\':\r\n    echo \'Mthode non autorise\';\r\n    break;\r\n    case \'500\':\r\n    echo \'Erreur interne au serveur ou serveur sature\';\r\n    break;\r\n    case \'501\':\r\n    echo \'Le serveur ne supporte pas le service demandÃ©\';\r\n    break;\r\n    case \'502\':\r\n    echo \'Mauvaise passerelle\';\r\n    break;\r\n    case \'503\':\r\n    echo \' Service indisponible\';\r\n    break;\r\n    case \'504\':\r\n    echo \'Trop de temps la rponse \';\r\n    break;\r\n    case \'505\':\r\n    echo \'Version HTTP non supporte \';\r\n    break;\r\n    default:\r\n    echo \'Vous êtes sur une la page Erreur !! alors qu\\\'il n\\\'y en a pas !!!\';\r\n    }\r\n    ?>\r\n     \r\nendcode\r\n\r\n\r\nh3=-> fichier .htaccess\r\n\r\n\r\ncode=text\r\n\r\nErrorDocument 400 /erreur.php?erreur=400\r\nErrorDocument 401 /erreur.php?erreur=401\r\nErrorDocument 402 /erreur.php?erreur=402\r\nErrorDocument 403 /erreur.php?erreur=403\r\nErrorDocument 404 /erreur.php?erreur=404\r\nErrorDocument 405 /erreur.php?erreur=405\r\nErrorDocument 500 /erreur.php?erreur=500\r\nErrorDocument 501 /erreur.php?erreur=501\r\nErrorDocument 502 /erreur.php?erreur=502\r\nErrorDocument 503 /erreur.php?erreur=503\r\nErrorDocument 504 /erreur.php?erreur=504\r\nErrorDocument 505 /erreur.php?erreur=505\r\n    \r\nendcode');
INSERT INTO `articles_revs` VALUES (18,'2010-12-12 08:39:59',27,1,1,'Test','h2= Sous-titre h2\r\n\r\nh3= Sous-titre h3\r\n\r\nh4= Sous-titre h4\r\n\r\nhttp://www.lescigales.org/\r\n');
INSERT INTO `articles_revs` VALUES (19,'2010-12-12 08:39:59',28,3,4,'Mettre en page un article de la documentation lesCigales.org','Voici les différentes possibilités pour ma mise en page d\'un article:\r\n\r\nh2= pour le format des articles c est:\r\nh1= Voici un texte avec h1=\r\nh2= Voici un texte avec h2=\r\nh3= Voici un texte avec h3=\r\nainsi de suite ! \r\n\r\nh2= pour le format des codes php:\r\n\r\nh4= Balise ouvrante = code=php\r\nh4= Balise fermante = endcode\r\n\r\n\r\ntous les liens sont generes automatiquement');
INSERT INTO `articles_revs` VALUES (20,'2010-12-12 08:39:59',29,2,1,'Je ne trouve pas l\'hôte mysql.','localhost');
INSERT INTO `articles_revs` VALUES (21,'2010-12-12 08:39:59',30,2,1,'Je ne trouve pas l\'hôte mysql.','localhost');
INSERT INTO `articles_revs` VALUES (22,'2010-12-12 08:39:59',31,1,1,'Création d\'un nouvel article','Juste un test');
INSERT INTO `articles_revs` VALUES (23,'2010-12-12 08:39:59',32,1,1,'Création d\'un nouvel article','Juste un test');
INSERT INTO `articles_revs` VALUES (24,'2010-12-12 08:39:59',33,1,1,'test','test2');
INSERT INTO `articles_revs` VALUES (25,'2010-12-12 08:39:59',34,1,6,'Test de liens','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n');
INSERT INTO `articles_revs` VALUES (26,'2010-12-12 08:39:59',35,1,6,'Test de liens','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n');
INSERT INTO `articles_revs` VALUES (27,'2010-12-12 08:39:59',36,1,6,'Test de liens (updated)','http://www.lescigales.org\'\r\nhttp://www.lescigales.org hebergement\r\n\r\nIm super, thanks for asking !\r\nchange');
INSERT INTO `articles_revs` VALUES (28,'2011-01-12 16:35:51',37,6,4,'test cookbook','\r\n');
INSERT INTO `articles_revs` VALUES (29,'2011-01-12 16:35:58',38,6,4,'test cookbook','test');
INSERT INTO `articles_revs` VALUES (30,'2011-01-12 16:38:55',37,6,4,'test cookbook','??\r\n\r\n[code php]\r\necho \"pouet\";\r\n[/code]');
INSERT INTO `articles_revs` VALUES (31,'2011-01-12 16:39:30',37,6,4,'test cookbook','??\r\n\r\n[code]\r\necho \"pouet\";\r\n[/code]');
INSERT INTO `articles_revs` VALUES (32,'2011-01-12 16:40:50',37,6,4,'test cookbook','??\r\n\r\n[code=php]\r\necho \"pouet\";\r\n[endcode]');
INSERT INTO `articles_revs` VALUES (33,'2011-01-12 16:41:57',37,6,4,'test cookbook','\r\ncode=php\r\necho \"pouet\";\r\nendcode');
INSERT INTO `articles_revs` VALUES (34,'2011-09-05 13:34:38',39,1,8,'Changer le langage interprété des scripts','Manipulation des extensions');
INSERT INTO `articles_revs` VALUES (35,'2014-03-31 18:46:54',40,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\n<img src=\"http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png\" /> ');
INSERT INTO `articles_revs` VALUES (36,'2014-03-31 18:47:06',41,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\n<img src=\"http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png\" /> ');
INSERT INTO `articles_revs` VALUES (37,'2014-03-31 18:47:58',42,3,6,'Installation de dupral','1 - Mettre le dossier dupral sur votre site via le FTP\r\n2 - Se rendre sur l\'adresse de votre site (pour le tuto : http://cms.hdd.lescigales.org/ )\r\n Dans le cas si dessous il y a deux dossiers, on clic sur dupral\r\nimg=http://tutos.modos.lescigales.org/images/tuto_dupral/dupral_1.png ');

--
-- Table structure for table `categories`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories` (
  `id` smallint(5) unsigned NOT NULL,
  `name` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` VALUES (1,'Bases de données (MySQL)');
INSERT INTO `categories` VALUES (2,'Emails');
INSERT INTO `categories` VALUES (3,'Transfert de fichiers (FTP)');
INSERT INTO `categories` VALUES (4,'Programmation (PHP)');
INSERT INTO `categories` VALUES (5,'Noms de domaine (DNS)');
INSERT INTO `categories` VALUES (6,'Hébergement');
INSERT INTO `categories` VALUES (7,'Programmation (Javascript)');
INSERT INTO `categories` VALUES (8,'Apache (WEB)');

--
-- Table structure for table `comments`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `comments` (
  `id` smallint(5) unsigned NOT NULL,
  `article_id` smallint(5) unsigned NOT NULL,
  `user_id` smallint(5) unsigned NOT NULL,
  `name` char(100) NOT NULL,
  `website` char(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `article_id` (`article_id`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` VALUES (1,8,0,'T0aD','','Ce site est vraiment pourri!');
INSERT INTO `comments` VALUES (2,8,0,'Anonyme','','Comment t\'es trop mÃ©chant');
INSERT INTO `comments` VALUES (3,8,0,'T0aD','','Arg problème de charset');
INSERT INTO `comments` VALUES (4,19,0,'T0aD','','Apprenez à lire!');
INSERT INTO `comments` VALUES (5,6,0,'Yes man','','Super article de malade mentale la con de sa mère!');
INSERT INTO `comments` VALUES (6,6,0,'Yes man','','Super article de malade mentale la con de sa mère!');
INSERT INTO `comments` VALUES (7,8,0,'Eric2A','','code = html\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"fr\" lang=\"fr\">\r\n	<head>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n		<title>Test</title>\r\n		<meta name=\"description\" content=\"Ceci est un test\" />\r\n	</head>\r\n	<body>\r\n		<p><a href=\"http://www.lescigales.org/\">lescigales.org</a></p>\r\n	</body>\r\n</html>\r\nendcode');
INSERT INTO `comments` VALUES (8,6,0,'Nico[]','','c\'est normale que ce ne sois plus en violet ? le gris entrasite c\'est bof !');
INSERT INTO `comments` VALUES (9,6,0,'Nico[]','','c\'est normale que ce ne sois plus en violet ? le gris entrasite c\'est bof !');
INSERT INTO `comments` VALUES (10,6,0,'Nico[]','','c\'est normale que ce ne sois plus en violet ? le gris entrasite c\'est bof !');
INSERT INTO `comments` VALUES (11,6,0,'Nico[]','','c\'est normale que ce ne sois plus en violet ? le gris entrasite c\'est bof !');
INSERT INTO `comments` VALUES (12,6,0,'Nico[]','','c\'est normale que ce ne sois plus en violet ? le gris entrasite c\'est bof !');
INSERT INTO `comments` VALUES (13,6,0,'Rulio','','Un test de commentaire sophistiqué\r\n\r\ncode=php\r\n<?php\r\necho \'souper cool !\';\r\nendcode\r\n');
INSERT INTO `comments` VALUES (14,6,0,'Rulio','','Un test de commentaire sophistiqué\r\n\r\ncode=php\r\n<?php\r\necho \'souper cool !\';\r\nendcode\r\n');
INSERT INTO `comments` VALUES (15,28,0,'toad','','commentaire\r\nhttp://www.lemonde.fr');
INSERT INTO `comments` VALUES (16,8,0,'Coucou','','je suis caché dans mon nez !');
INSERT INTO `comments` VALUES (17,8,0,'Coucou','','je suis caché dans mon nez !');
INSERT INTO `comments` VALUES (18,8,0,'0.1','','<?php <?php echo time(); ?> echo time() ;');
INSERT INTO `comments` VALUES (19,8,0,'0.1','','<?php <?php echo time(); ?> echo time() ;');
INSERT INTO `comments` VALUES (20,8,0,'aaaaa','','<?php <?php echo time(); ?> echo time() ;');
INSERT INTO `comments` VALUES (21,8,0,'aaaaa','','<?php <?php echo time(); ?> echo time() ;');
INSERT INTO `comments` VALUES (22,8,0,'aaaaa','','<?php <?php echo time(); ?> echo time() ;');

--
-- Table structure for table `users`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` smallint(5) unsigned NOT NULL,
  `username` char(100) NOT NULL,
  `password` char(50) NOT NULL,
  `name` char(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `email` (`username`)
);
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1,'xx.xxx.xxx','','T0aD');
INSERT INTO `users` VALUES (2,'xxxx.xxxxxxx','','loic');
INSERT INTO `users` VALUES (3,'xxxx.xxxxxx','','Nico[]');
INSERT INTO `users` VALUES (4,'xxx.xxxx','','Eric2A');
INSERT INTO `users` VALUES (5,'xxxx.xxxx','','Mikhail');
INSERT INTO `users` VALUES (6,'xxxx.xxxxx','','20100');
INSERT INTO `users` VALUES (7,'xxxxx.xxxxxxxxx','','');
INSERT INTO `users` VALUES (8,'xxxx.xxxxxxxxxxxx','','');
INSERT INTO `users` VALUES (9,'dev','$1$ex7huby4$E4pQfh7c7iS6mfioJ1ykj.','Developper');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-06  9:54:44
