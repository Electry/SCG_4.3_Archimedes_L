.class public Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"


# instance fields
.field private mIsFlipped:Z

.field private final mOpaque:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "opaque"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 32
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mOpaque:Z

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->setSize(II)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getTarget()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xde1

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mIsFlipped:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepare(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/lenovo/scg/gallery3d/glrenderer/GLId;

    move-result-object v0

    .line 52
    .local v0, "glId":Lcom/lenovo/scg/gallery3d/glrenderer/GLId;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mId:I

    .line 53
    const/16 v1, 0x1908

    const/16 v2, 0x1401

    invoke-interface {p1, p0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;II)V

    .line 54
    invoke-interface {p1, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mState:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 57
    return-void
.end method

.method public setIsFlippedVertically(Z)V
    .locals 0
    .param p1, "isFlipped"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->mIsFlipped:Z

    .line 48
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
