.class public Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;
.super Ljava/lang/Object;
.source "SingleImageList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImageList"


# instance fields
.field private mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mUri:Landroid/net/Uri;

    .line 25
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mUri:Landroid/net/Uri;

    .line 32
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
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 46
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;->mSingleImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
