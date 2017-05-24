.class Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;
.super Landroid/os/Handler;
.source "CloudUpAndDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitNotification()V
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V

    .line 178
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 411
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    const-string v6, "WYJ"

    const-string v7, "Create download action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->downloadCreate()V

    goto :goto_0

    .line 184
    :pswitch_2
    const-string v6, "WYJ"

    const-string v7, "Pause download action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->downloadPause()V

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v6, "WYJ"

    const-string v7, "Pause download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100327

    const/high16 v8, -0x10000

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 192
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100327

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_download:Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud download int total key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100329

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud download int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    const-string v6, "Cloud download long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 196
    .local v4, "max_progress":I
    const-string v6, "Cloud download long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 197
    .local v5, "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    div-int/lit8 v5, v4, 0x32

    .line 198
    :cond_2
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 199
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100328

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 200
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 202
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0273

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud pause download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    const-string v6, "WYJ"

    const-string v7, "Resume download action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->downloadResume()V

    goto/16 :goto_0

    .line 210
    :pswitch_5
    const-string v6, "WYJ"

    const-string v7, "Resume download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 212
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 213
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100327

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 214
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100327

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_download:Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud download int total key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100329

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud download int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    const-string v6, "Cloud download long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 218
    .restart local v4    # "max_progress":I
    const-string v6, "Cloud download long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 219
    .restart local v5    # "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    div-int/lit8 v5, v4, 0x32

    .line 220
    :cond_5
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_6

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 221
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100328

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 222
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud resume download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 227
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_6
    const-string v6, "WYJ"

    const-string v7, "Stop download action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->downloadStop()V

    goto/16 :goto_0

    .line 231
    :pswitch_7
    const-string v6, "WYJ"

    const-string v7, "Stop download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v6, 0x1

    sput-boolean v6, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedDownload:Z

    .line 233
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud stop download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 237
    :pswitch_8
    const-string v6, "WYJ"

    const-string v7, "Hide download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z

    .line 239
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 242
    :pswitch_9
    const-string v6, "WYJ"

    const-string v7, "Show download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedDownload:Z

    if-nez v6, :cond_1

    .line 244
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080081

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 245
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_download:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 246
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 247
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z

    .line 248
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 252
    :pswitch_a
    const-string v6, "WYJ"

    const-string v7, "Finish download callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 254
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud finished download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 256
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080082

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 257
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_download:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 258
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100328

    const-string v8, "Cloud download long max progress key"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const-string v9, "Cloud download long max progress key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 261
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 263
    :cond_8
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0275

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->getCloudPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 264
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 267
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->download_time:J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 268
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->download_time:J
    invoke-static {v6, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$802(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;J)J

    .line 269
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 271
    const-string v6, "Cloud download long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 272
    .restart local v4    # "max_progress":I
    const-string v6, "Cloud download long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 273
    .restart local v5    # "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_9

    div-int/lit8 v5, v4, 0x32

    .line 274
    :cond_9
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_a

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 275
    :cond_a
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100328

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 276
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 278
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_b
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud progress download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 283
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f100329

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud download int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270e

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    :cond_c
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud update download action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v6, "Cloud download parcelable cloudphoto list key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 291
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 292
    .local v1, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->download(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    goto :goto_1

    .line 294
    .end local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :cond_d
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    const-class v9, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x14000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :pswitch_e
    const-string v6, "WYJ"

    const-string v7, "Create upload action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->uploadCreate()V

    goto/16 :goto_0

    .line 302
    :pswitch_f
    const-string v6, "WYJ"

    const-string v7, "Pause upload action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->uploadPause()V

    goto/16 :goto_0

    .line 306
    :pswitch_10
    const-string v6, "WYJ"

    const-string v7, "Pause upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 309
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032c

    const/high16 v8, -0x10000

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 310
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032c

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_upload:Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 311
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud upload int total key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 312
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud upload int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 313
    const-string v6, "Cloud upload long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 314
    .restart local v4    # "max_progress":I
    const-string v6, "Cloud upload long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 315
    .restart local v5    # "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_e

    div-int/lit8 v5, v4, 0x32

    .line 316
    :cond_e
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_f

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 317
    :cond_f
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 318
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 320
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_10
    const-string v6, "Cloud upload error type key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_11

    .line 321
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0274

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 325
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud pause upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 323
    :cond_11
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0273

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 328
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_11
    const-string v6, "WYJ"

    const-string v7, "Resume upload action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->uploadResume()V

    goto/16 :goto_0

    .line 332
    :pswitch_12
    const-string v6, "WYJ"

    const-string v7, "Resume upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 335
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032c

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 336
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032c

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_upload:Ljava/lang/CharSequence;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud upload int total key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 338
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud upload int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 339
    const-string v6, "Cloud upload long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 340
    .restart local v4    # "max_progress":I
    const-string v6, "Cloud upload long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 341
    .restart local v5    # "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_12

    div-int/lit8 v5, v4, 0x32

    .line 342
    :cond_12
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_13

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 343
    :cond_13
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 344
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 346
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_14
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud resume upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_13
    const-string v6, "WYJ"

    const-string v7, "Stop upload action"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->uploadStop()V

    goto/16 :goto_0

    .line 353
    :pswitch_14
    const-string v6, "WYJ"

    const-string v7, "Stop upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v6, 0x1

    sput-boolean v6, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedUpload:Z

    .line 355
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud stop upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_15
    const-string v6, "WYJ"

    const-string v7, "Hide upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z

    .line 361
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 364
    :pswitch_16
    const-string v6, "WYJ"

    const-string v7, "Hide upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedUpload:Z

    if-nez v6, :cond_1

    .line 366
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080088

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 367
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_upload:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 368
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 369
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z

    .line 370
    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 374
    :pswitch_17
    const-string v6, "WYJ"

    const-string v7, "Finish upload callback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud finished upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 378
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080089

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 379
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_upload:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 380
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032d

    const-string v8, "Cloud upload long max progress key"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const-string v9, "Cloud upload long max progress key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 383
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 385
    :cond_15
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0276

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 386
    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 389
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 391
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Cloud upload int current key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 394
    :cond_16
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud update upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 397
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->upload_time:J
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 398
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->upload_time:J
    invoke-static {v6, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1502(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;J)J

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 400
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 401
    const-string v6, "Cloud upload long max progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 402
    .restart local v4    # "max_progress":I
    const-string v6, "Cloud upload long progress key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 403
    .restart local v5    # "progress":I
    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_17

    div-int/lit8 v5, v4, 0x32

    .line 404
    :cond_17
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_18

    mul-int/lit8 v6, v4, 0x31

    div-int/lit8 v5, v6, 0x32

    .line 405
    :cond_18
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x7f10032d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 406
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x270f

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 408
    .end local v4    # "max_progress":I
    .end local v5    # "progress":I
    :cond_19
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "Cloud progress upload action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
