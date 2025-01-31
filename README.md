# psa-rcc-reverse
анализ прошивок магнитолы bosch RCC EU
  
В линейке магнитол одного поколения существуют несколько типов в зависимости от комплектации и рынка сбыта.  
Здесь речь идёт о магнитоле производства Bosch под названием RCC. Не путать с RCC производства Continental, в основном поставляющаяся на рынок Китая.  
  
RCC на данный момент существует в двух поколениях wave2 и wave3.  
Прошивки для wave2 начинаются с  0 или 1  
  
### WAVE2

| Archive Name | Archive Download link |
| - | - |
| PSA_rcc-firmware_0_130_15-7A133-9 | [0.130](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_0_130_15-7A133-9_.tar) |
| PSA_rcc-firmware_1_049_16-1B055-24 | [1.049](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_1_049_16-1B055-24_.tar) |
| PSA_rcc-firmware_1_072_16-1B104 | [1.072](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/BOSCH_CAR_MULTIMEDIA/rcc-firmware/PSA_rcc-firmware_1_072_16-1B104_.tar) |
| PSA_rcc-firmware_1_073_16-1B108 | [1.073](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_073_16-1B108.tar) |
| PSA_rcc-firmware_1_074_16-1B116_RCC_EU_W2 | [1.074](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_074_16-1B116_RCC_EU_W2.tar) |
| PSA_rcc-firmware_1_075_16-1B116_RCC_EU_W2 | [1.075](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_075_16-1B116_RCC_EU_W2.tar) |
| PSA_rcc-firmware_1_076_16-1B116-4_RCC_EU_W2 | [1.076](https://majestic-web.mpsa.com/nas/eu/mjb00/RCC_EU/rcc-firmware/PSA_rcc-firmware_1_076_16-1B116-4_RCC_EU_W2.tar) |

### Ключ лицензии
Прямая ссылка на запрос файла сертификата с серверов PSA:  
```
https://majestic-web.mpsa.com/mjf00-web/rest/LicenseDownload?mediaVersion=IIIIIIIIIIIIIIIIII&uin=UUUUUUUUUUUUUUUUUUUU
```
где IIIIIIIIIIIIIIIIII - ID - версия прошивки, находящиеся в файле UpdateInfo.xml рядом с прошивкой  
 UUUUUUUUUUUUUUUUUUUU - идентификационный номер магнитолы.
