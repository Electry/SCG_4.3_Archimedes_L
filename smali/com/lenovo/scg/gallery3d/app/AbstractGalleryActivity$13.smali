.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;
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
    .line 2099
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 2104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2144
    :goto_0
    return-void

    .line 2106
    :sswitch_0
    const-string v3, "AbstractGalleryActivity"

    const-string/jumbo v4, "onClick, OnPersonCenterMatchWithClicked, personcenter_match_with_goldbox_titleadd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2108
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0f07db

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2111
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V

    goto :goto_0

    .line 2117
    :sswitch_1
    const-string v3, "AbstractGalleryActivity"

    const-string/jumbo v4, "onClick, OnPersonCenterMatchWithClicked, personcenter_match_with_goldbox_draftlayout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2120
    .local v1, "draftIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2121
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2126
    .end local v1    # "draftIntent":Landroid/content/Intent;
    :sswitch_2
    const-string v3, "AbstractGalleryActivity"

    const-string/jumbo v4, "onClick, OnPersonCenterMatchWithClicked, personcenter_match_with_goldbox_settinglayout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2128
    .local v2, "settingIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2129
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2133
    .end local v2    # "settingIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showSGAbout()V

    .line 2134
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2137
    :sswitch_4
    const-string v3, "AbstractGalleryActivity"

    const-string/jumbo v4, "onClick, OnPersonCenterMatchWithClicked, personcenter_match_with_goldbox_aboutlayout"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2139
    .local v0, "aboutIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2140
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2104
    :sswitch_data_0
    .sparse-switch
        0x7f10071f -> :sswitch_0
        0x7f100724 -> :sswitch_1
        0x7f100728 -> :sswitch_2
        0x7f10072b -> :sswitch_4
        0x7f10072e -> :sswitch_1
        0x7f100730 -> :sswitch_2
        0x7f100732 -> :sswitch_3
    .end sparse-switch
.end method
