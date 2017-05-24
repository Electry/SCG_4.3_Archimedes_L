.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$5;
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
    .line 1068
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1072
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "mLeftPanelHandler, handleMessage, closeLeftPanel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->scrolltozero()V

    .line 1075
    return-void
.end method
