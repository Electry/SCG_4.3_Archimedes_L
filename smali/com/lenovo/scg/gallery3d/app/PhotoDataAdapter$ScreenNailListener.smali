.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 1
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 969
    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Lcom/lenovo/scg/gallery3d/ui/ScreenNail;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 974
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$700(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/lenovo/scg/gallery3d/util/Future;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$900(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/util/Future;)V

    .line 980
    return-void
.end method
