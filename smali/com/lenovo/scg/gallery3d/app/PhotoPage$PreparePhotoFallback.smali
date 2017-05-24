.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparePhotoFallback"
.end annotation


# instance fields
.field private mPhotoFallback:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

.field private mResultReady:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 1

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2957
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 2958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;

    .prologue
    .line 2956
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 1

    .prologue
    .line 2961
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    if-nez v0, :cond_0

    .line 2962
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2964
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onGLIdle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2969
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2978
    :goto_0
    return v2

    .line 2973
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->buildFallbackEffect(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mPhotoFallback:Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    .line 2974
    monitor-enter p0

    .line 2975
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->mResultReady:Z

    .line 2976
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2977
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
