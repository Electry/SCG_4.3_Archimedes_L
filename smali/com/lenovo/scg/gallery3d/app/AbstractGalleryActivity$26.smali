.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;
.super Landroid/os/Handler;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 3765
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3770
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3771
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->showStack()V

    .line 3772
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$26;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->showStack()V

    .line 3773
    return-void
.end method
