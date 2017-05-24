.class Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;
.super Ljava/lang/Object;
.source "VideoModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->updateFrontPreview(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    const-string v0, "VideoModeUI"

    const-string/jumbo v1, "updateFrontPreview done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method
