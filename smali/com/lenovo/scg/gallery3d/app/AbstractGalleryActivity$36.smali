.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initActionBar(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$shareLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4459
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->val$shareLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x1fa

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 4463
    const-string v1, "AbstractGalleryActivity"

    const-string v2, "mActionBarShare, onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4466
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4468
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3200(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 4470
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0xdc

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4471
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareMenuItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    .line 4472
    .local v0, "menuItemsHeight":I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4473
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4478
    :goto_0
    const-string v1, "AbstractGalleryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "menuItemsHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4481
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4482
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 4485
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->val$shareLayout:Landroid/view/View;

    const/16 v3, 0x35

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarShare:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStatusBarHeight()I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4509
    .end local v0    # "menuItemsHeight":I
    :goto_1
    return-void

    .line 4475
    .restart local v0    # "menuItemsHeight":I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_0

    .line 4490
    .end local v0    # "menuItemsHeight":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedMimeType:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4491
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4497
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectedMimeType:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4498
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4503
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4504
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4505
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 4507
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSharePopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->val$shareLayout:Landroid/view/View;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 4493
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToWeiBoLL:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 4500
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$36;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mShareToFriendCircleLL:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method
