.class public Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$DrawableListener;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;
    }
.end annotation


# static fields
.field private static final MSG_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "panhui4_ResourceManager"


# instance fields
.field private ctx:Landroid/content/Context;

.field private isRunning:Z

.field private lock:Ljava/lang/Object;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mRefQ:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->isRunning:Z

    .line 162
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->lock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->ctx:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->sendMassage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/widget/ImageView;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->isRunning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static declared-synchronized createResourceManager(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "childname"    # Ljava/lang/String;
    .param p4, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, p2, p1, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v0, 0x1

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;

    invoke-direct {v1, p0, p1, p4}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->sendMassage(ILjava/lang/Object;)V

    .line 155
    :cond_0
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->start()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->isRunning:Z

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->clean()V

    .line 186
    return-void
.end method
