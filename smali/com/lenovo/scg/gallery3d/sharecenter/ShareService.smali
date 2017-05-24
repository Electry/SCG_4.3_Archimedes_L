.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
.super Landroid/app/Service;
.source "ShareService.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$1;,
        Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    }
.end annotation


# static fields
.field public static final PLATFORM_SINA:I = 0x0

.field public static final PLATFORM_TENCENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShareCenter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

.field private mSharePlatformCount:I

.field private mShareResultCount:I

.field private mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field private mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 41
    iput v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationId:I

    .line 43
    iput v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSharePlatformCount:I

    .line 45
    iput v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
    .param p1, "x1"    # [Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationId:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;ILjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->showNotification(ILjava/lang/String;IZ)V

    return-void
.end method

.method private initService()V
    .locals 1

    .prologue
    .line 60
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    return-void
.end method

.method private showNotification(ILjava/lang/String;IZ)V
    .locals 4
    .param p1, "notiId"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "vibrate"    # I
    .param p4, "cancelSelf"    # Z

    .prologue
    .line 172
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020919

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 173
    .local v0, "notif":Landroid/app/Notification;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0641

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 175
    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    if-eqz p4, :cond_0

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->initService()V

    .line 56
    const-string v0, "ShareCenter"

    const-string v1, "ShareService onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    const-string v0, "ShareCenter"

    const-string v1, "ShareService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V
    .locals 8
    .param p1, "shareResultObject"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    .prologue
    const v7, 0x7f0f07d3

    .line 80
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v2

    .line 81
    .local v2, "mIsBGDataEnable":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v1

    .line 82
    .local v1, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v0

    .line 83
    .local v0, "isAvatarShareReportSuppored":Z
    const-string v4, "ShareCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShareResult, mIsBGDataEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAvatarSuppored="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAvatarShareReportSuppored="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v1, :cond_0

    .line 88
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    .line 98
    :cond_0
    :goto_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSharePlatformCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSharePlatformCount:I

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "msg":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$1;->$SwitchMap$com$lenovo$scg$gallery3d$sharecenter$ShareManager$SharePlatform:[I

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->sharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 108
    :goto_1
    iget v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationId:I

    const/4 v5, 0x2

    iget-boolean v6, p1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->isSuccess:Z

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->showNotification(ILjava/lang/String;IZ)V

    .line 109
    const-string v4, "ShareCenter"

    const-string v5, "*************Sina Share End*************"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSharePlatformCount:I

    if-ne v4, v5, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->stopSelf()V

    .line 113
    :cond_1
    return-void

    .line 91
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    goto :goto_0

    .line 102
    .restart local v3    # "msg":Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    goto :goto_1

    .line 105
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f07d4

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 72
    const-string v0, "ShareCenter"

    const-string v1, "ShareService onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
