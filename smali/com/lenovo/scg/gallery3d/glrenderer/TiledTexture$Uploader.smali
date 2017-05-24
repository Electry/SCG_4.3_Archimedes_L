.class public Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 2
    .param p1, "glRoot"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .line 88
    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 98
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 106
    .local v0, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;>;"
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 108
    .local v4, "now":J
    const-wide/16 v6, 0x4

    add-long v2, v4, v6

    .line 109
    .local v2, "dueTime":J
    :goto_0
    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 111
    .local v1, "t":Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
    # invokes: Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->uploadNextTile(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->access$000(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 113
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestRender()V

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 116
    goto :goto_0

    .line 117
    .end local v1    # "t":Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 120
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    monitor-exit p0

    return v6

    .line 117
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 121
    .end local v2    # "dueTime":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
