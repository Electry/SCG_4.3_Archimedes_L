.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
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
    .line 2300
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0f08ea

    const/4 v5, 0x0

    .line 2305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2308
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2312
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v3, :cond_0

    .line 2316
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getHasLogin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2317
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "sHint":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2322
    .end local v2    # "sHint":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboLoginLayout:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2323
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2324
    .restart local v2    # "sHint":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2328
    .end local v2    # "sHint":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->isGetGroupList()Z

    move-result v0

    .line 2329
    .local v0, "bGet":Z
    if-eqz v0, :cond_3

    .line 2330
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->toggleGroupMenu()V

    goto :goto_0

    .line 2332
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mViewGroupBottomMenu:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f100a36

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2333
    .local v1, "rlRightMenuWb":Landroid/widget/RelativeLayout;
    const v3, 0x7f100a37

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2334
    const v3, 0x7f100a38

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWbGroupStateChangeListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1400(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setWbGroupStatueChangeListener(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;)V

    .line 2336
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$17;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->toggleGroupMenu()V

    goto/16 :goto_0

    .line 2305
    nop

    :pswitch_data_0
    .packed-switch 0x7f100a37
        :pswitch_0
    .end packed-switch
.end method
