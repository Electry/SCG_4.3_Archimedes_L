.class public Lcom/lenovo/scg/common/le3d/Le3dColorImage;
.super Lcom/lenovo/scg/common/le3d/Le3dView;
.source "Le3dColorImage.java"


# instance fields
.field protected mBgColorBlue:F

.field protected mBgColorGreen:F

.field protected mBgColorRed:F

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 0
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 22
    return-void
.end method

.method private updateVerticesBuffer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "vertices":[F
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->getScaleFactor()F

    move-result v0

    .line 48
    .local v0, "fac":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mX:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mCenterX:F

    add-float v3, v6, v7

    .line 49
    .local v3, "x":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mY:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mCenterY:F

    add-float v4, v6, v7

    .line 50
    .local v4, "y":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mZ:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mCenterZ:F

    add-float v5, v6, v7

    .line 53
    .local v5, "z":F
    const/16 v6, 0xc

    new-array v2, v6, [F

    .end local v2    # "vertices":[F
    div-float v6, v3, v0

    aput v6, v2, v8

    const/4 v6, 0x1

    div-float v7, v4, v0

    aput v7, v2, v6

    const/4 v6, 0x2

    div-float v7, v5, v0

    aput v7, v2, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mWidth:F

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

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0x8

    div-float v7, v5, v0

    aput v7, v2, v6

    const/16 v6, 0x9

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mWidth:F

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xa

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xb

    div-float v7, v5, v0

    aput v7, v2, v6

    .line 59
    .restart local v2    # "vertices":[F
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    .local v1, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 62
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 63
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public initBgColor(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorRed:F

    .line 26
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorGreen:F

    .line 27
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorBlue:F

    .line 28
    iput p4, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mAlpha:F

    .line 29
    return-void
.end method

.method public onDraw()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveProgram()V

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setProgram(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 72
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->loadMatrix()V

    .line 73
    sget-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    new-array v1, v6, [F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorRed:F

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorGreen:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mBgColorBlue:F

    aput v3, v1, v2

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mAlpha:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineColor([F)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/16 v1, 0x1406

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5, v1, v4, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineVertexPointer(IIILjava/nio/Buffer;)V

    .line 77
    const/4 v0, 0x5

    invoke-static {v0, v4, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->disableVertexPointer()V

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreProgram()V

    .line 81
    return-void
.end method

.method public setCenter(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->updateVerticesBuffer()V

    .line 43
    return-void
.end method

.method public setCenter(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(I)V

    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dColorImage;->updateVerticesBuffer()V

    .line 38
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setSize(FF)V

    .line 33
    return-void
.end method
