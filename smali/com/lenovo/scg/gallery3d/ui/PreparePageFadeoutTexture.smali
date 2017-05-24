.class public Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;


# static fields
.field public static final KEY_FADE_TEXTURE:Ljava/lang/String; = "fade_texture"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 5
    .param p1, "rootPane"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 20
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 25
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    .line 26
    .local v1, "w":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    .line 27
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-direct {v2, v1, v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    goto :goto_0
.end method

.method public static prepareFadeOutTexture(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 5
    .param p0, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p1, "rootPane"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 68
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 69
    .local v1, "task":Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 71
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    const/4 v2, 0x0

    .line 74
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 76
    :try_start_0
    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 77
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->get()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 80
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 83
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "fade_texture"

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v3
.end method


# virtual methods
.method public declared-synchronized get()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    .line 42
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    if-nez v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 56
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 64
    const/4 v1, 0x0

    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    goto :goto_0
.end method
