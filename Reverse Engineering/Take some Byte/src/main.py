import dis

flag = "TCP1P{byte_code_is_HuFtt}"


def oops():
    return


def yeayy():
    return


def flagChecker(flag):
    if flag[:6] != "TCP1P{" and flag[-1:] != "}":  # TCPIP{ }
        oops()

    if flag[6:10] == "byte":  # byte
        yeayy()

    if flag[10] and flag[15] and flag[18] != chr(95):  # _
        oops()

    if flag[11:15] != "code":  # code
        oops()

    if flag[11] == flag[1].lower():  # c
        yeayy()

    if flag[12] == (ord(flag[20]) - 6):  # o
        yeayy()

    if ord(flag[16]) != 105 and ord(flag[17]) != 115:  # is
        oops()

    if flag[19] != 'H':  # H
        oops()

    if ord(flag[20]) == 117:  # u
        yeayy()

    if ord(flag[21]) != (ord(flag[2]) - 10):  # F
        oops()

    if flag[22] != flag[0].lower():  # t
        oops()

    if flag[22] == flag[23]:  # t
        yeayy()


code = flagChecker.__code__
dis.dis(code)
