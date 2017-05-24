.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->startGaussBlur(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$functionChanged:Z

.field final synthetic val$gaussExtRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$gaussExtRect:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$functionChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    new-instance v1, Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-direct {v1}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$202(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/GaussBlurManager;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$gaussExtRect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;->val$functionChanged:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->startGaussBlur(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    .line 704
    return-void
.end method
