.class Lcom/lenovo/scg/gallery3d/app/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/Gallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$1;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonCenterToggle()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "Gallery"

    const-string/jumbo v1, "onPersonCenterToggle!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$1;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$1;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$1;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->closeLeftPanel(Z)V

    .line 186
    :cond_0
    return-void
.end method
