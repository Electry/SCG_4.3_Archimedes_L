.class public Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;
.super Ljava/lang/Object;
.source "ResourceManager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$CleanRefQThread;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;,
        Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ImageObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceManager2"


# instance fields
.field private isRunning:Z

.field private lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;",
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
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->isRunning:Z

    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->lock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$CleanRefQThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$CleanRefQThread;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$CleanRefQThread;->start()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->isRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized createResourceManager(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "childname"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .prologue
    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 201
    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, p0, p2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 210
    .local v2, "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    if-nez v2, :cond_1

    .line 211
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p4, p2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;->onFinish(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 220
    :goto_1
    return-void

    .line 205
    .end local v2    # "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mRefQ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, p0, p2, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 214
    .restart local v2    # "ls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .line 215
    .local v1, "l":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, p2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;->onFinish(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 217
    .end local v1    # "l":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    return-void
.end method

.method public getImageDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 224
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    .line 226
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;

    .line 227
    .local v1, "ref":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 229
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {p3, p1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;->onFinish(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;

    .line 102
    .local v0, "drawable":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-interface {p3, p1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;->onFinish(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 107
    .local v1, "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    if-nez v1, :cond_3

    .line 108
    new-instance v1, Ljava/util/Vector;

    .end local v1    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 109
    .restart local v1    # "listeners":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mResourceRecord:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v1, p3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .prologue
    .line 141
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    .line 153
    .local v0, "readPictureListener":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 154
    return-void
.end method

.method loadImageFromNet(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;

    .prologue
    .line 170
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v1

    .line 171
    .local v1, "netPool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v2

    .line 173
    .local v2, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, p1, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 174
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$DrawableListener;)V

    .line 190
    .local v0, "netListener":Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->isRunning:Z

    .line 240
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;->clean()V

    .line 241
    return-void
.end method
