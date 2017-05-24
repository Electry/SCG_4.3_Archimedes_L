.class public Lcn/jingling/lib/filters/Curve;
.super Ljava/lang/Object;
.source "Curve.java"


# instance fields
.field mCurveBlue:[I

.field mCurveGreen:[I

.field mCurveRed:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    .line 15
    iput-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    .line 16
    iput-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    .line 20
    invoke-direct {p0}, Lcn/jingling/lib/filters/Curve;->makeCurve()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "sdcard"    # Z
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x320

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    .line 15
    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    .line 16
    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    .line 29
    if-eqz p2, :cond_1

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 32
    .local v2, "len":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 33
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/jingling/lib/filters/Curve;->makeCompleteCurve(Ljava/io/InputStream;)V

    .line 52
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":J
    :goto_0
    return-void

    .line 35
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "len":J
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/jingling/lib/filters/Curve;->makeCurve(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 45
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":J
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 47
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot find this curve: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 38
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v2, v4

    .line 39
    .restart local v2    # "len":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/jingling/lib/filters/Curve;->makeCompleteCurve(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    .end local v2    # "len":J
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "len":J
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/jingling/lib/filters/Curve;->makeCurve(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private makeCompleteCurve(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "iStream"    # Ljava/io/InputStream;

    .prologue
    const/16 v6, 0x100

    .line 86
    new-array v0, v6, [I

    .line 87
    .local v0, "curveAll":[I
    new-array v4, v6, [I

    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    .line 88
    new-array v4, v6, [I

    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    .line 89
    new-array v4, v6, [I

    iput-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    .line 96
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    .line 97
    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 103
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v6, :cond_2

    .line 109
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v6, :cond_4

    .line 115
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v6, :cond_6

    .line 122
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 129
    .end local v2    # "i":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    :goto_4
    return-void

    .line 99
    .restart local v2    # "i":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput v4, v0, v2

    .line 100
    aget v4, v0, v2

    if-gez v4, :cond_1

    .line 101
    aget v4, v0, v2

    add-int/lit16 v4, v4, 0x100

    aput v4, v0, v2

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput v5, v4, v2

    .line 105
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    aget v4, v4, v2

    if-gez v4, :cond_3

    .line 106
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    aget v5, v4, v2

    add-int/lit16 v5, v5, 0x100

    aput v5, v4, v2

    .line 107
    :cond_3
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    iget-object v5, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    aget v5, v5, v2

    aget v5, v0, v5

    aput v5, v4, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_4
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput v5, v4, v2

    .line 111
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    aget v4, v4, v2

    if-gez v4, :cond_5

    .line 112
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    aget v5, v4, v2

    add-int/lit16 v5, v5, 0x100

    aput v5, v4, v2

    .line 113
    :cond_5
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    iget-object v5, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    aget v5, v5, v2

    aget v5, v0, v5

    aput v5, v4, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    :cond_6
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput v5, v4, v2

    .line 117
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    aget v4, v4, v2

    if-gez v4, :cond_7

    .line 118
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    aget v5, v4, v2

    add-int/lit16 v5, v5, 0x100

    aput v5, v4, v2

    .line 119
    :cond_7
    iget-object v4, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    iget-object v5, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    aget v5, v5, v2

    aget v5, v0, v5

    aput v5, v4, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 124
    .end local v2    # "i":I
    .end local v3    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private makeCurve()V
    .locals 14

    .prologue
    const-wide v12, 0x404f800000000000L    # 63.0

    const-wide v10, 0x3ff4083126e978d5L    # 1.252

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    const/16 v6, 0x100

    .line 68
    new-array v1, v6, [I

    iput-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    .line 69
    new-array v1, v6, [I

    iput-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    .line 70
    new-array v1, v6, [I

    iput-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    .line 78
    const/16 v0, 0x80

    :goto_1
    if-lt v0, v6, :cond_1

    .line 83
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    const-wide v2, 0x3fe8305532617c1cL    # 0.7559

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 75
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    int-to-double v2, v0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    aput v2, v1, v0

    .line 76
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    int-to-double v2, v0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    aput v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    const-wide v2, 0x3ff3e00d1b71758eL    # 1.2422

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x404f000000000000L    # 62.0

    sub-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 80
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    add-double/2addr v2, v12

    double-to-int v2, v2

    aput v2, v1, v0

    .line 81
    iget-object v1, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    add-double/2addr v2, v12

    double-to-int v2, v2

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private makeCurve(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "iStream"    # Ljava/io/InputStream;

    .prologue
    const/16 v5, 0x100

    .line 133
    new-array v3, v5, [I

    iput-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    .line 134
    new-array v3, v5, [I

    iput-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    .line 135
    new-array v3, v5, [I

    iput-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    .line 143
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    .line 144
    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 143
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 150
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_2

    .line 155
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v5, :cond_4

    .line 161
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 167
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    :goto_3
    return-void

    .line 146
    .restart local v1    # "i":I
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput v4, v3, v1

    .line 147
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    aget v3, v3, v1

    if-gez v3, :cond_1

    .line 148
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    aget v4, v3, v1

    add-int/lit16 v4, v4, 0x100

    aput v4, v3, v1

    .line 145
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput v4, v3, v1

    .line 152
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    aget v3, v3, v1

    if-gez v3, :cond_3

    .line 153
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    aget v4, v3, v1

    add-int/lit16 v4, v4, 0x100

    aput v4, v3, v1

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_4
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput v4, v3, v1

    .line 157
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    aget v3, v3, v1

    if-gez v3, :cond_5

    .line 158
    iget-object v3, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    aget v4, v3, v1

    add-int/lit16 v4, v4, 0x100

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public getCurveBlue()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveBlue:[I

    return-object v0
.end method

.method public getCurveGreen()[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveGreen:[I

    return-object v0
.end method

.method public getCurveRed()[I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/jingling/lib/filters/Curve;->mCurveRed:[I

    return-object v0
.end method
