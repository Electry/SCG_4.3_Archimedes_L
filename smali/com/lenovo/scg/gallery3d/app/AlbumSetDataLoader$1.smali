.class Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
