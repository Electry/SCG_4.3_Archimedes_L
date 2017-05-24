.class Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->access$700(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mLayoutReady:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->access$002(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;Z)Z

    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->access$800(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
