# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"F443000","system":"readv2"},{"code":"20130.0","system":"readv2"},{"code":"91596.0","system":"readv2"},{"code":"14731.0","system":"readv2"},{"code":"64804.0","system":"readv2"},{"code":"38716.0","system":"readv2"},{"code":"478.0","system":"readv2"},{"code":"21163.0","system":"readv2"},{"code":"43159.0","system":"readv2"},{"code":"2161.0","system":"readv2"},{"code":"37140.0","system":"readv2"},{"code":"10579.0","system":"readv2"},{"code":"106506.0","system":"readv2"},{"code":"7882.0","system":"readv2"},{"code":"64052.0","system":"readv2"},{"code":"38342.0","system":"readv2"},{"code":"92888.0","system":"readv2"},{"code":"54389.0","system":"readv2"},{"code":"55940.0","system":"readv2"},{"code":"2703.0","system":"readv2"},{"code":"69723.0","system":"readv2"},{"code":"72546.0","system":"readv2"},{"code":"98094.0","system":"readv2"},{"code":"6849.0","system":"readv2"},{"code":"2245.0","system":"readv2"},{"code":"17313.0","system":"readv2"},{"code":"5556.0","system":"readv2"},{"code":"63210.0","system":"readv2"},{"code":"477.0","system":"readv2"},{"code":"61223.0","system":"readv2"},{"code":"29764.0","system":"readv2"},{"code":"17480.0","system":"readv2"},{"code":"50067.0","system":"readv2"},{"code":"72481.0","system":"readv2"},{"code":"19645.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anterior-and-intermediate-uveitis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anterior---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anterior---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anterior---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
