.class public Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
.super Ljava/lang/Object;
.source "ToastBackGroundManager.java"


# instance fields
.field private mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

.field private mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

.field private mIsShowToastBackGround:Z

.field private mRectArray:[F

.field private mTextColorArray:[F

.field private mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mIsShowToastBackGround:Z

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 181
    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 185
    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->Finish()V

    .line 189
    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 193
    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 197
    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 200
    :cond_4
    return-void
.end method

.method public getTexture(IZII)Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;
    .locals 4
    .param p1, "textureId"    # I
    .param p2, "isExt"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mRectArray:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTextColorArray:[F

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    if-nez v1, :cond_2

    .line 103
    new-instance v1, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-direct {v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->Init()Z

    .line 107
    :cond_2
    if-ge p3, p4, :cond_8

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p3, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_4

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 110
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 112
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 123
    :cond_4
    :goto_1
    if-ge p3, p4, :cond_a

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v0, :cond_5

    .line 125
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p3, p4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setInput(IIIZ)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mRectArray:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTextColorArray:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setRectRegion([FI[F)Z

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->DoEffect()I

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v0, :cond_6

    if-ge p3, p4, :cond_6

    .line 141
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v0, :cond_7

    if-ge p4, p3, :cond_7

    .line 144
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 146
    :cond_7
    if-ge p3, p4, :cond_c

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto/16 :goto_0

    .line 115
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p3, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_4

    .line 116
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 117
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 119
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto :goto_1

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v0, :cond_b

    .line 131
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p3, p4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    goto :goto_2

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto/16 :goto_0
.end method

.method public getTexture(IZII[F[F)Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;
    .locals 2
    .param p1, "textureId"    # I
    .param p2, "isExt"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rectArray"    # [F
    .param p6, "textColorArray"    # [F

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    if-nez v1, :cond_2

    .line 42
    new-instance v1, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-direct {v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    .line 43
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->Init()Z

    .line 46
    :cond_2
    if-ge p3, p4, :cond_8

    .line 47
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p3, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_4

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 49
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 51
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 64
    :cond_4
    :goto_1
    if-ge p3, p4, :cond_a

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v0, :cond_5

    .line 66
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p3, p4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setInput(IIIZ)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    const/4 v1, 0x5

    invoke-virtual {v0, p5, v1, p6}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setRectRegion([FI[F)Z

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->DoEffect()I

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v0, :cond_6

    if-ge p3, p4, :cond_6

    .line 85
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 87
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v0, :cond_7

    if-ge p4, p3, :cond_7

    .line 88
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 90
    :cond_7
    if-ge p3, p4, :cond_c

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto :goto_0

    .line 55
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p3, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_4

    .line 56
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 57
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 59
    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto :goto_1

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p3, p4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mFilter:Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorFbo:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/ContrastEnhanceFilterTexture;->setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    goto :goto_2

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mHorTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    goto/16 :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mIsShowToastBackGround:Z

    .line 174
    const-string v0, "ContrastEnhance"

    const-string v1, "hide mIsShowToastBackGround = mIsShowToastBackGround "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public initToastBackGround()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mIsShowToastBackGround:Z

    .line 35
    return-void
.end method

.method public initToastBackGround([F[F)V
    .locals 1
    .param p1, "rectArray"    # [F
    .param p2, "textColorArray"    # [F

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mIsShowToastBackGround:Z

    .line 209
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mRectArray:[F

    .line 210
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mTextColorArray:[F

    .line 211
    return-void
.end method

.method public isShowTostBackGround()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->mIsShowToastBackGround:Z

    return v0
.end method
