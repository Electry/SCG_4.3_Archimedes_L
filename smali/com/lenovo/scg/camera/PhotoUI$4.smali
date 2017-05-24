.class Lcom/lenovo/scg/camera/PhotoUI$4;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoUI;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 735
    const-string v0, "CAM_UI"

    const-string v1, "mReviewDoneButton onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 739
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$4;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->onCaptureDone()V

    .line 741
    return-void
.end method
