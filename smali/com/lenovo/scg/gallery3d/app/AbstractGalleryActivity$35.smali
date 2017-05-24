.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 4441
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4445
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4446
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 4447
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x9b

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4448
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mSelectMenuItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2f

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4449
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4450
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4451
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 4452
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$35;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarSelectRL:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$3100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4457
    :goto_0
    return-void

    .line 4453
    :catch_0
    move-exception v0

    .line 4454
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "mActionBarSelectRL.setOnClickListener.onClick error: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
