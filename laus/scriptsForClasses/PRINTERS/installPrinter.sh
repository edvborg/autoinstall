#!/bin/bash

# installPrinterModel.sh <PRINTER_NAME> <PRINTER_LOCATION> <PRINTER_DNS_NAME> <PRINTER_DRIVER> <DEFAULT_PRINTER>
#
# Pfade:
# LAUS-ROOT
# |-PRINTERS
# |-| installPrinterModel.sh
# |-| installPrinter.sh (dieses Script)
# |-scriptsForClasses
# |-| R00X
# |-|-| installPrinter.sh <Printer-name> (aufrufendes Script)
#
# Deshalb in diesem Script Aufruf von installPrinterModel.sh relativ (../../PRINTERS)
DEFAULT_PRINTER=$2

case $1 in
  Samsung-CLP300* )
    ../../PRINTERS/installPrinterModel.sh \
      "Samsung-CLP300n" \
      "Printer in Raum 407" \
      "10.127.0.8" \
      "foo2zjs:0/ppd/foo2zjs/Samsung-CLP-300.ppd" \
      $DEFAULT_PRINTER
  ;;
  # Brother-Bibliothek* )
    # ./installPrinterModel.sh "Brother-Bibliothek" "Printer in Bibliothek" "10.0.9.151" "openprinting-ppds:0/ppd/openprinting/Brother/BR8050_2_GPL.ppd"
  # ;;
  # <PrinterName> )
  # ./installPrinterModel.sh ....
  # ;;
esac

