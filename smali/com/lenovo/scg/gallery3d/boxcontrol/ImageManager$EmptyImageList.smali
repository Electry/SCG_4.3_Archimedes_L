.class Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImageList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method
