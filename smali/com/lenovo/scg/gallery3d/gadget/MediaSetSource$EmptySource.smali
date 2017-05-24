.class Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$EmptySource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySource"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$1;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/gadget/MediaSetSource$EmptySource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public setContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .prologue
    .line 234
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method
