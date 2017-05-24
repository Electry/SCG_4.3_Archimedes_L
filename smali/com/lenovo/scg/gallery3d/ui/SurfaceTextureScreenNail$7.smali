.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->showToastBackGround()V
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
    .line 898
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    new-instance v1, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-direct {v1}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$302(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->initToastBackGround()V

    .line 906
    return-void
.end method
