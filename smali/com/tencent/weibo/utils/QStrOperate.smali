.class public Lcom/tencent/weibo/utils/QStrOperate;
.super Ljava/lang/Object;
.source "QStrOperate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static ParamDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "paramEncString"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x25

    .line 58
    const/4 v6, 0x0

    .line 59
    .local v6, "nCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 66
    new-array v8, v6, [B

    .line 68
    .local v8, "sb":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 79
    const-string v0, ""

    .line 81
    .local v0, "decode":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v1, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "decode":Ljava/lang/String;
    .local v1, "decode":Ljava/lang/String;
    move-object v0, v1

    .line 85
    .end local v1    # "decode":Ljava/lang/String;
    .restart local v0    # "decode":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 60
    .end local v0    # "decode":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v8    # "sb":[B
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_1

    .line 61
    add-int/lit8 v3, v3, 0x2

    .line 63
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .restart local v4    # "index":I
    .restart local v8    # "sb":[B
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_3

    .line 70
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    move v4, v5

    .line 68
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v7, "sChar":Ljava/lang/StringBuilder;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v9, v3, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v9

    aput-byte v9, v8, v4

    .line 76
    add-int/lit8 v3, v3, 0x2

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 82
    .end local v7    # "sChar":Ljava/lang/StringBuilder;
    .restart local v0    # "decode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getQueryParamsList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 95
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p0, :cond_1

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "p":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_2

    .line 114
    .end local v0    # "p":[Ljava/lang/String;
    :cond_1
    return-object v1

    .line 103
    .restart local v0    # "p":[Ljava/lang/String;
    :cond_2
    aget-object v2, v0, v4

    .line 104
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 105
    const/16 v7, 0x3d

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    .line 106
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "temp":[Ljava/lang/String;
    array-length v7, v3

    if-le v7, v10, :cond_3

    .line 108
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v8, v3, v5

    aget-object v9, v3, v10

    invoke-static {v9}, Lcom/tencent/weibo/utils/QStrOperate;->ParamDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v3    # "temp":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getQueryString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "QueryParamsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v1, "queryString":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 125
    .local v0, "param":Lorg/apache/http/NameValuePair;
    const/16 v3, 0x26

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/weibo/utils/QStrOperate;->paramEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getTimeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 141
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    :cond_0
    const-string v6, ""

    .line 178
    :goto_0
    return-object v6

    .line 146
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v0, v6, v8

    .line 147
    .local v0, "_timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 148
    const-string/jumbo v6, "\u521a\u521a"

    goto :goto_0

    .line 149
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v7, "\u5206\u949f\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 154
    .local v4, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 155
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 157
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 158
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 159
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "\u4eca\u5929 HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 162
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 163
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 164
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 165
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "\u6628\u5929 HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 167
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 168
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "M\u6708d\u65e5 HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 171
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 172
    const-string/jumbo v6, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 171
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 176
    .end local v0    # "_timestamp":J
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v4    # "now":Ljava/util/Calendar;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public static hasValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paramEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "paramDecString"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, ""

    .line 43
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "*"

    const-string v3, "%2A"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%7E"

    const-string/jumbo v3, "~"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "#"

    const-string v3, "%23"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
