.class public Lcom/lenovo/scg/common/le3d/GaussBlurManager;
.super Ljava/lang/Object;
.source "GaussBlurManager.java"


# static fields
.field private static final BlurScaleCoef:I = 0x2


# instance fields
.field private final MAX_GAUSSBLUR_VALUE:I

.field private mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

.field private mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

.field private mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

.field private mGaussBlurValue:I

.field private mGaussExtRect:Landroid/graphics/Rect;

.field private mIsFunctionChanged:Z

.field private mIsGaussBlur:Z

.field private mIsStartFinishGaussBlur:Z

.field private mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->MAX_GAUSSBLUR_VALUE:I

    return-void
.end method

.method private getFinishGaussBlurValue()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    if-lez v0, :cond_0

    .line 204
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    .line 206
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    return v0
.end method

.method private getGaussBlurValue()I
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 197
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    .line 199
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    return v0
.end method


# virtual methods
.method public destroyGaussBlur()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    const-string v0, "jiaxiaowei"

    const-string v1, "destroyGaussBlur-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    .line 69
    iput-boolean v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->Finish()V

    .line 78
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->Finish()V

    .line 82
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 87
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-eqz v0, :cond_4

    .line 92
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 96
    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 98
    :cond_5
    return-void
.end method

.method public finishGaussBlur()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    if-nez v0, :cond_0

    .line 57
    const-string v0, "jiaxiaowei"

    const-string v1, "finishGaussBlur-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    .line 64
    :cond_0
    return-void
.end method

.method public getGaussBlurFBO(IIIZI)Z
    .locals 6
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isExtTexture"    # Z
    .param p5, "yOffset"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    if-nez v2, :cond_0

    .line 102
    invoke-static {}, Lcom/lenovo/scg/le3deffect/Le3DEffect;->loadNativeLibs()V

    .line 103
    new-instance v2, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-direct {v2}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    .line 104
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->Init()Z

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 107
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    if-nez v2, :cond_7

    .line 108
    new-instance v2, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    invoke-direct {v2}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    .line 109
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->Init()Z

    .line 110
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->setSrc(Landroid/graphics/Bitmap;)V

    .line 122
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    div-int/lit8 v3, p5, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->setDrawOffset(F)V

    .line 123
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->setDst(IIIZ)V

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v2, :cond_2

    .line 130
    new-instance v2, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 134
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 137
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->doBlend()I

    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v3}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getTexture()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mBlendFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v5}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->setInput(IIIZ)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "gaussBlurValue":I
    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    if-eqz v2, :cond_8

    .line 146
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getFinishGaussBlurValue()I

    move-result v0

    .line 150
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->setBlurCoef(I)V

    .line 172
    .end local v0    # "gaussBlurValue":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v2, :cond_4

    .line 174
    new-instance v2, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 178
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v2, :cond_5

    .line 183
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 186
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 187
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->doEffect()I

    .line 189
    iget v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurValue:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    if-eqz v2, :cond_6

    .line 190
    const/4 v1, 0x1

    .line 192
    :cond_6
    return v1

    .line 111
    :cond_7
    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsFunctionChanged:Z

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mAlphaBlendBitmapTex2D:Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->setSrc(Landroid/graphics/Bitmap;)V

    .line 119
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsFunctionChanged:Z

    goto/16 :goto_0

    .line 148
    .restart local v0    # "gaussBlurValue":I
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurValue()I

    move-result v0

    goto :goto_1

    .line 154
    .end local v0    # "gaussBlurValue":I
    :cond_9
    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    if-eqz v2, :cond_3

    .line 156
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->setInput(IIIZ)V

    .line 162
    const/4 v0, 0x0

    .line 163
    .restart local v0    # "gaussBlurValue":I
    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    if-eqz v2, :cond_a

    .line 164
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getFinishGaussBlurValue()I

    move-result v0

    .line 168
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussBlurTexture:Lcom/lenovo/scg/le3deffect/GaussBlurTexture;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->setBlurCoef(I)V

    goto :goto_2

    .line 166
    :cond_a
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurValue()I

    move-result v0

    goto :goto_3
.end method

.method public getGaussBlurFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mTextureFBO:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    return-object v0
.end method

.method public isGaussBlur()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    return v0
.end method

.method public setCamera2dScreenShotBmp(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    .line 223
    return-void
.end method

.method public startGaussBlur(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "gaussExtRect"    # Landroid/graphics/Rect;
    .param p3, "functionChanged"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mCamera2dScreenShotBmp:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    const/4 p1, 0x0

    .line 45
    iput-boolean p3, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsFunctionChanged:Z

    .line 46
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->startGaussBlur(Landroid/graphics/Rect;)V

    .line 47
    return-void
.end method

.method public startGaussBlur(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "gaussExtRect"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mGaussExtRect:Landroid/graphics/Rect;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsGaussBlur:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->mIsStartFinishGaussBlur:Z

    .line 53
    return-void
.end method
