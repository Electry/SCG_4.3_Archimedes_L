.class Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;
.super Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
.source "BitmapJobDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailLoader"
.end annotation


# static fields
.field private static final sThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# instance fields
.field private mParent:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;-><init>(II)V

    sput-object v0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->sThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;)V
    .locals 0
    .param p1, "parent"    # Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    .line 171
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 181
    return-void
.end method

.method protected submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->sThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable$ThumbnailLoader;->mParent:Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;

    # getter for: Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;->access$000(Lcom/lenovo/scg/photos/shims/BitmapJobDrawable;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method
