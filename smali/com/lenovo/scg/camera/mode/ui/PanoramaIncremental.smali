.class public Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;
.super Ljava/lang/Object;
.source "PanoramaIncremental.java"


# instance fields
.field private bottom:I

.field private hasUsed:Z

.field private left:I

.field private mAddTexture:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;IIII)V
    .locals 1
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->mAddTexture:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    .line 22
    iput p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->left:I

    .line 23
    iput p4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->right:I

    .line 24
    iput p3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->top:I

    .line 25
    iput p5, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->bottom:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->hasUsed:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->mAddTexture:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->mAddTexture:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->deleteTextures()V

    .line 64
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->bottom:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->left:I

    return v0
.end method

.method public getPreviewTextureYUV420sp()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->mAddTexture:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->top:I

    return v0
.end method

.method public isHasUsed()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->hasUsed:Z

    return v0
.end method

.method public setHasUsed(Z)V
    .locals 0
    .param p1, "hasUsed"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaIncremental;->hasUsed:Z

    .line 52
    return-void
.end method
