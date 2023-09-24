import sys

flag = "TCP1P{byte_code_is_HuFtt}"


def oops():
    return


def yeayy():
    return


def flagChecker(flag):
    if flag[:6] != "TCP1P{" and flag[-1:] != "}":
        oops()

    if flag[6:10] == "byte":
        yeayy()

    if flag[10] and flag[15] and flag[18] != chr(95):
        oops()

    if flag[11:15] != "code":
        oops()

    if flag[11] == flag[19]:
        yeayy()

    if flag[12] == flag[20]:
        yeayy()

    if ord(flag[16]) != 105 and ord(flag[17]) != 115:
        oops()

    if flag[19] != 'H':
        oops()

    if ord(flag[20]) == 117:
        yeayy()

    if ord(flag[21]) != (ord(flag[2]) - 10):
        oops()

    if flag[22] != flag[0].lower():
        oops()

    if flag[22] == flag[23]:
        yeayy()


print(flagChecker(flag))
