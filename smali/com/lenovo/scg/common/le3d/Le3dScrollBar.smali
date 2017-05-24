.class public Lcom/lenovo/scg/common/le3d/Le3dScrollBar;
.super Lcom/lenovo/scg/common/le3d/Le3dView;
.source "Le3dScrollBar.java"


# instance fields
.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field private mCurX:F

.field private mCurY:F

.field private mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mScrollBarHeight:I

.field private mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mScrollBarWidth:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 0
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 29
    return-void
.end method

.method private initScrollBarVerticesBuffer()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->getScaleFactor()F

    move-result v0

    .line 123
    .local v0, "fac":F
    const/4 v2, 0x0

    .line 124
    .local v2, "scrollBarvertices":[F
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mZ:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCenterZ:F

    add-float v3, v4, v5

    .line 125
    .local v3, "z":F
    const/16 v4, 0xc

    new-array v2, v4, [F

    .end local v2    # "scrollBarvertices":[F
    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurX:F

    div-float/2addr v4, v0

    aput v4, v2, v7

    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/4 v4, 0x2

    div-float v5, v3, v0

    aput v5, v2, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurX:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/4 v4, 0x5

    div-float v5, v3, v0

    aput v5, v2, v4

    const/4 v4, 0x6

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurX:F

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/4 v4, 0x7

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/16 v4, 0x8

    div-float v5, v3, v0

    aput v5, v2, v4

    const/16 v4, 0x9

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurX:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/16 v4, 0xa

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    aput v5, v2, v4

    const/16 v4, 0xb

    div-float v5, v3, v0

    aput v5, v2, v4

    .line 131
    .restart local v2    # "scrollBarvertices":[F
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 132
    .local v1, "scrollBarvbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 134
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->requestRender()V

    .line 137
    return-void
.end method

.method private updateVerticesBuffer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "vertices":[F
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->getScaleFactor()F

    move-result v0

    .line 56
    .local v0, "fac":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mX:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCenterX:F

    add-float v3, v6, v7

    .line 57
    .local v3, "x":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mY:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCenterY:F

    add-float v4, v6, v7

    .line 58
    .local v4, "y":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mZ:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCenterZ:F

    add-float v5, v6, v7

    .line 61
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

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    int-to-float v7, v7

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

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0x8

    div-float v7, v5, v0

    aput v7, v2, v6

    const/16 v6, 0x9

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xa

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xb

    div-float v7, v5, v0

    aput v7, v2, v6

    .line 67
    .restart local v2    # "vertices":[F
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    iput v3, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurX:F

    .line 74
    iput v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->initScrollBarVerticesBuffer()V

    .line 76
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public getMaxMoveValue()I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public init(IIII)V
    .locals 2
    .param p1, "backgroundHeight"    # I
    .param p2, "backgroundWidth"    # I
    .param p3, "scrollHeight"    # I
    .param p4, "scrollWidth"    # I

    .prologue
    .line 32
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    .line 33
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    .line 34
    iput p4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarWidth:I

    .line 35
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarHeight:I

    .line 36
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setSize(FF)V

    .line 37
    return-void
.end method

.method public onDraw()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveProgram()V

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    sget-object v2, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setProgram(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 84
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    .line 87
    .local v0, "blend":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->loadMatrix()V

    .line 88
    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Line_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    new-array v2, v8, [F

    aput v5, v2, v6

    aput v5, v2, v9

    const/4 v3, 0x2

    aput v5, v2, v3

    const v3, 0x3dcccccd    # 0.1f

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mAlpha:F

    mul-float/2addr v3, v4

    aput v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineColor([F)V

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarBgVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7, v2, v6, v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineVertexPointer(IIILjava/nio/Buffer;)V

    .line 93
    const/4 v1, 0x5

    invoke-static {v1, v6, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    new-array v2, v8, [F

    aput v5, v2, v6

    aput v5, v2, v9

    const/4 v3, 0x2

    aput v5, v2, v3

    const v3, 0x3e99999a    # 0.3f

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mAlpha:F

    mul-float/2addr v3, v4

    aput v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineColor([F)V

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7, v2, v6, v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setLineVertexPointer(IIILjava/nio/Buffer;)V

    .line 98
    const/4 v1, 0x5

    invoke-static {v1, v6, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->disableVertexPointer()V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreProgram()V

    .line 103
    return-void
.end method

.method public onMove(FF)V
    .locals 2
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mVisible:Z

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mBackgroundHeight:I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mScrollBarHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 115
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->mCurY:F

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->initScrollBarVerticesBuffer()V

    .line 119
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->updateVerticesBuffer()V

    .line 141
    return-void
.end method

.method public setCenter(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 50
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->updateVerticesBuffer()V

    .line 51
    return-void
.end method

.method public setCenter(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(I)V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->updateVerticesBuffer()V

    .line 46
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setSize(FF)V

    .line 41
    return-void
.end method
