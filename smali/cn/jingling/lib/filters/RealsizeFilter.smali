.class public abstract Lcn/jingling/lib/filters/RealsizeFilter;
.super Lcn/jingling/lib/filters/Filter;
.source "RealsizeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Realsize"


# instance fields
.field protected mPoster:Landroid/graphics/Bitmap;

.field protected mPosterRangeBottom:F

.field protected mPosterRangeLeft:F

.field protected mPosterRangeRight:F

.field protected mPosterRangeTop:F

.field protected orientation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcn/jingling/lib/filters/Filter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/filters/RealsizeFilter;->orientation:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPoster:Landroid/graphics/Bitmap;

    .line 22
    iput v1, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeTop:F

    .line 23
    iput v2, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeBottom:F

    .line 24
    iput v1, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeLeft:F

    .line 25
    iput v2, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeRight:F

    .line 17
    return-void
.end method

.method public static getFilpOrientation(I)I
    .locals 1
    .param p0, "originalOrientation"    # I

    .prologue
    .line 83
    sparse-switch p0, :sswitch_data_0

    .line 91
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    :sswitch_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 87
    :sswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 89
    :sswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p1, v0}, Lcn/jingling/lib/file/ImageFile;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/filters/RealsizeFilter;->orientation:I

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method protected checkJpg(Ljava/lang/String;)Z
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 100
    const/4 v5, 0x0

    .line 103
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .local v6, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x2

    :try_start_1
    new-array v0, v8, [B

    .line 106
    .local v0, "buffer":[B
    const-string v3, ""

    .line 108
    .local v3, "filecode":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 109
    const-string v8, "Realsize error : inPath file is an empty file !"

    const-string v9, "Realsize"

    invoke-static {v8, v9}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz v6, :cond_0

    .line 139
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v5, v6

    .line 135
    .end local v0    # "buffer":[B
    .end local v3    # "filecode":Ljava/lang/String;
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return v7

    .line 140
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "filecode":Ljava/lang/String;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    :try_start_3
    array-length v8, v0

    if-lt v4, v8, :cond_4

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    .line 123
    .local v1, "codeType":I
    const v8, 0x3e4f0

    if-ne v1, v8, :cond_5

    .line 137
    if-eqz v6, :cond_3

    .line 139
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 124
    :cond_3
    :goto_3
    const/4 v7, 0x1

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 117
    .end local v1    # "codeType":I
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v9, v0, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    .restart local v1    # "codeType":I
    :catch_1
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    const-string v8, "Realsize error : inPath file is not a Jpg file !"

    const-string v9, "Realsize"

    invoke-static {v8, v9}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    if-eqz v6, :cond_6

    .line 139
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    move-object v5, v6

    .line 127
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 140
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 130
    .end local v0    # "buffer":[B
    .end local v1    # "codeType":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "filecode":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_8
    const-string v8, "Realsize error : inPath file doesn\'t exist !"

    const-string v9, "Realsize"

    invoke-static {v8, v9}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 137
    if-eqz v5, :cond_1

    .line 139
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 140
    :catch_4
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 137
    if-eqz v5, :cond_1

    .line 139
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    .line 140
    :catch_6
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 137
    :goto_7
    if-eqz v5, :cond_7

    .line 139
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 145
    :cond_7
    :goto_8
    throw v7

    .line 140
    :catch_7
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 133
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 130
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method protected setExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inPath"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lcn/jingling/lib/file/ExifUtils;->getFileExifInfo(Ljava/lang/String;)Lcn/jingling/lib/file/ExifInfo;

    move-result-object v0

    .line 96
    .local v0, "exifInfo":Lcn/jingling/lib/file/ExifInfo;
    invoke-static {p2, v0}, Lcn/jingling/lib/file/ExifUtils;->saveExifToFile(Ljava/lang/String;Lcn/jingling/lib/file/ExifInfo;)Z

    .line 97
    return-void
.end method

.method public setPoster(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "poster"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPoster:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method public setPosterRange(FFFF)V
    .locals 3
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 36
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 39
    :cond_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 40
    const/high16 p2, 0x3f800000    # 1.0f

    .line 43
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    .line 44
    move p1, p2

    .line 47
    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    .line 48
    const/4 p3, 0x0

    .line 50
    :cond_3
    cmpl-float v0, p4, v2

    if-lez v0, :cond_4

    .line 51
    const/high16 p4, 0x3f800000    # 1.0f

    .line 54
    :cond_4
    cmpl-float v0, p3, p4

    if-lez v0, :cond_5

    .line 55
    move p3, p4

    .line 58
    :cond_5
    iput p1, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeTop:F

    .line 59
    iput p2, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeBottom:F

    .line 60
    iput p3, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeLeft:F

    .line 61
    iput p4, p0, Lcn/jingling/lib/filters/RealsizeFilter;->mPosterRangeRight:F

    .line 62
    return-void
.end method
