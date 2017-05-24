.class public Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
.super Ljava/lang/Object;
.source "TextureUploader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;


# static fields
.field private static final INIT_CAPACITY:I = 0x40

.field private static final QUOTA_PER_FRAME:I = 0x1


# instance fields
.field private final mBgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

.field private volatile mIsQueued:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 2
    .param p1, "root"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    const/16 v1, 0x40

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    .line 32
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .line 40
    return-void
.end method

.method private queueSelfIfNeed()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    goto :goto_0
.end method

.method private upload(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p3, "uploadQuota"    # I
    .param p4, "isBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .local p2, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;>;"
    const/4 v2, 0x0

    .line 73
    :goto_0
    if-lez p3, :cond_0

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 93
    :cond_0
    return p3

    .line 77
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    .line 78
    .local v0, "t":Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 84
    .end local v0    # "t":Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    .restart local v0    # "t":Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 84
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz p4, :cond_3

    invoke-virtual {v0, p1, v2, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 91
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 69
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 49
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "uploadQuota":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->upload(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    move-result v0

    .line 100
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestRender()V

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->upload(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 104
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    monitor-exit p0

    return v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
