.class public Lcom/lenovo/scg/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .locals 4
    .param p0, "jpegData"    # [B

    .prologue
    .line 30
    new-instance v1, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 32
    .local v1, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "CameraExif"

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .prologue
    .line 52
    sget v1, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    goto :goto_0
.end method

.method public static getOrientation([B)I
    .locals 2
    .param p0, "jpegData"    # [B

    .prologue
    .line 61
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 64
    .local v0, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v0}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v1

    goto :goto_0
.end method

.method public static getRealExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .locals 4
    .param p0, "jpegData"    # [B

    .prologue
    .line 40
    new-instance v1, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 42
    .local v1, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :goto_0
    return-object v1

    .line 44
    .restart local v1    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "CameraExif"

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const/4 v1, 0x0

    goto :goto_0
.end method
