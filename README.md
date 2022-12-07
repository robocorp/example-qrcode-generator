# QR Code Generator

This example shows how to generate QR codes from the robot code. It uses Python package called [qrcode](https://pypi.org/project/qrcode) which is wrapped in to a python function.

The example contains two tasks:

1. Generate QR code from a EAN-13 product code. This task opens a website, reads the EAN-13 code from a specidied locator and outputs a QR code image to the robot's output folder.
2. Generate QR code from the URL and output it as an image to the robot's output folder.