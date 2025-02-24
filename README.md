# psa-rcc-reverse
анализ прошивок магнитолы bosch RCC EU
  
В линейке магнитол одного поколения существуют несколько типов в зависимости от комплектации и рынка сбыта.  
Здесь речь идёт о магнитоле производства Bosch под названием RCC. Не путать с RCC производства Continental, в основном поставляющаяся на рынок Китая.  
  
RCC на данный момент существует в двух поколениях wave2 и wave3.  
Прошивки для wave2 начинаются с  0 или 1  
Прошивки для wave3 начинаются с  2  
ГУ существуют в двух редакциях A1 и A2  
A1 процессор MCIMX6S6AVM08AC Single core  
A2 процессор MCIMX6U6AVM08AC Dual core  
A2 имеет поддержку Carplay AndroidAuto MirrokLink VP1(visio park на одной камере)  
Версию головного устройства можно узнать по версии прошивки в меню. Последняя буква означает тип головного устройства  
A - A1  
B - A1 dab  
C - A2  
D - A2 dab  
Платформа wave2 и wave3 одна и таже и имеет одни и теже компоненты.  
Отличие wave2 - наличие третьего вывода USB под BTA(блок телематики). Процессор имеет два порта USB. Разъёмы USB2 и USB3 подключены к процессору через HUB. В wave3 HUB сохраняется, но нет самого вывода.  
wave2 A2 имеет WIFI и gps.  

### Маркировка блоков
wave2 имеет стикер с обозначением ревизии A1/A2 а так же информацию под ним:  
NUM - цифровое радио(dab)  
Single antenna version - ГУ использует только один вход на разъёме антенны. При этом на плате распаяны все компоненты для двух тюнеров. Используется когда в автомобиле имеется только одна радио антена(более универсальное ГУ, так как подходит под все автомобили). Если этой маркировки нет, то задействованы обе антены. Теоритическое преимущество - возможно задествована разнесённая схема аннтен(более хороший приём радио сигнала).  
wave3 всегда имеет маркировку A1 a2r, версия смотрится по таблице номеров.  
###  Версии
|PSA №|Bosch №|version|single<br/>antenna|dab|other|
|-|-|-|-|-|-|
|9820249780|7503900020|A1||||
||7503900021|A1|x|||
||7503900022|A1||x||
|9820250080|7503900023|A1|x|x||
|9820250180|7503900024|A2||||
|9820250280|7503900025|A2|x|||
|9820250380|7503900026|A2||x||
|9820250480|7503900027|A2|x|x||
|9822729680|7503900130|A1||||
|9822729780|7503900131|A1|x|||
||7503900132|A1||x||
||7503900133|A1|x|x||
|9822730080|7503900134|A2||||
|9822730180|7503900135|A2|x|||
|9822730280|7503900136|A2||x||
|9822730380|7503900137|A2|x|x||
||7503900232|A1||||
||7503900233|A1|x|||
||7503900234|A1||x||
|9824005580|7503900235|A1|x|x||
||7503900236|A2||||
|9824005780|7503900237|A2|x|||
|9824005980|7503900238|A2||x||
|9824006080|7503900239|A2|x|x||
||7503900240|A2|x|x|DS3|
||7503900255|A2||||
|9828709080|7503900256|A2|x|||
|9828709180|7503900257|A2||x||
|9828709480|7503900258|A2|x|x||
||7503900259|A2|x|x|DS3|
||7503900264|A1||||
||7503900265|A1|x|||
||7503900266|A1||x||
||7503900267|A1|x|x||
||7503900270|?|?|?|?|
||7503900271|?|?|?|?|
||7503900272|?|?|?|?|
||7503900273|?|?|?|?|
||7503900274|?|?|?|?|
||7503900275|?|?|?|?|
||7503900276|?|?|?|?|
||7503900277|?|?|?|?|
||7503900278|?|?|?|?|
||7503900280|A1|||2019|
||7503900281|A1|x||2019,radiobox|
||7503900282|A1||x|2019,radiobox|
||7503900283|A1|x|x|2019,radiobox|
|9833499380|7503900284|A2|||2019,radiobox|
|9833499580|7503900285|A2|x||2019,radiobox|
|9833499780|7503900286|A2||x|2019,radiobox|
|9833500080|7503900287|A2|x|x|2019,radiobox|
||7503900290|?|?|?|?|
||7503900291|?|?|?|?|
||7503900292|?|?|?|?|
||7503900293|?|?|?|?|
||7503900294|?|?|?|?|
|9841575180|7503900295|A2|?||?|
||7503900296|?|?|?|?|
|9841575880|7503900297|?|?|x|?|
||7503900490|?|?|?|?|
||7503900491|?|?|?|?|
||7503900492|?|?|?|?|
||7503900493|?|?|?|?|
||7503900494|?|?|?|?|
||7503900495|?|?|?|?|
||7503900496|?|?|?|?|
||7503900497|?|?|?|?|
||7503900620|?|?|?|?|
||7503900621|?|?|?|?|
||7503900622|?|?|?|?|
||7503900623|?|?|?|?|
||7503900624|?|?|?|?|
||7503900625|?|?|?|?|
||7503900626|?|?|?|?|
||7503900627|?|?|?|?|



### WAVE2  
| Archive Name | Archive Download link | ID |
| - | - | - |
| PSA_rcc-firmware_0_130_15-7A133-9 | [0.130](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_0_130_15-7A133-9_.tar) | 005315191480086732 |
| PSA_rcc-firmware_1_049_16-1B055-24 | [1.049](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_1_049_16-1B055-24_.tar) | 005315191484217628 |
| PSA_rcc-firmware_1_072_16-1B104 | [1.072](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_1_072_16-1B104_.tar) | 005315191489042038 |
| PSA_rcc-firmware_1_073_16-1B108 | [1.073](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_073_16-1B108.tar) | 005315191492775864 |
| PSA_rcc-firmware_1_074_16-1B116_RCC_EU_W2 | [1.074](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_074_16-1B116_RCC_EU_W2.tar) | 005315191511546036 |
| PSA_rcc-firmware_1_075_16-1B116_RCC_EU_W2 | [1.075](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_075_16-1B116_RCC_EU_W2.tar) | 005315191543853442 |
| PSA_rcc-firmware_1_076_16-1B116-4_RCC_EU_W2 | [1.076](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_076_16-1B116-4_RCC_EU_W2.tar) | 005315191561559942 |


### Ключ лицензии
Прямая ссылка на запрос файла сертификата с серверов PSA:  
```
https://majestic-web.mpsa.com/mjf00-web/rest/LicenseDownload?mediaVersion=IIIIIIIIIIIIIIIIII&uin=UUUUUUUUUUUUUUUUUUUU
```
где IIIIIIIIIIIIIIIIII - ID - версия прошивки, находящиеся в файле UpdateInfo.xml рядом с прошивкой  
 UUUUUUUUUUUUUUUUUUUU - идентификационный номер магнитолы.  
 Сам UIN можно вычитать из магнитолы или посмотреть на этикетке  
 ![alt text](/foto/uin.jpg)  
BPN=$1  
BSN=$2  
UIN="2D0$BPN$BSN"   
Что представляет собой файл лицензии: это зашифрованный и подписанный документ. Подпись включает цепочку сертификатов. Содержимое расшифровывается уникальным ключом магнитолы, находящимся внутри магнитолы. Само содержимое представляет ключ для расшифровки файлов прошивки.  
Процесс обновления: магнитола проверяет подпись файла, доверяя корневому сертификату. Извлекает и расшифровывает содержимое файла лицензии. Расшифровывает прошивку ключом из лицензии.  
Пример извлечения содержимого из файла лицензии при известном ключе магнитолы:  
```
openssl cms -in license_UIN.key -verify -noverify | openssl smime -decrypt -inkey RCC-privkey.pem
```


  ### раскодирование файлов прошивки осуществляется командой:
```
openssl enc -d -aes-256-cbc -in if.file -out out.file -K %1 -iv %2
```
где %1 - ключ; %2 - iv ключа  

Скрипт под windows который раскриптует файлы прошивки в автоматическом режиме.  
```
unpack_rcc_windows.bat %1 %2
```
скрипт положить рядом с папкой rcc_update  
использовать соответствующие ключи из папки key_waveX  
В системе должен быть установлен openssl или скрипт должен запускаться в командной строке openssl  
