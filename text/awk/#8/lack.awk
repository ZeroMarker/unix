BEGIN{
    FIELDWIDTHS="2 2:6 2:6 2:3 2:13 2:11"
}

// number of row
NR==4{
    print $4,$5,$6
}

# ID  name    gender  age  email          phone
# 1   Bob     male    28   abc@qq.com     18023394012
# 2   Alice   female  24   def@gmail.com  18084925203
# 3   Tony    male    21                  17048792503
# 4   Kevin   male    21   bbb@189.com    17023929033
# 5   Alex    male    18   ccc@xyz.com    18185904230
# 6   Andy    female       ddd@139.com    18923902352
# 7   Jerry   female  25   exdsa@189.com  18785234906
# 8   Peter   male    20   bax@qq.com     17729348758
# 9   Steven          23   bc@sohu.com    15947893212
# 10  Bruce   female  27   bcbd@139.com   13942943905