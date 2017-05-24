.class public Lcom/lenovo/scg/gallery3d/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 32
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v3

    .line 35
    :cond_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 37
    .local v1, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 38
    sget v4, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    .local v2, "val":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 44
    .end local v2    # "val":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "CameraExif"

    const-string v5, "Failed to read EXIF orientation"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
