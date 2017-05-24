.class public Lcom/lenovo/scg/common/le3d/Le3dYUVImage;
.super Lcom/lenovo/scg/common/le3d/Le3dView;
.source "Le3dYUVImage.java"


# instance fields
.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

.field private mTexEX:F

.field private mTexEY:F

.field private mTexSX:F

.field private mTexSY:F

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHeight:F

.field private mTextureUnit:I

.field private mTextureWidth:F

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field private mUVTextureId:I

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mYTextureId:I

.field private mYUVDataBuffer:[B

.field private mYuvTextureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 455
    invoke-static {}, Lcom/lenovo/scg/le3deffect/Le3DEffect;->loadNativeLibs()V

    .line 456
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 3
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 34
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSX:F

    .line 36
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSY:F

    .line 38
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEX:F

    .line 40
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEY:F

    .line 68
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYuvTextureId:I

    .line 69
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureUnit:I

    .line 70
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 71
    sget v0, Lcom/lenovo/scg/common/le3d/Le3dView;->EVENT_ABILITY_CLICKED:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->addEventAbility(I)V

    .line 72
    return-void
.end method

.method private initLe3dEffect()Z
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->init()Z

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateIndexBuffer()V
    .locals 4

    .prologue
    .line 408
    const/4 v2, 0x4

    new-array v1, v2, [S

    fill-array-data v1, :array_0

    .line 409
    .local v1, "indices":[S
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 410
    .local v0, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    return-void

    .line 408
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method private updateTextureBuffer()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 370
    const/16 v7, 0x8

    new-array v6, v7, [F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSX:F

    aput v7, v6, v11

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEY:F

    aput v7, v6, v12

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEX:F

    aput v7, v6, v13

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEY:F

    aput v7, v6, v14

    const/4 v7, 0x4

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSX:F

    aput v8, v6, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSY:F

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEX:F

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSY:F

    aput v8, v6, v7

    .line 371
    .local v6, "textureCoordinates":[F
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    .line 374
    .local v2, "mMinHeight":F
    const-string/jumbo v7, "tyl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTextureWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mTextureHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "sx":F
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    div-float/2addr v7, v10

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    div-float v4, v7, v8

    .line 379
    .local v4, "sy":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 380
    .local v0, "ex":F
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    div-float/2addr v7, v10

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    div-float v1, v7, v8

    .line 381
    .local v1, "ey":F
    const-string/jumbo v7, "tyl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "sy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v7, 0x8

    new-array v6, v7, [F

    .end local v6    # "textureCoordinates":[F
    aput v3, v6, v11

    aput v1, v6, v12

    aput v0, v6, v13

    aput v1, v6, v14

    const/4 v7, 0x4

    aput v3, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v0, v6, v7

    const/4 v7, 0x7

    aput v4, v6, v7

    .line 383
    .restart local v6    # "textureCoordinates":[F
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    .line 386
    .end local v0    # "ex":F
    .end local v1    # "ey":F
    .end local v3    # "sx":F
    .end local v4    # "sy":F
    :cond_0
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 388
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    mul-float/2addr v8, v10

    div-float v3, v7, v8

    .line 389
    .restart local v3    # "sx":F
    const/4 v4, 0x0

    .line 390
    .restart local v4    # "sy":F
    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    mul-float/2addr v8, v10

    div-float v0, v7, v8

    .line 391
    .restart local v0    # "ex":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 392
    .restart local v1    # "ey":F
    const-string/jumbo v7, "tyl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTextureWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mTextureHeight ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v7, "tyl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mTextureWidth sx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "sy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v7, 0x8

    new-array v6, v7, [F

    .end local v6    # "textureCoordinates":[F
    aput v3, v6, v11

    aput v1, v6, v12

    aput v0, v6, v13

    aput v1, v6, v14

    const/4 v7, 0x4

    aput v3, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v0, v6, v7

    const/4 v7, 0x7

    aput v4, v6, v7

    .line 395
    .restart local v6    # "textureCoordinates":[F
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    .line 399
    .end local v0    # "ex":F
    .end local v1    # "ey":F
    .end local v3    # "sx":F
    .end local v4    # "sy":F
    :cond_1
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 400
    .local v5, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 401
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 402
    iget-object v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 403
    iget-object v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    return-void
.end method

.method private native updateTextureDataC(IIIIIIII[BI)V
.end method

.method private updateVerticesBuffer()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, "vertices":[F
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getScaleFactor()F

    move-result v0

    .line 352
    .local v0, "fac":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mX:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mCenterX:F

    add-float v3, v6, v7

    .line 353
    .local v3, "x":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mY:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mCenterY:F

    add-float v4, v6, v7

    .line 354
    .local v4, "y":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mZ:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mCenterZ:F

    add-float v5, v6, v7

    .line 355
    .local v5, "z":F
    const/16 v6, 0xc

    new-array v2, v6, [F

    .end local v2    # "vertices":[F
    div-float v6, v3, v0

    aput v6, v2, v9

    const/4 v6, 0x1

    div-float v7, v4, v0

    aput v7, v2, v6

    const/4 v6, 0x2

    div-float v7, v5, v0

    aput v7, v2, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mWidth:F

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/4 v6, 0x4

    div-float v7, v4, v0

    aput v7, v2, v6

    const/4 v6, 0x5

    div-float v7, v5, v0

    aput v7, v2, v6

    const/4 v6, 0x6

    div-float v7, v3, v0

    aput v7, v2, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0x8

    div-float v7, v5, v0

    aput v7, v2, v6

    const/16 v6, 0x9

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mWidth:F

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xa

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xb

    div-float v7, v5, v0

    aput v7, v2, v6

    .line 360
    .restart local v2    # "vertices":[F
    const-string/jumbo v6, "tyl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVerticesBuffer mWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mWidth:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 362
    .local v1, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 364
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 365
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    if-eqz v5, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->initLe3dEffect()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setData([BII)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    .local v0, "t1":J
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->doEffect()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "t2":J
    const-string v5, "doEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " doEffect time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFboTextureId()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYuvTextureId:I

    .line 172
    const-string v5, "doEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unitID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFboTextureUnit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v6, "after glActiveTexture"

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFboTextureWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFboTextureHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->setTextureSize(FF)V

    .line 176
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->initCoords()V

    .line 178
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    .line 179
    iget-object v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v6, "after initLe3dEffect"

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 188
    .end local v0    # "t1":J
    .end local v2    # "t2":J
    :cond_0
    :goto_0
    return v4

    .line 184
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYuvTextureId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->initCoords()V

    goto :goto_0

    .line 188
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bindYUV()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const v13, 0x812f

    const v12, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    if-eqz v0, :cond_2

    .line 111
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [I

    .line 113
    .local v11, "textures":[I
    const/4 v0, 0x2

    invoke-static {v0, v11, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 114
    aget v0, v11, v2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    .line 115
    const/4 v0, 0x1

    aget v0, v11, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    .line 118
    .end local v11    # "textures":[I
    :cond_1
    const-string/jumbo v0, "tyl"

    const-string v3, "bindyuv"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 121
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    const/16 v0, 0x2801

    invoke-static {v1, v0, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 124
    const/16 v0, 0x2800

    invoke-static {v1, v0, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 127
    const/16 v0, 0x2802

    invoke-static {v1, v0, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 128
    const/16 v0, 0x2803

    invoke-static {v1, v0, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 130
    const-string/jumbo v0, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextureHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mTextureWidth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v3, 0x1909

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    float-to-int v5, v0

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    move-object v0, p0

    move v6, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateTextureDataC(IIIIIIII[BI)V

    .line 135
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 136
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 137
    const/16 v0, 0x2801

    invoke-static {v1, v0, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 138
    const/16 v0, 0x2800

    invoke-static {v1, v0, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    const/16 v0, 0x2802

    invoke-static {v1, v0, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 142
    const/16 v0, 0x2803

    invoke-static {v1, v0, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    const/16 v3, 0x190a

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    div-float/2addr v0, v14

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    div-float/2addr v0, v14

    float-to-int v5, v0

    const/16 v7, 0x190a

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    mul-float/2addr v0, v6

    float-to-int v10, v0

    move-object v0, p0

    move v6, v2

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateTextureDataC(IIIIIIII[BI)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->initCoords()V

    .line 151
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 154
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 156
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in mYTextureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUVTextureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public delete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 273
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    if-eq v0, v2, :cond_0

    .line 274
    const-string/jumbo v0, "tyl"

    const-string v1, "delete LeYuvImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-array v0, v4, [I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 276
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYTextureId:I

    .line 279
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    if-eq v0, v2, :cond_1

    .line 280
    const-string/jumbo v0, "tyl"

    const-string v1, "delete LeYuvImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-array v0, v4, [I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 282
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mUVTextureId:I

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    if-eqz v0, :cond_2

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    .line 302
    :cond_2
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 259
    const-string/jumbo v0, "tyl"

    const-string v1, "destory LeYuvImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->delete()V

    .line 261
    return-void
.end method

.method public getTextureHeight()F
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    return v0
.end method

.method public getTextureUnit()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureUnit:I

    return v0
.end method

.method public getTextureWidth()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    return v0
.end method

.method public getYUVData()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    return-object v0
.end method

.method public getYuvTexture()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYuvTextureId:I

    return v0
.end method

.method public initCoords()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateVerticesBuffer()V

    .line 331
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateTextureBuffer()V

    .line 332
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateIndexBuffer()V

    .line 333
    return-void
.end method

.method public onDraw()V
    .locals 5

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->bind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v1, "after bind"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveProgram()V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setProgram(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string/jumbo v1, "setProgram(TextureDataType.Le_Bitmap_Type)"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateTextureAlpha(F)V

    .line 230
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "ondraw yuvImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v1, "before setTexCoordPointer"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setVertexPointer(IIILjava/nio/Buffer;)V

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->loadMatrix()V

    .line 242
    sget-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v1, "before glDrawElements"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const-string v1, "after glDrawElements"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->checkGlError(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreProgram()V

    .line 255
    :cond_0
    return-void
.end method

.method public setCenter(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 318
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateVerticesBuffer()V

    .line 319
    return-void
.end method

.method public setCenter(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(I)V

    .line 313
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateVerticesBuffer()V

    .line 314
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setSize(FF)V

    .line 308
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateVerticesBuffer()V

    .line 309
    return-void
.end method

.method public setTexCoord(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSX:F

    .line 323
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexSY:F

    .line 324
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEX:F

    .line 325
    iput p4, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTexEY:F

    .line 326
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->updateTextureBuffer()V

    .line 327
    return-void
.end method

.method public setTextureSize(FF)V
    .locals 0
    .param p1, "height"    # F
    .param p2, "width"    # F

    .prologue
    .line 336
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    .line 337
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    .line 338
    return-void
.end method

.method public setViewSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 426
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mWidth:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 427
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mWidth:F

    .line 428
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mHeight:F

    .line 431
    :cond_1
    return-void
.end method

.method public setYUVData([B)V
    .locals 0
    .param p1, "yuvBuffer"    # [B

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mYUVDataBuffer:[B

    .line 81
    return-void
.end method

.method public setYUVDataSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 98
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureWidth:F

    .line 99
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->mTextureHeight:F

    .line 100
    return-void
.end method
