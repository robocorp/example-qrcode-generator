*** Settings ***
Documentation       Generates QR codes using python library `qrcode`.
...                 One code is generated from an EAN-13 product code that is read from
...                 a website. Another one is generated from a link to the site.
Library             RPA.Browser.Selenium
Library             converter

*** Variables ***
${WEBSITE}                      https://www.upcitemdb.com/upc/041244600533
${LOCATOR_BARCODE}              //tr[td[text()='EAN-13:']]/td[2]

*** Tasks ***
Convert EAN13 to QR Code
    [Documentation]    Generates a QR code from an EAN-13 product code read from the website.
    Open Available Browser    ${WEBSITE}
    ${EAN13}=  Get Text  ${LOCATOR_BARCODE}
    Create Qrcode    output/qr-ean.png      ${EAN13}

Generate QR Code from a link
    [Documentation]    Generates a QR code from a link to the website.
    Create Qrcode    output/qr-link.png      ${WEBSITE}