.class public Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;
    }
.end annotation


# static fields
.field private static HHREAD_MAX_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourceManager"

.field private static THREAD_CORE_SIZE:I

.field private static instance:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private isRunning:Z

.field private lock:Ljava/lang/Object;

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRefQ:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private taskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private workPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->THREAD_CORE_SIZE:I

    .line 45
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->HHREAD_MAX_SIZE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->isRunning:Z

    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->lock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->ctx:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->start()V

    .line 90
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->THREAD_CORE_SIZE:I

    sget v3, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->HHREAD_MAX_SIZE:I

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->workPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->isRunning:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->instance:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->instance:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .line 79
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->instance:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    return-void
.end method

.method public getImageDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 167
    if-nez p1, :cond_1

    move-object v0, v2

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    .line 169
    .local v1, "ref":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 171
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v2

    .line 173
    goto :goto_0
.end method

.method public loadImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V
    .locals 4
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .param p2, "defaultImage"    # Landroid/graphics/drawable/Drawable;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    .prologue
    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    .line 97
    .local v0, "drawable":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 98
    invoke-interface {p3, p1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;->onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-interface {p3, p1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;->onFinish(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 106
    .local v1, "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    if-nez v1, :cond_3

    .line 107
    new-instance v1, Ljava/util/Vector;

    .end local v1    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 108
    .restart local v1    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mResourceRecord:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->workPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v1, p3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->isRunning:Z

    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->clean()V

    .line 184
    return-void
.end method
