.class public abstract Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;
.super Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;
.source "AbstractFacePrettyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V
.end method

.method public abstract drawEffectBitmapToScreen()V
.end method

.method public abstract getBaseBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getEffectBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getHaveStoredEffectLevels(I)[I
.end method

.method public abstract initEffectEngine()V
.end method

.method public abstract initFeilds()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->initFeilds()V

    .line 16
    return-void
.end method

.method public abstract openPhotoFromUri(Landroid/net/Uri;)V
.end method

.method public abstract setBaseBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setEffectBitmap(Landroid/graphics/Bitmap;)V
.end method
