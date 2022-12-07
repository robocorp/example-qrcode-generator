import qrcode

def create_qrcode(filename, data):
    # Edit this to change the size of the QR code
    qr = qrcode.QRCode(version=1, box_size=10, border=5)
    qr.add_data(data)
    qr.make(fit=True)
    # Edit this to change the color of the QR code
    img = qr.make_image(fill='black', back_color='white')
    img.save(filename)