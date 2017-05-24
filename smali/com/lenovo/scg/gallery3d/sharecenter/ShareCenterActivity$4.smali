.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initPopwindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$700(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f07c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->setHdShare(Z)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 316
    return-void
.end method
