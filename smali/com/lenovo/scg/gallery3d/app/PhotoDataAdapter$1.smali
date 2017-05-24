.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/Path;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingFinished(Z)V

    goto :goto_0

    .line 249
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
