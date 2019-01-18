cipherText = "Ujh qtya qvzzdgocj kzbhb ek rge qtrkwgturxr xnbvkryx cn pec mang. D pftncjqp ivza dfl loxybcc wjvkszz h oxyo znat. Y ysoy mazcmtma lrakubnn l hrfn wfgw hvib ymd oqz M fs swxutzt tdh r kncowyjd lbpjyfml. Lxxlxq Yckkz "

def decrypt(cipherText):
    plaintext = ""
    counter = 0
    for i in range(len(cipherText)):
        let = cipherText[i]
        if let.isalpha() == False:
            plaintext += let
        else:
            counter += 1
            shift = ord(let)-((counter)%26)
            if let.isupper():
                if shift < 65:
                    shift += 26  
            else:
                if shift < 97:
                    shift += 26
            plaintext += chr(shift)
    print(plaintext)

decrypt(cipherText)
