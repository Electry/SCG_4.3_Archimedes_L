.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->showToastBackGround([F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

.field final synthetic val$rectArray:[F

.field final synthetic val$textColorArray:[F


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;[F[F)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->val$rectArray:[F

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->val$textColorArray:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    new-instance v1, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-direct {v1}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$302(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->val$rectArray:[F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;->val$textColorArray:[F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->initToastBackGround([F[F)V

    .line 920
    return-void
.end method
