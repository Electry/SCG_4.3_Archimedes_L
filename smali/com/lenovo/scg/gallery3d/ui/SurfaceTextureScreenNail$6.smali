.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setCameraGaussBlurBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->setCamera2dScreenShotBmp(Landroid/graphics/Bitmap;)V

    .line 763
    :cond_0
    return-void
.end method
