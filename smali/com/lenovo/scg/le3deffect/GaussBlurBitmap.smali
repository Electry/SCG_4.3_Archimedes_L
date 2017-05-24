.class public Lcom/lenovo/scg/le3deffect/GaussBlurBitmap;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "GaussBlurBitmap.java"


# instance fields
.field private mBmpIn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    .line 13
    return-void
.end method

.method private native SetInputC(JLandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method protected native DoEffectC(J)I
.end method

.method protected native SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/GaussBlurBitmap;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 37
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public setInput(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/GaussBlurBitmap;->mBmpIn:Landroid/graphics/Bitmap;

    .line 18
    return-void
.end method
