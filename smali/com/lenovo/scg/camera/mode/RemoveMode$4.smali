.class Lcom/lenovo/scg/camera/mode/RemoveMode$4;
.super Ljava/lang/Object;
.source "RemoveMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode;->showRemoveSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->startMulitiFrameAnim()V

    .line 719
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1300(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 720
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1500(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 722
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$4;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$1400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 723
    return-void
.end method
