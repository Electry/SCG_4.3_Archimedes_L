.class public Lcn/jingling/lib/livefilter/LiveLayer;
.super Lcn/jingling/lib/livefilter/LiveOp;
.source "LiveLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/LiveLayer$Type;
    }
.end annotation


# static fields
.field private static final TYPE_FRAGMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcn/jingling/lib/livefilter/LiveLayer$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

.field private mTextureHandle:I

.field private mUpdateBm:Landroid/graphics/Bitmap;

.field public path:Ljava/lang/String;

.field public type:Lcn/jingling/lib/livefilter/LiveLayer$Type;

.field public weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcn/jingling/lib/livefilter/LiveLayer$1;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/LiveLayer$1;-><init>()V

    sput-object v0, Lcn/jingling/lib/livefilter/LiveLayer;->TYPE_FRAGMENTS:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/jingling/lib/livefilter/LiveLayer$Type;

    .prologue
    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcn/jingling/lib/livefilter/LiveLayer;-><init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/jingling/lib/livefilter/LiveLayer$Type;F)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/jingling/lib/livefilter/LiveLayer$Type;
    .param p3, "weight"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/jingling/lib/livefilter/LiveOp;-><init>()V

    .line 49
    iput-object p1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->path:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcn/jingling/lib/livefilter/LiveLayer;->type:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    .line 51
    iput p3, p0, Lcn/jingling/lib/livefilter/LiveLayer;->weight:F

    .line 52
    return-void
.end method


# virtual methods
.method public glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
    .locals 7
    .param p1, "mvpMatrix"    # [F
    .param p2, "vboHandle"    # I
    .param p3, "fbi"    # Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
    .param p4, "posDataSize"    # I
    .param p5, "textureHandle"    # I

    .prologue
    const/16 v2, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 111
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mImageSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mImageSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 112
    const v1, 0x8d40

    if-nez p3, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 114
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 115
    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 116
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 117
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    iget v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mTextureHandle:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uTextureLayer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 120
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uLayerWeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->weight:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 121
    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 122
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 123
    const/16 v2, 0x1406

    move v1, p4

    move v4, v3

    move v5, v3

    .line 122
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 124
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    iget-object v0, v0, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    const-string/jumbo v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 127
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    return-void

    .line 113
    :cond_0
    iget v0, p3, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    goto/16 :goto_0
.end method

.method public glRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-array v0, v3, [I

    iget v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mTextureHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mTextureHandle:I

    .line 136
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    .line 140
    :cond_0
    return-void
.end method

.method public glSetup(Landroid/content/Context;)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string/jumbo v1, "vertex_shader"

    .line 62
    sget-object v0, Lcn/jingling/lib/livefilter/LiveLayer;->TYPE_FRAGMENTS:Ljava/util/Map;

    iget-object v2, p0, Lcn/jingling/lib/livefilter/LiveLayer;->type:Lcn/jingling/lib/livefilter/LiveLayer$Type;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "aPosition"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "uMVPMatrix"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 63
    const-string/jumbo v5, "uTexture"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "uTextureLayer"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "uLayerWeight"

    aput-object v5, v3, v4

    .line 61
    invoke-static {p1, v1, v0, v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mShader:Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    .line 64
    return-void
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveOp;->glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "needUpdateBm":Z
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 85
    :cond_1
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcn/jingling/lib/livefilter/LiveLayer;->prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 89
    :cond_2
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mTextureHandle:I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    .line 91
    return-void
.end method

.method public prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 95
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->path:Ljava/lang/String;

    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 96
    iget v3, p2, Landroid/graphics/Point;->y:I

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 95
    invoke-static {p1, v1, v2, v3, v4}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jingling/lib/filters/ImageProcessUtils;->flip(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    .line 103
    :cond_0
    iput-object v0, p0, Lcn/jingling/lib/livefilter/LiveLayer;->mUpdateBm:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method
