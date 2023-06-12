
arm_code = "e1 55 00 01 aa 00 00 06 e5 95 70 00 e0 82 60 07 e5 96 70 00 e2 87 70 01 e5 86 70 00 e2 85 50 01 ea ff ff f6 e1 a0 50 02 e1 a0 60 02 e2 85 50 01 ea ff ff ff e1 55 00 03 aa 00 00 06 e5 95 70 00 e5 96 80 00 e0 87 90 08 e5 85 90 00 e2 85 50 01 e2 86 60 01 ea ff ff f6 e1 a0 94 29 ea ff ff ff e1 a0 50 02 e1 a0 60 03 ea ff ff ff e1 55 00 03 aa 00 00 10 e3 a0 40 00 e5 95 70 00 ea ff ff ff e1 59 00 07 ca 00 00 02 e0 47 70 09 e2 84 40 01 ea ff ff fa e3 57 00 80 ca 00 00 00 ea 00 00 01 e2 84 40 01 ea ff ff ff e5 86 40 00 e2 85 50 01 e2 86 60 01 ea ff ff ec e1 a0 50 00 e1 a0 60 01 ea ff ff ff e1 55 00 01 aa 00 00 05 e5 95 70 00 e5 97 80 00 e5 86 80 00 e2 85 50 01 e2 86 60 01 ea ff ff f7 "
hexa_pre = arm_code.split(" ")

hex_instructions=[]
i=0
while i< len(hexa_pre)-4:
    string = "".join(hexa_pre[i:i+4])
    hex_instructions.append(string)
    i+=4

with open("final_script.mif", 'w') as f:
    f.write(f"WIDTH=32;\n")
    f.write(f"DEPTH={len(hex_instructions)};\n")
    f.write("\n")
    f.write("ADDRESS_RADIX=HEX;\n")
    f.write("DATA_RADIX=HEX;\n")
    f.write("\n")
    f.write("CONTENT BEGIN\n")

    for i, value in enumerate(hex_instructions):
        f.write(f"    {hex(i)[2:]} :   {value};\n")

    f.write("END;\n")