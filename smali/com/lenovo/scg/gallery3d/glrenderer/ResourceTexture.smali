.class public Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 34
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    .line 36
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->mResId:I

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->setOpaque(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
