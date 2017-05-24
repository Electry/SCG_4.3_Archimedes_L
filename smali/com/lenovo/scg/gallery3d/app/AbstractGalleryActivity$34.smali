.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;
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
    .line 4421
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->val$shareLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 4428
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4430
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4432
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mMoreMenuItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2600(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 4437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->menuWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->val$shareLayout:Landroid/view/View;

    const/16 v2, 0x35

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mActionBarShare:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$34;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStatusBarHeight()I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4438
    return-void
.end method
