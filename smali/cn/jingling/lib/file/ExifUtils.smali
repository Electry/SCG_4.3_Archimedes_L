.class public Lcn/jingling/lib/file/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExifInfo(Ljava/lang/String;)Lcn/jingling/lib/file/ExifInfo;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Lcn/jingling/lib/file/ExifInfo;

    invoke-direct {v3}, Lcn/jingling/lib/file/ExifInfo;-><init>()V

    .line 77
    .local v3, "exifInfo":Lcn/jingling/lib/file/ExifInfo;
    const/4 v1, 0x0

    .line 79
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 84
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 86
    const-string v4, "ImageLength"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->imageLength:Ljava/lang/String;

    .line 88
    const-string v4, "ImageWidth"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->imageWidth:Ljava/lang/String;

    .line 89
    const-string v4, "Make"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->make:Ljava/lang/String;

    .line 91
    const-string v4, "Orientation"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->orientation:Ljava/lang/String;

    .line 92
    const-string v4, "Model"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->model:Ljava/lang/String;

    .line 93
    const-string v4, "DateTime"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->datetime:Ljava/lang/String;

    .line 94
    const-string v4, "Flash"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->flash:Ljava/lang/String;

    .line 96
    const-string v4, "WhiteBalance"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->whiteBalance:Ljava/lang/String;

    .line 97
    const-string v4, "GPSLatitude"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->latitude:Ljava/lang/String;

    .line 98
    const-string v4, "GPSLatitudeRef"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->latitudeRef:Ljava/lang/String;

    .line 99
    const-string v4, "GPSLongitude"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->longitude:Ljava/lang/String;

    .line 100
    const-string v4, "GPSLongitudeRef"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->longitudeRef:Ljava/lang/String;

    .line 101
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 102
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->iso:Ljava/lang/String;

    .line 104
    const-string v4, "FNumber"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->apertrue:Ljava/lang/String;

    .line 106
    const-string v4, "ExposureTime"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    iput-object v4, v3, Lcn/jingling/lib/file/ExifInfo;->exposureTime:Ljava/lang/String;

    .line 110
    :cond_0
    return-object v3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static saveExifToFile(Ljava/lang/String;Lcn/jingling/lib/file/ExifInfo;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "exif"    # Lcn/jingling/lib/file/ExifInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 17
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 18
    .local v3, "newExif":Landroid/media/ExifInterface;
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 20
    const-string v5, "ImageLength"

    .line 21
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->imageLength:Ljava/lang/String;

    .line 20
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v5, "ImageWidth"

    .line 23
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->imageWidth:Ljava/lang/String;

    .line 22
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v5, "Make"

    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->make:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v5, "Orientation"

    .line 26
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->orientation:Ljava/lang/String;

    .line 25
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v5, "Model"

    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->model:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v5, "Flash"

    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->flash:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v5, "WhiteBalance"

    .line 30
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->whiteBalance:Ljava/lang/String;

    .line 29
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v5, "GPSLatitude"

    .line 32
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->latitude:Ljava/lang/String;

    .line 31
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v5, "GPSLatitudeRef"

    .line 34
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->latitudeRef:Ljava/lang/String;

    .line 33
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v5, "GPSLongitude"

    .line 36
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->longitude:Ljava/lang/String;

    .line 35
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v5, "GPSLongitudeRef"

    .line 38
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->longitudeRef:Ljava/lang/String;

    .line 37
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 40
    const-string v5, "FNumber"

    .line 41
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->apertrue:Ljava/lang/String;

    .line 40
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v5, "ISOSpeedRatings"

    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->iso:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v5, "ExposureTime"

    .line 44
    iget-object v6, p1, Lcn/jingling/lib/file/ExifInfo;->exposureTime:Ljava/lang/String;

    .line 43
    invoke-static {v3, v5, v6}, Lcn/jingling/lib/file/ExifUtils;->setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 49
    const-string/jumbo v5, "yyyy:MM:dd HH:mm:ss"

    .line 48
    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 51
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "str":Ljava/lang/String;
    const-string v5, "DateTime"

    invoke-virtual {v3, v5, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v5, 0x1

    .line 57
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v3    # "newExif":Landroid/media/ExifInterface;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return v5

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static setAttribute(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "exif"    # Landroid/media/ExifInterface;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static setExifOrientation(Ljava/lang/String;I)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "orientation"    # I

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .local v2, "o":I
    invoke-static {p1}, Lcn/jingling/lib/file/Shared;->degreesToExifOrientation(I)I

    move-result p1

    .line 125
    if-eq v2, p1, :cond_0

    .line 126
    const-string v3, "Orientation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "o":I
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
