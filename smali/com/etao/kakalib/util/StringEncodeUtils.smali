.class public final Lcom/etao/kakalib/util/StringEncodeUtils;
.super Ljava/lang/Object;
.source "StringEncodeUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/etao/kakalib/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 35
    const-string v0, "SJIS"

    .line 36
    sget-object v1, Lcom/etao/kakalib/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "EUC_JP"

    sget-object v1, Lcom/etao/kakalib/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/etao/kakalib/util/StringEncodeUtils;->ASSUME_SHIFT_JIS:Z

    .line 37
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getStringEncode([B)Ljava/lang/String;
    .locals 3
    .param p0, "needGuessEncodeData"    # [B

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "encodeString":Ljava/lang/String;
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_0

    .line 231
    invoke-static {p0}, Lcom/etao/kakalib/util/StringEncodeUtils;->guessEncoding([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    const-string v1, ""

    .line 239
    :cond_1
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static guessEncoding([B)Ljava/lang/String;
    .locals 24
    .param p0, "bytes"    # [B

    .prologue
    .line 53
    move-object/from16 v0, p0

    array-length v8, v0

    .line 54
    .local v8, "length":I
    const/4 v3, 0x1

    .line 55
    .local v3, "canBeISO88591":Z
    const/4 v4, 0x1

    .line 56
    .local v4, "canBeShiftJIS":Z
    const/4 v5, 0x1

    .line 57
    .local v5, "canBeUTF8":Z
    const/4 v2, 0x1

    .line 58
    .local v2, "canBeGBK":Z
    const/16 v18, 0x0

    .line 60
    .local v18, "utf8BytesLeft":I
    const/4 v15, 0x0

    .line 61
    .local v15, "utf2BytesChars":I
    const/16 v16, 0x0

    .line 62
    .local v16, "utf3BytesChars":I
    const/16 v17, 0x0

    .line 63
    .local v17, "utf4BytesChars":I
    const/4 v9, 0x0

    .line 65
    .local v9, "sjisBytesLeft":I
    const/4 v12, 0x0

    .line 67
    .local v12, "sjisKatakanaChars":I
    const/4 v11, 0x0

    .line 68
    .local v11, "sjisCurKatakanaWordLength":I
    const/4 v10, 0x0

    .line 69
    .local v10, "sjisCurDoubleBytesWordLength":I
    const/4 v14, 0x0

    .line 70
    .local v14, "sjisMaxKatakanaWordLength":I
    const/4 v13, 0x0

    .line 73
    .local v13, "sjisMaxDoubleBytesWordLength":I
    const/4 v7, 0x0

    .line 75
    .local v7, "isoHighOther":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/16 v22, 0x0

    aget-byte v22, p0, v22

    const/16 v23, -0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    aget-byte v22, p0, v22

    const/16 v23, -0x45

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 76
    const/16 v22, 0x2

    aget-byte v22, p0, v22

    const/16 v23, -0x41

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 75
    const/16 v19, 0x1

    .line 78
    .local v19, "utf8bom":Z
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_0

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 178
    :cond_0
    if-eqz v5, :cond_1

    if-lez v18, :cond_1

    .line 179
    const/4 v5, 0x0

    .line 181
    :cond_1
    if-eqz v4, :cond_2

    if-lez v9, :cond_2

    .line 182
    const/4 v4, 0x0

    .line 187
    :cond_2
    if-eqz v5, :cond_19

    if-nez v19, :cond_3

    add-int v22, v15, v16

    add-int v22, v22, v17

    if-lez v22, :cond_19

    .line 188
    :cond_3
    const-string v22, "UTF8"

    .line 223
    :goto_2
    return-object v22

    .line 75
    .end local v6    # "i":I
    .end local v19    # "utf8bom":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 80
    .restart local v6    # "i":I
    .restart local v19    # "utf8bom":Z
    :cond_5
    aget-byte v22, p0, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 83
    .local v20, "value":I
    if-eqz v5, :cond_6

    .line 84
    if-lez v18, :cond_c

    .line 85
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 86
    const/4 v5, 0x0

    .line 116
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 118
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 120
    const/16 v22, 0xb0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v22, 0xf7

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_7

    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    if-ge v0, v8, :cond_7

    .line 122
    add-int/lit8 v22, v6, 0x1

    aget-byte v22, p0, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 123
    .local v21, "value2":I
    const/16 v22, 0xa0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v22, 0xf7

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_7

    .line 124
    const/4 v2, 0x1

    .line 131
    .end local v21    # "value2":I
    :cond_7
    if-eqz v3, :cond_8

    .line 132
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 133
    const/4 v3, 0x0

    .line 146
    :cond_8
    :goto_4
    if-eqz v4, :cond_a

    .line 147
    if-lez v9, :cond_14

    .line 148
    const/16 v22, 0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    const/16 v22, 0xfc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_13

    .line 149
    :cond_9
    const/4 v4, 0x0

    .line 78
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 88
    :cond_b
    add-int/lit8 v18, v18, -0x1

    .line 90
    goto :goto_3

    :cond_c
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 91
    and-int/lit8 v22, v20, 0x40

    if-nez v22, :cond_d

    .line 92
    const/4 v5, 0x0

    .line 93
    goto :goto_3

    .line 94
    :cond_d
    add-int/lit8 v18, v18, 0x1

    .line 95
    and-int/lit8 v22, v20, 0x20

    if-nez v22, :cond_e

    .line 96
    add-int/lit8 v15, v15, 0x1

    .line 97
    goto/16 :goto_3

    .line 98
    :cond_e
    add-int/lit8 v18, v18, 0x1

    .line 99
    and-int/lit8 v22, v20, 0x10

    if-nez v22, :cond_f

    .line 100
    add-int/lit8 v16, v16, 0x1

    .line 101
    goto/16 :goto_3

    .line 102
    :cond_f
    add-int/lit8 v18, v18, 0x1

    .line 103
    and-int/lit8 v22, v20, 0x8

    if-nez v22, :cond_10

    .line 104
    add-int/lit8 v17, v17, 0x1

    .line 105
    goto/16 :goto_3

    .line 106
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 134
    :cond_11
    const/16 v22, 0x9f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 135
    const/16 v22, 0xc0

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    const/16 v22, 0xd7

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    const/16 v22, 0xf7

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 136
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 151
    :cond_13
    add-int/lit8 v9, v9, -0x1

    .line 153
    goto :goto_5

    :cond_14
    const/16 v22, 0x80

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    const/16 v22, 0xef

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    .line 154
    :cond_15
    const/4 v4, 0x0

    .line 155
    goto :goto_5

    :cond_16
    const/16 v22, 0xa0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    const/16 v22, 0xe0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    .line 156
    add-int/lit8 v12, v12, 0x1

    .line 157
    const/4 v10, 0x0

    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 159
    if-le v11, v14, :cond_a

    .line 160
    move v14, v11

    .line 162
    goto/16 :goto_5

    :cond_17
    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    .line 163
    add-int/lit8 v9, v9, 0x1

    .line 165
    const/4 v11, 0x0

    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    if-le v10, v13, :cond_a

    .line 168
    move v13, v10

    .line 170
    goto/16 :goto_5

    .line 172
    :cond_18
    const/4 v11, 0x0

    .line 173
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 192
    .end local v20    # "value":I
    :cond_19
    if-eqz v4, :cond_1b

    .line 193
    sget-boolean v22, Lcom/etao/kakalib/util/StringEncodeUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v22, :cond_1a

    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v14, v0, :cond_1a

    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v13, v0, :cond_1b

    .line 194
    :cond_1a
    const-string v22, "SJIS"

    goto/16 :goto_2

    .line 196
    :cond_1b
    if-eqz v2, :cond_1c

    .line 197
    const-string v22, "GB2312"

    goto/16 :goto_2

    .line 206
    :cond_1c
    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    .line 207
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v14, v0, :cond_1d

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v12, v0, :cond_1e

    .line 208
    :cond_1d
    mul-int/lit8 v22, v7, 0xa

    move/from16 v0, v22

    if-lt v0, v8, :cond_1f

    :cond_1e
    const-string v22, "SJIS"

    goto/16 :goto_2

    :cond_1f
    const-string v22, "ISO8859_1"

    goto/16 :goto_2

    .line 213
    :cond_20
    if-eqz v3, :cond_21

    .line 214
    const-string v22, "ISO8859_1"

    goto/16 :goto_2

    .line 216
    :cond_21
    if-eqz v4, :cond_22

    .line 217
    const-string v22, "SJIS"

    goto/16 :goto_2

    .line 219
    :cond_22
    if-eqz v5, :cond_23

    .line 220
    const-string v22, "UTF8"

    goto/16 :goto_2

    .line 223
    :cond_23
    sget-object v22, Lcom/etao/kakalib/util/StringEncodeUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_2
.end method
