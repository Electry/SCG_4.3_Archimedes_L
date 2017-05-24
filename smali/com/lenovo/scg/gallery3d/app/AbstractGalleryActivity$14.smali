.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;
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
    .line 2147
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    .line 2152
    const-string v3, "AbstractGalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2186
    :goto_0
    :pswitch_0
    return-void

    .line 2157
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1007c6

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->enablePscenterWidget(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;I)V

    .line 2158
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2159
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2160
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2163
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2164
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0f07db

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$800(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2167
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V

    goto :goto_0

    .line 2171
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1007c4

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->enablePscenterWidget(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;I)V

    .line 2172
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2173
    .local v2, "settingIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2174
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2177
    .end local v2    # "settingIntent":Landroid/content/Intent;
    :pswitch_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1007c5

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->enablePscenterWidget(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$900(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;I)V

    .line 2178
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2179
    .local v0, "aboutIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2180
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$14;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2154
    nop

    :pswitch_data_0
    .packed-switch 0x7f1007c2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
