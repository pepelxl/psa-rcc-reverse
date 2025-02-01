# psa-rcc-reverse
анализ прошивок магнитолы bosch RCC EU
  
В линейке магнитол одного поколения существуют несколько типов в зависимости от комплектации и рынка сбыта.  
Здесь речь идёт о магнитоле производства Bosch под названием RCC. Не путать с RCC производства Continental, в основном поставляющаяся на рынок Китая.  
  
RCC на данный момент существует в двух поколениях wave2 и wave3.  
Прошивки для wave2 начинаются с  0 или 1  
wave2 существуют в двух редакциях A1 и A2  
A1 процессор MCIMX6S6AVM08AC Single core  
A2 процессор MCIMX6U6AVM08AC Dual core  
Кроме того A2 имеет на борту wifi модуль и поддержку Carplay AndroidAuto MirrokLink  
Версию головного устройства можно узнать по версии прошивки в меню. Последняя буква означает тип головного устройства  
A - A1  
B - A1 dab  
C - A2  
D - A2 dab  
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
