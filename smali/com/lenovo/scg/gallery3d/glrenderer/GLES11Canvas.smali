.class public Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$1;,
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;,
        Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"

.field private static mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

.field private static sCropRect:[F


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    .line 119
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11IdImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11IdImpl;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    return-void

    .line 58
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    const/4 v4, 0x4

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 66
    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    .line 70
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    .line 72
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    .line 86
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 88
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 90
    const/16 v3, 0x20

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 92
    new-instance v3, Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 94
    new-instance v3, Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 100
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    .line 102
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    .line 122
    const-string/jumbo v3, "wwf"

    const-string v4, "GLES11Canvas"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 124
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-direct {v3, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    .line 126
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v1, v3, 0x8

    .line 127
    .local v1, "size":I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 128
    .local v2, "xyBuffer":Ljava/nio/FloatBuffer;
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    sget-object v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v4, v4

    invoke-virtual {v2, v3, v6, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    new-array v0, v5, [I

    .line 131
    .local v0, "name":[I
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    invoke-interface {v3, v5, v0, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 132
    aget v3, v0, v6

    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    .line 134
    const v3, 0x8892

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 135
    const v3, 0x8892

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {p1, v3, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 137
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 138
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 141
    const v3, 0x84c1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 142
    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 143
    const v3, 0x84c0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 144
    const v3, 0x8078

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 195
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 458
    invoke-virtual {p1, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 462
    :goto_0
    return v1

    .line 459
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 460
    .local v0, "target":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    .line 461
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .param p0, "gl11ep"    # Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .prologue
    .line 909
    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 910
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 911
    const-string v0, ""

    .line 912
    .local v0, "msg":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 935
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 915
    goto :goto_0

    .line 917
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 918
    goto :goto_0

    .line 920
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 921
    goto :goto_0

    .line 923
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 924
    goto :goto_0

    .line 926
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 927
    goto :goto_0

    .line 929
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 930
    goto :goto_0

    .line 932
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 937
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 912
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p0, "source"    # Landroid/graphics/RectF;
    .param p1, "target"    # Landroid/graphics/RectF;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 429
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    .line 430
    .local v3, "width":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 431
    .local v0, "height":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 432
    .local v2, "texWidth":I
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 434
    .local v1, "texHeight":I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 435
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 436
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 437
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 440
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 441
    .local v4, "xBound":F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 442
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 443
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 445
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 446
    .local v5, "yBound":F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 447
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 448
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 450
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 9
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 368
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    .line 381
    :cond_0
    :goto_1
    return-void

    .line 366
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v6

    .line 372
    .local v6, "points":[F
    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    .line 373
    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    .line 374
    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 375
    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 376
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 378
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFIIIIF)V
    .locals 9
    .param p1, "from"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "alpha"    # F

    .prologue
    .line 547
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 548
    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIF)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    .line 551
    int-to-float v2, p4

    int-to-float v3, p5

    int-to-float v4, p6

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p8, v1

    if-gez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 557
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 558
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 562
    move/from16 v0, p8

    invoke-direct {p0, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 564
    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 565
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v2, 0x1e01

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 555
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIF)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "alpha"    # F

    .prologue
    .line 389
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 392
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, p6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 394
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_0

    .line 391
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 1
    .param p1, "action"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 819
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 820
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .param p0, "matrix"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac    # 1.0E-5f

    .line 578
    const v0, 0x3727c5ac    # 1.0E-5f

    .line 579
    .local v0, "eps":F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54    # -1.0E-5f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .param p1, "m"    # [F
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    .line 342
    .local v0, "r":[F
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    .line 343
    .local v3, "x3":F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    .line 344
    .local v5, "y3":F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    .line 345
    .local v1, "w3":F
    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    .line 346
    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    .line 349
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    .line 350
    .local v4, "x4":F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    .line 351
    .local v6, "y4":F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    .line 352
    .local v2, "w4":F
    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    .line 353
    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    .line 355
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    .locals 2

    .prologue
    .line 823
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    if-eqz v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 825
    .local v0, "result":Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 828
    .end local v0    # "result":Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 864
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 860
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 11
    .param p1, "toColor"    # I
    .param p2, "ratio"    # F
    .param p3, "alpha"    # F

    .prologue
    const v10, 0x47057500    # 34165.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v9, 0x44408000    # 770.0f

    const v8, 0x47057600    # 34166.0f

    const/16 v7, 0x2300

    .line 484
    sub-float v4, v5, p2

    mul-float v1, p3, v4

    .line 485
    .local v1, "combo":F
    mul-float v4, p3, p2

    sub-float/2addr v5, v1

    div-float v3, v4, v5

    .line 490
    .local v3, "scale":F
    ushr-int/lit8 v4, p1, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v5, 0x477e0100    # 65025.0f

    div-float v0, v4, v5

    .line 491
    .local v0, "colorScale":F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v0

    and-int/lit16 v6, p1, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    .line 492
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 493
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v4, 0x2201

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v6, 0x0

    invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 495
    const v4, 0x8571

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 496
    const v4, 0x8572

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 497
    const v4, 0x8581

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 498
    const v4, 0x8591

    const/high16 v5, 0x44400000    # 768.0f

    invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 499
    const v4, 0x8589

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 500
    const v4, 0x8599

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 503
    const v4, 0x8582

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 504
    const v4, 0x8592

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 507
    const v4, 0x858a

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 508
    const v4, 0x859a

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 510
    return-void
.end method

.method private setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 6
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 868
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 870
    .local v0, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 871
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v2, v4, v3, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 872
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 874
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 875
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 876
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 879
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 880
    if-nez p1, :cond_2

    .line 881
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    .line 892
    :goto_0
    return-void

    .line 883
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    .line 885
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->prepare(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 887
    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 890
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    .line 467
    .local v0, "color":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 468
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 469
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 470
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 471
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 733
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 735
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 737
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 739
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 741
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 742
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 729
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 730
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .param p1, "mTextureTransform"    # [F

    .prologue
    .line 745
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 746
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 747
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 748
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 291
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 293
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 296
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 298
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 299
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    .line 300
    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6
    .param p1, "buf"    # Ljava/nio/Buffer;
    .param p2, "elementSize"    # I

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 995
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 996
    .local v1, "bufferIds":[I
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    array-length v3, v1

    invoke-interface {v2, v3, v1, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 997
    aget v0, v1, v4

    .line 998
    .local v0, "bufferId":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 999
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/2addr v3, p2

    const v4, 0x88e4

    invoke-interface {v2, v5, v3, p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1000
    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->save()V

    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 906
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->clearBuffer([F)V

    .line 726
    return-void
.end method

.method public clearBuffer(FFFF)V
    .locals 5
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 719
    return-void
.end method

.method public clearBuffer([F)V
    .locals 5
    .param p1, "argb"    # [F

    .prologue
    .line 706
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 712
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->getClearColor()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .param p1, "bufferId"    # I

    .prologue
    .line 763
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/IntArray;->add(I)V

    .line 765
    monitor-exit v1

    .line 766
    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    .prologue
    .line 770
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v2

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 772
    .local v0, "ids":Lcom/lenovo/scg/gallery3d/util/IntArray;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 773
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 774
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->clear()V

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/lenovo/scg/gallery3d/util/IntArray;

    .line 778
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 779
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 780
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/IntArray;->clear()V

    .line 782
    :cond_1
    monitor-exit v2

    .line 783
    return-void

    .line 782
    .end local v0    # "ids":Lcom/lenovo/scg/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "paint"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 220
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 223
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 225
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 228
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 230
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 231
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 232
    return-void
.end method

.method public drawMesh(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8
    .param p1, "tex"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xyBuffer"    # I
    .param p5, "uvBuffer"    # I
    .param p6, "indexBuffer"    # I
    .param p7, "indexCount"    # I

    .prologue
    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 304
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 305
    .local v0, "alpha":F
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 312
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    .line 314
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 315
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 317
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 330
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 332
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 333
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 307
    goto :goto_1
.end method

.method public drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 9
    .param p1, "from"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I

    .prologue
    .line 454
    iget v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFIIIIF)V

    .line 455
    return-void
.end method

.method public drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "from"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "toColor"    # I
    .param p3, "ratio"    # F
    .param p4, "source"    # Landroid/graphics/RectF;
    .param p5, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    .line 517
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 519
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    .line 520
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    .line 524
    :cond_3
    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 527
    .local v6, "alpha":F
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 529
    iget-object p4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 530
    iget-object p5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 532
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 534
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    .line 538
    invoke-direct {p0, p2, p3, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    .line 539
    invoke-static {p4, p5, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 540
    invoke-direct {p0, p4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 541
    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 532
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/lenovo/scg/gallery3d/glrenderer/GLPaint;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paint"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 202
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 203
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    .line 205
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 209
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 210
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 212
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 213
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 214
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 7
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 385
    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIF)V

    .line 386
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 404
    iget-object p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 405
    iget-object p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 407
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 408
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {p2, p3, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 410
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 412
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_0

    .line 407
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 417
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    .line 418
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    :goto_1
    return-void

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords([F)V

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    .line 421
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;[FIIII)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1033
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIIII)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1028
    return-void
.end method

.method public drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;[FIIII)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    .param p2, "mTextureTransform"    # [F
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1061
    return-void
.end method

.method public drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "textureMatrix"    # [F
    .param p3, "nRotation"    # I
    .param p4, "bMirroH"    # Z

    .prologue
    .line 1044
    return-void
.end method

.method public drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;
    .param p2, "textureMatrix"    # [F
    .param p3, "nRotation"    # I
    .param p4, "bMirroH"    # Z

    .prologue
    .line 1055
    return-void
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 849
    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "line":Ljava/lang/String;
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    .line 852
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    .line 853
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    .line 854
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 855
    iput v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    .line 856
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method public endRenderTarget()V
    .locals 3

    .prologue
    .line 896
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 897
    .local v0, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 898
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restore()V

    .line 899
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 239
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    .line 241
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 244
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 246
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    .line 247
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    .line 248
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1011
    return-void
.end method

.method public getGLId()Lcom/lenovo/scg/gallery3d/glrenderer/GLId;
    .locals 1

    .prologue
    .line 1015
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initGalleryBackground()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$GLState;->initGalleryBackground()V

    .line 1021
    return-void
.end method

.method public initializeTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 972
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 973
    .local v0, "target":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 974
    invoke-static {v0, v3, p2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 975
    return-void
.end method

.method public initializeTextureSize(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;II)V
    .locals 10
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "format"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 963
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    .line 964
    .local v1, "target":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 965
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    .line 966
    .local v4, "width":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v5

    .line 967
    .local v5, "height":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v9, 0x0

    move v3, p2

    move v6, v2

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 968
    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 190
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 192
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .line 284
    .local v0, "temp":[F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 285
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 0

    .prologue
    .line 1006
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    .line 813
    .local v0, "config":Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->restore(Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;)V

    .line 814
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->freeRestoreConfig(Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V

    .line 815
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 274
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    .local v0, "temp":[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 276
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 277
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->save(I)V

    .line 788
    return-void
.end method

.method public save(I)V
    .locals 5
    .param p1, "saveFlags"    # I

    .prologue
    const/4 v4, 0x0

    .line 792
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->obtainRestoreConfig()Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    move-result-object v0

    .line 794
    .local v0, "config":Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 795
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iput v1, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    .line 800
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    return-void

    .line 797
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    goto :goto_0

    .line 803
    :cond_1
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 270
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 179
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 180
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 181
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 151
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    .line 154
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    .line 155
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    .line 157
    :cond_0
    iput v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 160
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 161
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 162
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 163
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 165
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 166
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 169
    .local v1, "matrix":[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 171
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_1

    .line 172
    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 173
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 175
    :cond_1
    return-void

    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL11;
    .end local v1    # "matrix":[F
    :cond_2
    move v2, v3

    .line 151
    goto :goto_0
.end method

.method public setTextureParameters(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 9
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    const v8, 0x812f

    const/4 v7, 0x0

    const v6, 0x46180400    # 9729.0f

    .line 941
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    .line 942
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    .line 946
    .local v0, "height":I
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 947
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x1

    int-to-float v5, v0

    aput v5, v3, v4

    .line 948
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    .line 949
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x3

    neg-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    .line 952
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    .line 953
    .local v1, "target":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 954
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v4, 0x8b9d

    sget-object v5, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    invoke-interface {v3, v1, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 955
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2802

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 956
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2803

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 957
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2801

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 958
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2800

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 959
    return-void
.end method

.method public texSubImage2D(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    .prologue
    .line 979
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 980
    .local v0, "target":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 981
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 982
    return-void
.end method

.method public translate(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    .line 261
    .local v0, "m":[F
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 262
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 263
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 264
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 265
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 253
    return-void
.end method

.method public unloadTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3
    .param p1, "t"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 754
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    monitor-enter v1

    .line 755
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 757
    :goto_0
    return v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/lenovo/scg/gallery3d/util/IntArray;

    iget v2, p1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/util/IntArray;->add(I)V

    .line 757
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 991
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 986
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
