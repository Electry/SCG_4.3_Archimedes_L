.class public Lcom/baidu/idl/lib/network/ErrorMessage;
.super Ljava/lang/Object;
.source "ErrorMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 34
    const-string v0, "Network unstable."

    .line 36
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/idl/lib/network/LanguageUtils;->isSimplifiedChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string/jumbo v0, "\u60a8\u7684\u7f51\u7edc\u4e0d\u7a33\u5b9a"

    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 252
    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 41
    goto :goto_0

    .line 43
    :sswitch_1
    const-string/jumbo v0, "\u9519\u8bef\u63a5\u53e3"

    .line 44
    goto :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v0, "\u7528\u6237\u672a\u767b\u5f55"

    .line 47
    goto :goto_0

    .line 49
    :sswitch_3
    const-string/jumbo v0, "\u8bf7\u6c42\u65b9\u5f0f\u9519\u8bef"

    .line 50
    goto :goto_0

    .line 52
    :sswitch_4
    const-string/jumbo v0, "\u8f93\u5165\u53c2\u6570\u9519\u8bef"

    .line 53
    goto :goto_0

    .line 55
    :sswitch_5
    const-string/jumbo v0, "\u6ca1\u6709\u6743\u9650\u64cd\u4f5c"

    .line 56
    goto :goto_0

    .line 58
    :sswitch_6
    const-string/jumbo v0, "\u76f8\u518c\u4e0d\u5b58\u5728"

    .line 59
    goto :goto_0

    .line 61
    :sswitch_7
    const-string/jumbo v0, "\u76f8\u518c\u6240\u5c5e\u975e\u5f53\u524d\u767b\u5f55\u7528\u6237"

    .line 62
    goto :goto_0

    .line 64
    :sswitch_8
    const-string/jumbo v0, "\u76f8\u518c\u540d\u5df2\u5b58\u5728"

    .line 65
    goto :goto_0

    .line 67
    :sswitch_9
    const-string/jumbo v0, "\u76f8\u518c\u540d\u592a\u957f"

    .line 68
    goto :goto_0

    .line 70
    :sswitch_a
    const-string/jumbo v0, "\u8d85\u51fa\u76f8\u518c\u4e0a\u96501000\u5f20"

    .line 71
    goto :goto_0

    .line 73
    :sswitch_b
    const-string/jumbo v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25"

    .line 74
    goto :goto_0

    .line 76
    :sswitch_c
    const-string/jumbo v0, "\u56fe\u7247\u4e0d\u5b58\u5728"

    .line 77
    goto :goto_0

    .line 79
    :sswitch_d
    const-string/jumbo v0, "\u56fe\u7247\u4e0d\u5728\u540c\u4e00\u76f8\u518c"

    .line 80
    goto :goto_0

    .line 82
    :sswitch_e
    const-string/jumbo v0, "\u56fe\u7247\u6240\u5c5e\u975e\u5f53\u524d\u767b\u5f55\u7528\u6237"

    .line 83
    goto :goto_0

    .line 85
    :sswitch_f
    const-string/jumbo v0, "\u56fe\u7247\u683c\u5f0f\u9519\u8bef"

    .line 86
    goto :goto_0

    .line 88
    :sswitch_10
    const-string/jumbo v0, "\u56fe\u7247\u6587\u4ef6\u592a\u5927"

    .line 89
    goto :goto_0

    .line 91
    :sswitch_11
    const-string/jumbo v0, "\u56fe\u7247\u6587\u4ef6\u4e3a\u7a7a"

    .line 92
    goto :goto_0

    .line 94
    :sswitch_12
    const-string/jumbo v0, "\u56fe\u7247\u540d\u4e0d\u5408\u6cd5"

    .line 95
    goto :goto_0

    .line 97
    :sswitch_13
    const-string/jumbo v0, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 98
    goto :goto_0

    .line 100
    :sswitch_14
    const-string/jumbo v0, "\u7f51\u7edc\u9519\u8bef"

    .line 101
    goto :goto_0

    .line 103
    :sswitch_15
    const-string/jumbo v0, "\u672c\u5730\u6587\u4ef6\u5df2\u5220\u9664"

    .line 104
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/baidu/idl/lib/network/LanguageUtils;->isKorean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string/jumbo v0, "\uc778\ud130\ub137 \uc5f0\uacb0 \uc624\ub958"

    .line 110
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    .line 112
    :sswitch_16
    const-string/jumbo v0, "\uc54c \uc218 \uc5c6\ub294 \uc624\ub958"

    .line 113
    goto :goto_0

    .line 115
    :sswitch_17
    const-string/jumbo v0, "\uc5f0\uacb0 \uc624\ub958"

    .line 116
    goto :goto_0

    .line 118
    :sswitch_18
    const-string/jumbo v0, "\uc624\ud504\ub77c\uc778 \uc0c1\ud0dc"

    .line 119
    goto :goto_0

    .line 121
    :sswitch_19
    const-string/jumbo v0, "\uc694\uccad\ubc29\uc2dd \uc624\ub958"

    .line 122
    goto :goto_0

    .line 124
    :sswitch_1a
    const-string/jumbo v0, "\ud30c\ub77c\ubbf8\ud130 \uc624\ub958"

    .line 125
    goto :goto_0

    .line 127
    :sswitch_1b
    const-string/jumbo v0, "\uc870\uc791 \uad8c\ud55c\uc774 \uc5c6\uc2b5\ub2c8\ub2e4"

    .line 128
    goto :goto_0

    .line 130
    :sswitch_1c
    const-string/jumbo v0, "\uc0ac\uc9c4\ucca9\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4"

    .line 131
    goto/16 :goto_0

    .line 133
    :sswitch_1d
    const-string/jumbo v0, "\ud574\ub2f9 \uc720\uc800\uc758 \uc0ac\uc9c4\ucca9\uc774 \uc544\ub2d9\ub2c8\ub2e4"

    .line 134
    goto/16 :goto_0

    .line 136
    :sswitch_1e
    const-string/jumbo v0, "\uc0ac\uc9c4\ucca9 \uc774\ub984\uc774 \uc774\ubbf8 \uc874\uc7ac\ud569\ub2c8\ub2e4"

    .line 137
    goto/16 :goto_0

    .line 139
    :sswitch_1f
    const-string/jumbo v0, "\uc0ac\uc9c4\ucca9 \uc774\ub984 \uae00\uc790\uc218 \ucd08\uacfc"

    .line 140
    goto/16 :goto_0

    .line 142
    :sswitch_20
    const-string/jumbo v0, "\uc0ac\uc9c4 \uc218\ub7c9 \uc81c\ud55c 1000\uc7a5 \ucd08\uacfc"

    .line 143
    goto/16 :goto_0

    .line 145
    :sswitch_21
    const-string/jumbo v0, "\uc0ac\uc9c4 \uc5c5\ub85c\ub4dc \uc2e4\ud328"

    .line 146
    goto/16 :goto_0

    .line 148
    :sswitch_22
    const-string/jumbo v0, "\uc874\uc7ac\ud558\uc9c0 \uc54a\ub294 \uc0ac\uc9c4\uc785\ub2c8\ub2e4"

    .line 149
    goto/16 :goto_0

    .line 151
    :sswitch_23
    const-string/jumbo v0, "\uc0ac\uc9c4\uc774 \uac19\uc740 \uc0ac\uc9c4\ucca9\uc5d0 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4"

    .line 152
    goto/16 :goto_0

    .line 154
    :sswitch_24
    const-string/jumbo v0, "\ud574\ub2f9 \uc720\uc800\uc758 \uc0ac\uc9c4\uc774 \uc544\ub2d9\ub2c8\ub2e4"

    .line 155
    goto/16 :goto_0

    .line 157
    :sswitch_25
    const-string/jumbo v0, "\uc0ac\uc9c4 \ud615\uc2dd \uc624\ub958"

    .line 158
    goto/16 :goto_0

    .line 160
    :sswitch_26
    const-string/jumbo v0, "\uc0ac\uc9c4 \ud30c\uc77c \ud06c\uae30 \ucd08\uacfc"

    .line 161
    goto/16 :goto_0

    .line 163
    :sswitch_27
    const-string/jumbo v0, "\uc0ac\uc9c4 \ud30c\uc77c\uc774 \ube44\uc5b4\uc788\uc2b5\ub2c8\ub2e4"

    .line 164
    goto/16 :goto_0

    .line 166
    :sswitch_28
    const-string/jumbo v0, "\uc54c\ub9de\uc9c0 \uc54a\uc740 \uc0ac\uc9c4\uba85\uc785\ub2c8\ub2e4"

    .line 167
    goto/16 :goto_0

    .line 169
    :sswitch_29
    const-string/jumbo v0, "\uc800\uc7a5\uacf5\uac04 \ubd80\uc871"

    .line 170
    goto/16 :goto_0

    .line 172
    :sswitch_2a
    const-string/jumbo v0, "\uc778\ud130\ub137 \uc624\ub958"

    .line 173
    goto/16 :goto_0

    .line 175
    :sswitch_2b
    const-string/jumbo v0, "\ub85c\uceec \ud30c\uc77c\uc774 \uc774\ubbf8 \uc0ad\uc81c\ub418\uc5c8\uc2b5\ub2c8\ub2e4"

    .line 176
    goto/16 :goto_0

    .line 181
    :cond_1
    sparse-switch p0, :sswitch_data_2

    goto/16 :goto_0

    .line 183
    :sswitch_2c
    const-string v0, "Unknown error."

    .line 184
    goto/16 :goto_0

    .line 186
    :sswitch_2d
    const-string v0, "Interface error."

    .line 187
    goto/16 :goto_0

    .line 189
    :sswitch_2e
    const-string v0, "Please sign in first."

    .line 190
    goto/16 :goto_0

    .line 192
    :sswitch_2f
    const-string v0, "Request mode error."

    .line 193
    goto/16 :goto_0

    .line 195
    :sswitch_30
    const-string v0, "Input parameter error."

    .line 196
    goto/16 :goto_0

    .line 198
    :sswitch_31
    const-string v0, "No operation permission."

    .line 199
    goto/16 :goto_0

    .line 201
    :sswitch_32
    const-string v0, "The album doesn\'t exist."

    .line 202
    goto/16 :goto_0

    .line 204
    :sswitch_33
    const-string v0, "No operation permission."

    .line 205
    goto/16 :goto_0

    .line 207
    :sswitch_34
    const-string v0, "This album is already existed."

    .line 208
    goto/16 :goto_0

    .line 210
    :sswitch_35
    const-string v0, "The name is too long."

    .line 211
    goto/16 :goto_0

    .line 213
    :sswitch_36
    const-string v0, "The maximization is 1000."

    .line 214
    goto/16 :goto_0

    .line 216
    :sswitch_37
    const-string v0, "Upload failed."

    .line 217
    goto/16 :goto_0

    .line 219
    :sswitch_38
    const-string v0, "The photo doesn\'t exist."

    .line 220
    goto/16 :goto_0

    .line 222
    :sswitch_39
    const-string v0, "The photos don\'t belong to the same album."

    .line 223
    goto/16 :goto_0

    .line 225
    :sswitch_3a
    const-string v0, "No operation permission."

    .line 226
    goto/16 :goto_0

    .line 228
    :sswitch_3b
    const-string v0, "Picture format error."

    .line 229
    goto/16 :goto_0

    .line 231
    :sswitch_3c
    const-string v0, "The photo is too large."

    .line 232
    goto/16 :goto_0

    .line 234
    :sswitch_3d
    const-string v0, "Photo damaged."

    .line 235
    goto/16 :goto_0

    .line 237
    :sswitch_3e
    const-string v0, "Characters forbidden."

    .line 238
    goto/16 :goto_0

    .line 240
    :sswitch_3f
    const-string v0, "Insufficient space."

    .line 241
    goto/16 :goto_0

    .line 243
    :sswitch_40
    const-string v0, "Network error."

    .line 244
    goto/16 :goto_0

    .line 246
    :sswitch_41
    const-string v0, "Local file deleted."

    .line 247
    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
        0xcb -> :sswitch_8
        0xcc -> :sswitch_9
        0xcd -> :sswitch_a
        0x12d -> :sswitch_b
        0x12e -> :sswitch_c
        0x12f -> :sswitch_d
        0x130 -> :sswitch_e
        0x131 -> :sswitch_f
        0x132 -> :sswitch_10
        0x133 -> :sswitch_11
        0x134 -> :sswitch_12
        0x135 -> :sswitch_13
        0x3e8 -> :sswitch_14
        0x3ea -> :sswitch_15
    .end sparse-switch

    .line 110
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_16
        0x65 -> :sswitch_17
        0x66 -> :sswitch_18
        0x67 -> :sswitch_19
        0x68 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0xc9 -> :sswitch_1c
        0xca -> :sswitch_1d
        0xcb -> :sswitch_1e
        0xcc -> :sswitch_1f
        0xcd -> :sswitch_20
        0x12d -> :sswitch_21
        0x12e -> :sswitch_22
        0x12f -> :sswitch_23
        0x130 -> :sswitch_24
        0x131 -> :sswitch_25
        0x132 -> :sswitch_26
        0x133 -> :sswitch_27
        0x134 -> :sswitch_28
        0x135 -> :sswitch_29
        0x3e8 -> :sswitch_2a
        0x3ea -> :sswitch_2b
    .end sparse-switch

    .line 181
    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2e
        0x67 -> :sswitch_2f
        0x68 -> :sswitch_30
        0x69 -> :sswitch_31
        0xc9 -> :sswitch_32
        0xca -> :sswitch_33
        0xcb -> :sswitch_34
        0xcc -> :sswitch_35
        0xcd -> :sswitch_36
        0x12d -> :sswitch_37
        0x12e -> :sswitch_38
        0x12f -> :sswitch_39
        0x130 -> :sswitch_3a
        0x131 -> :sswitch_3b
        0x132 -> :sswitch_3c
        0x133 -> :sswitch_3d
        0x134 -> :sswitch_3e
        0x135 -> :sswitch_3f
        0x3e8 -> :sswitch_40
        0x3ea -> :sswitch_41
    .end sparse-switch
.end method
