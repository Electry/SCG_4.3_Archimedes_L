.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->startGaussBlur(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

.field final synthetic val$gaussExtRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->val$gaussExtRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    new-instance v1, Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-direct {v1}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$202(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/GaussBlurManager;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;->val$gaussExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->startGaussBlur(Landroid/graphics/Rect;)V

    .line 718
    return-void
.end method
