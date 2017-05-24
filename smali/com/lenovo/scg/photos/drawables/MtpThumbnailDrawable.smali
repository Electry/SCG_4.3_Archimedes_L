.class public Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;
.super Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;
.source "MtpThumbnailDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable",
        "<",
        "Landroid/mtp/MtpObjectInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected dataChangedLocked(Landroid/mtp/MtpObjectInfo;)Z
    .locals 1
    .param p1, "data"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->mData:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic dataChangedLocked(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Landroid/mtp/MtpObjectInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->dataChangedLocked(Landroid/mtp/MtpObjectInfo;)Z

    move-result v0

    return v0
.end method

.method protected getFallbackImageStream(Landroid/mtp/MtpObjectInfo;)Ljava/io/InputStream;
    .locals 1
    .param p1, "data"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getFallbackImageStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Landroid/mtp/MtpObjectInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->getFallbackImageStream(Landroid/mtp/MtpObjectInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferredImageBytes(Landroid/mtp/MtpObjectInfo;)[B
    .locals 3
    .param p1, "data"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getInstance()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 42
    .local v0, "device":Landroid/mtp/MtpDevice;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic getPreferredImageBytes(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Landroid/mtp/MtpObjectInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->getPreferredImageBytes(Landroid/mtp/MtpObjectInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroid/mtp/MtpObjectInfo;)V
    .locals 2
    .param p1, "data"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->setImage(Ljava/lang/Object;II)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/scg/photos/drawables/MtpThumbnailDrawable;->setImage(Ljava/lang/Object;II)V

    goto :goto_0
.end method
