#!/bin/sh


cp ../ryzen-hackintosh-dude/ryzen-hackintosh/BOOT/BOOTx64.efi EFI/BOOT/BOOTx64.efi
cp -r ../ryzen-hackintosh-dude/ryzen-hackintosh/OC/Drivers/* EFI/OC/Drivers
cp -r ../ryzen-hackintosh-dude/ryzen-hackintosh/OC/Kexts/* EFI/OC/Kexts
cp -r ../ryzen-hackintosh-dude/ryzen-hackintosh/OC/OpenCore.efi EFI/OC/OpenCore.efi
cp -r ../ryzen-hackintosh-dude/ryzen-hackintosh/OC/Resources EFI/OC
cp -r ../ryzen-hackintosh-dude/ryzen-hackintosh/OC/Tools EFI/OC
