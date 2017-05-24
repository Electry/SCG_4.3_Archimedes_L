.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->destroyToastBackGround()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->destroy()V

    .line 944
    :cond_0
    return-void
.end method
