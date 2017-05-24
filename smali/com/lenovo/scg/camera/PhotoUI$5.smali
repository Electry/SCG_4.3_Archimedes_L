.class Lcom/lenovo/scg/camera/PhotoUI$5;
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
    .line 753
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 760
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$5;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->onCaptureRetake()V

    .line 764
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 765
    return-void
.end method
