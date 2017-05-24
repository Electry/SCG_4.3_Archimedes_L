.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginTipButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f07db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Ljava/lang/String;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isCarrieroperatorDemanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f090c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f0f090d

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v1, 0x7f0f090e

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 226
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mWelcomeViews:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->stopAnimation()V

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$1200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mLoginListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$LoginListener;->onEnterWeibo()V

    goto/16 :goto_0
.end method
