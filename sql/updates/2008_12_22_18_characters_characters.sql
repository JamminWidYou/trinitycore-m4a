ALTER TABLE character_db_version CHANGE COLUMN required_2008_12_22_06_characters_character_achievement required_2008_12_22_18_characters_characters bit;

UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');


UPDATE characters SET data = CONCAT(
  SUBSTRING(data, 1, length(SUBSTRING_INDEX(data, ' ', 10))), " 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 10))+2, length(SUBSTRING_INDEX(data, ' ', 18))- length(SUBSTRING_INDEX(data, ' ', 10)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 20))+2, length(SUBSTRING_INDEX(data, ' ', 22))- length(SUBSTRING_INDEX(data, ' ', 20)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 36))+2, length(SUBSTRING_INDEX(data, ' ', 37))- length(SUBSTRING_INDEX(data, ' ', 36)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 22))+2, length(SUBSTRING_INDEX(data, ' ', 28))- length(SUBSTRING_INDEX(data, ' ', 22)) - 1), " 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 28))+2, length(SUBSTRING_INDEX(data, ' ', 34))- length(SUBSTRING_INDEX(data, ' ', 28)) - 1), " 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 1564))+2, length(SUBSTRING_INDEX(data, ' ', 1565))- length(SUBSTRING_INDEX(data, ' ', 1564)) - 1), " 0 0 0 0 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 1565))+2, length(SUBSTRING_INDEX(data, ' ', 1566))- length(SUBSTRING_INDEX(data, ' ', 1565)) - 1), " 0 0 0 0 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 34))+2, length(SUBSTRING_INDEX(data, ' ', 36))- length(SUBSTRING_INDEX(data, ' ', 34)) - 1), " 0 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 46))+2, length(SUBSTRING_INDEX(data, ' ', 48))- length(SUBSTRING_INDEX(data, ' ', 46)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 146))+2, length(SUBSTRING_INDEX(data, ' ', 170))- length(SUBSTRING_INDEX(data, ' ', 146)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 171))+2, length(SUBSTRING_INDEX(data, ' ', 209))- length(SUBSTRING_INDEX(data, ' ', 171)) - 1), " ",
  ((SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 209))+2, length(SUBSTRING_INDEX(data, ' ', 210))- length(SUBSTRING_INDEX(data, ' ', 209)) - 1) & ~0x100) | ((SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 46))+2, length(SUBSTRING_INDEX(data, ' ', 47))- length(SUBSTRING_INDEX(data, ' ', 46)) - 1) & 0x1000) >> 4)), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 210))+2, length(SUBSTRING_INDEX(data, ' ', 233))- length(SUBSTRING_INDEX(data, ' ', 210)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 233))+2, length(SUBSTRING_INDEX(data, ' ', 358))- length(SUBSTRING_INDEX(data, ' ', 233)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 358))+2, length(SUBSTRING_INDEX(data, ' ', 359))- length(SUBSTRING_INDEX(data, ' ', 358)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 359))+2, length(SUBSTRING_INDEX(data, ' ', 374))- length(SUBSTRING_INDEX(data, ' ', 359)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 374))+2, length(SUBSTRING_INDEX(data, ' ', 375))- length(SUBSTRING_INDEX(data, ' ', 374)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 375))+2, length(SUBSTRING_INDEX(data, ' ', 390))- length(SUBSTRING_INDEX(data, ' ', 375)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 390))+2, length(SUBSTRING_INDEX(data, ' ', 391))- length(SUBSTRING_INDEX(data, ' ', 390)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 391))+2, length(SUBSTRING_INDEX(data, ' ', 406))- length(SUBSTRING_INDEX(data, ' ', 391)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 406))+2, length(SUBSTRING_INDEX(data, ' ', 407))- length(SUBSTRING_INDEX(data, ' ', 406)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 407))+2, length(SUBSTRING_INDEX(data, ' ', 422))- length(SUBSTRING_INDEX(data, ' ', 407)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 422))+2, length(SUBSTRING_INDEX(data, ' ', 423))- length(SUBSTRING_INDEX(data, ' ', 422)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 423))+2, length(SUBSTRING_INDEX(data, ' ', 438))- length(SUBSTRING_INDEX(data, ' ', 423)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 438))+2, length(SUBSTRING_INDEX(data, ' ', 439))- length(SUBSTRING_INDEX(data, ' ', 438)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 439))+2, length(SUBSTRING_INDEX(data, ' ', 454))- length(SUBSTRING_INDEX(data, ' ', 439)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 454))+2, length(SUBSTRING_INDEX(data, ' ', 455))- length(SUBSTRING_INDEX(data, ' ', 454)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 455))+2, length(SUBSTRING_INDEX(data, ' ', 470))- length(SUBSTRING_INDEX(data, ' ', 455)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 470))+2, length(SUBSTRING_INDEX(data, ' ', 471))- length(SUBSTRING_INDEX(data, ' ', 470)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 471))+2, length(SUBSTRING_INDEX(data, ' ', 486))- length(SUBSTRING_INDEX(data, ' ', 471)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 486))+2, length(SUBSTRING_INDEX(data, ' ', 487))- length(SUBSTRING_INDEX(data, ' ', 486)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 487))+2, length(SUBSTRING_INDEX(data, ' ', 502))- length(SUBSTRING_INDEX(data, ' ', 487)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 502))+2, length(SUBSTRING_INDEX(data, ' ', 503))- length(SUBSTRING_INDEX(data, ' ', 502)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 503))+2, length(SUBSTRING_INDEX(data, ' ', 518))- length(SUBSTRING_INDEX(data, ' ', 503)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 518))+2, length(SUBSTRING_INDEX(data, ' ', 519))- length(SUBSTRING_INDEX(data, ' ', 518)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 519))+2, length(SUBSTRING_INDEX(data, ' ', 534))- length(SUBSTRING_INDEX(data, ' ', 519)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 534))+2, length(SUBSTRING_INDEX(data, ' ', 535))- length(SUBSTRING_INDEX(data, ' ', 534)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 535))+2, length(SUBSTRING_INDEX(data, ' ', 550))- length(SUBSTRING_INDEX(data, ' ', 535)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 550))+2, length(SUBSTRING_INDEX(data, ' ', 551))- length(SUBSTRING_INDEX(data, ' ', 550)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 551))+2, length(SUBSTRING_INDEX(data, ' ', 566))- length(SUBSTRING_INDEX(data, ' ', 551)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 566))+2, length(SUBSTRING_INDEX(data, ' ', 567))- length(SUBSTRING_INDEX(data, ' ', 566)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 567))+2, length(SUBSTRING_INDEX(data, ' ', 582))- length(SUBSTRING_INDEX(data, ' ', 567)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 582))+2, length(SUBSTRING_INDEX(data, ' ', 583))- length(SUBSTRING_INDEX(data, ' ', 582)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 583))+2, length(SUBSTRING_INDEX(data, ' ', 598))- length(SUBSTRING_INDEX(data, ' ', 583)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 598))+2, length(SUBSTRING_INDEX(data, ' ', 599))- length(SUBSTRING_INDEX(data, ' ', 598)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 599))+2, length(SUBSTRING_INDEX(data, ' ', 614))- length(SUBSTRING_INDEX(data, ' ', 599)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 614))+2, length(SUBSTRING_INDEX(data, ' ', 615))- length(SUBSTRING_INDEX(data, ' ', 614)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 615))+2, length(SUBSTRING_INDEX(data, ' ', 630))- length(SUBSTRING_INDEX(data, ' ', 615)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 630))+2, length(SUBSTRING_INDEX(data, ' ', 631))- length(SUBSTRING_INDEX(data, ' ', 630)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 631))+2, length(SUBSTRING_INDEX(data, ' ', 646))- length(SUBSTRING_INDEX(data, ' ', 631)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 646))+2, length(SUBSTRING_INDEX(data, ' ', 647))- length(SUBSTRING_INDEX(data, ' ', 646)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 647))+2, length(SUBSTRING_INDEX(data, ' ', 922))- length(SUBSTRING_INDEX(data, ' ', 647)) - 1),
  " 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 922))+2, length(SUBSTRING_INDEX(data, ' ', 926))- length(SUBSTRING_INDEX(data, ' ', 922)) - 1), " 0 0 0 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 926))+2, length(SUBSTRING_INDEX(data, ' ', 1332))- length(SUBSTRING_INDEX(data, ' ', 926)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 1332))+2, length(SUBSTRING_INDEX(data, ' ', 1544))- length(SUBSTRING_INDEX(data, ' ', 1332)) - 1), " 0 ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 1544))+2, length(SUBSTRING_INDEX(data, ' ', 1564))- length(SUBSTRING_INDEX(data, ' ', 1544)) - 1), " ",
  SUBSTRING(data, length(SUBSTRING_INDEX(data, ' ', 1566))+2, length(SUBSTRING_INDEX(data, ' ', 1592))- length(SUBSTRING_INDEX(data, ' ', 1566)) - 1),
  " 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ")
WHERE length(SUBSTRING_INDEX(data, ' ', 1592)) < length(data) and length(SUBSTRING_INDEX(data, ' ', 1593)) >= length(data);