.class public Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
.super Landroid/app/Service;
.source "CloudUpAndDownService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SELECT_FOLDER:Ljava/lang/String; = "cloud select folder to upload photo"

.field public static final B_CLOUD_BACK:Ljava/lang/String; = "Cloud back pressed action"

.field public static final B_CLOUD_CLOSE_DOWNLOAD_WINDOW_ACTION:Ljava/lang/String; = "Cloud send close download window action"

.field public static final B_CLOUD_CLOSE_UPLOAD_WINDOW_ACTION:Ljava/lang/String; = "Cloud send close upload window action"

.field public static final B_CLOUD_CREATE_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send create download action"

.field public static final B_CLOUD_CREATE_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send create upload action"

.field public static final B_CLOUD_FINISHED_DOWNLOAD:Ljava/lang/String; = "Cloud finished download action"

.field public static final B_CLOUD_FINISHED_UPLOAD:Ljava/lang/String; = "Cloud finished upload action"

.field public static final B_CLOUD_HIDE_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send hide download action"

.field public static final B_CLOUD_HIDE_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send hide upload action"

.field public static final B_CLOUD_INIT_COUNT:Ljava/lang/String; = "Cloud init count photo action"

.field public static final B_CLOUD_INIT_STATE:Ljava/lang/String; = "Cloud init login state action"

.field public static final B_CLOUD_PAUSE_DOWNLOAD:Ljava/lang/String; = "Cloud pause download action"

.field public static final B_CLOUD_PAUSE_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send pause download action"

.field public static final B_CLOUD_PAUSE_UPLOAD:Ljava/lang/String; = "Cloud pause upload action"

.field public static final B_CLOUD_PAUSE_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send pause upload action"

.field public static final B_CLOUD_PROGRESS_DOWNLOAD:Ljava/lang/String; = "Cloud progress download action"

.field public static final B_CLOUD_PROGRESS_UPLOAD:Ljava/lang/String; = "Cloud progress upload action"

.field public static final B_CLOUD_REFRESH:Ljava/lang/String; = "Cloud refresh ui action"

.field public static final B_CLOUD_RESUME_DOWNLOAD:Ljava/lang/String; = "Cloud resume download action"

.field public static final B_CLOUD_RESUME_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send resume download action"

.field public static final B_CLOUD_RESUME_UPLOAD:Ljava/lang/String; = "Cloud resume upload action"

.field public static final B_CLOUD_RESUME_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send resume upload action"

.field public static final B_CLOUD_SHOW_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send show download action"

.field public static final B_CLOUD_SHOW_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send show upload action"

.field public static final B_CLOUD_STOP_DOWNLOAD:Ljava/lang/String; = "Cloud stop download action"

.field public static final B_CLOUD_STOP_DOWNLOAD_ACTION:Ljava/lang/String; = "Cloud send stop download action"

.field public static final B_CLOUD_STOP_UPLOAD:Ljava/lang/String; = "Cloud stop upload action"

.field public static final B_CLOUD_STOP_UPLOAD_ACTION:Ljava/lang/String; = "Cloud send stop upload action"

.field public static final B_CLOUD_UPDATE_DOWNLOAD:Ljava/lang/String; = "Cloud update download action"

.field public static final B_CLOUD_UPDATE_UPLOAD:Ljava/lang/String; = "Cloud update upload action"

.field public static final H_CLOUD_ALBUM_DOWNLOAD_CALLBACK:I = 0x10

.field public static final H_CLOUD_BACK_PRESSED_CALLBACK:I = 0x24

.field public static final H_CLOUD_CLOSE_DOWNLOAD_WINDOW_ACTION:I = 0x27

.field public static final H_CLOUD_CLOSE_UPLOAD_WINDOW_ACTION:I = 0x26

.field private static final H_CLOUD_CREATE_DOWNLOAD:I = 0x3

.field public static final H_CLOUD_CREATE_DOWNLOAD_CALLBACK:I = 0x9

.field private static final H_CLOUD_CREATE_UPLOAD:I = 0x15

.field public static final H_CLOUD_FINISHED_DOWNLOAD_CALLBACK:I = 0xc

.field public static final H_CLOUD_FINISHED_UPLOAD_CALLBACK:I = 0x1e

.field private static final H_CLOUD_HIDE_DOWNLOAD:I = 0x8

.field private static final H_CLOUD_HIDE_UPLOAD:I = 0x19

.field public static final H_CLOUD_INIT_COUNT:I = 0x26

.field public static final H_CLOUD_INIT_STATE:I = 0x25

.field private static final H_CLOUD_PAUSE_DOWNLOAD:I = 0x5

.field public static final H_CLOUD_PAUSE_DOWNLOAD_CALLBACK:I = 0xb

.field private static final H_CLOUD_PAUSE_UPLOAD:I = 0x16

.field public static final H_CLOUD_PAUSE_UPLOAD_CALLBACK:I = 0x1b

.field public static final H_CLOUD_PROGRESS_DOWNLOAD_CALLBACK:I = 0xe

.field public static final H_CLOUD_PROGRESS_UPLOAD_CALLBACK:I = 0x20

.field public static final H_CLOUD_REFRESH:I = 0x23

.field private static final H_CLOUD_RESUME_DOWNLOAD:I = 0x4

.field public static final H_CLOUD_RESUME_DOWNLOAD_CALLBACK:I = 0xa

.field private static final H_CLOUD_RESUME_UPLOAD:I = 0x17

.field public static final H_CLOUD_RESUME_UPLOAD_CALLBACK:I = 0x1c

.field private static final H_CLOUD_SHOW_DOWNLOAD:I = 0x7

.field private static final H_CLOUD_SHOW_UPLOAD:I = 0x1a

.field private static final H_CLOUD_STOP_DOWNLOAD:I = 0x6

.field public static final H_CLOUD_STOP_DOWNLOAD_CALLBACK:I = 0xd

.field private static final H_CLOUD_STOP_UPLOAD:I = 0x18

.field public static final H_CLOUD_STOP_UPLOAD_CALLBACK:I = 0x1d

.field public static final H_CLOUD_SYNC_UPLOAD_CALLBACK:I = 0x28

.field public static final H_CLOUD_UPDATE_DOWNLOAD_CALLBACK:I = 0xf

.field public static final H_CLOUD_UPDATE_UPLOAD_CALLBACK:I = 0x1f

.field public static final K_CLOUD_COUNT_ALBUMSET:Ljava/lang/String; = "Cloud count albumset key"

.field public static final K_CLOUD_COUNT_PHOTO:Ljava/lang/String; = "Cloud count photo key"

.field public static final K_CLOUD_KEY:Ljava/lang/String; = "Cloud is upload or is download key"

.field public static final K_CLOUD_LIST:Ljava/lang/String; = "Cloud upload list or download list key"

.field public static final K_CLOUD_OPEN_DETAIL:Ljava/lang/String; = "Cloud open detail key"

.field public static final S_CLOUD_DOWNLOAD:I = 0x1

.field public static final S_CLOUD_DOWNLOAD_COUNT:I = 0x22

.field public static final S_CLOUD_DOWNLOAD_STATE:I = 0x21

.field public static final S_CLOUD_UPLOAD:I = 0x14

.field public static final V_CLOUD_IS_ALBUM_DOWNLOAD:I = 0x11

.field public static final V_CLOUD_IS_PHOTO_DOWNLOAD:I = 0x12

.field public static final V_CLOUD_IS_UPLOAD_PATH:I = 0x13

.field public static mFinishedDownload:Z

.field public static mFinishedUpload:Z


# instance fields
.field private char_fail_download:Ljava/lang/CharSequence;

.field private char_fail_upload:Ljava/lang/CharSequence;

.field private char_load_download:Ljava/lang/CharSequence;

.field private char_load_upload:Ljava/lang/CharSequence;

.field private char_no_picture:Ljava/lang/CharSequence;

.field private char_over_download:Ljava/lang/CharSequence;

.field private char_over_upload:Ljava/lang/CharSequence;

.field private char_start_download:Ljava/lang/CharSequence;

.field private char_start_upload:Ljava/lang/CharSequence;

.field private download_time:J

.field private final id_download_cancel:I

.field private final id_download_finished:I

.field private final id_download_progress:I

.field private final id_download_title:I

.field private final id_download_total:I

.field private final id_upload_cancel:I

.field private final id_upload_finished:I

.field private final id_upload_progress:I

.field private final id_upload_title:I

.field private final id_upload_total:I

.field private mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

.field private mDownLoadNotification:Landroid/app/Notification;

.field private final mDownLoadNotificationId:I

.field private mDownLoadRemoteViews:Landroid/widget/RemoteViews;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mShowDownload:Z

.field private mShowUpload:Z

.field private mUpLoadNotification:Landroid/app/Notification;

.field private final mUpLoadNotificationId:I

.field private mUpLoadRemoteViews:Landroid/widget/RemoteViews;

.field private upload_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 169
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedUpload:Z

    .line 171
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedDownload:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;

    .line 46
    const/16 v0, 0x270f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotificationId:I

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;

    .line 48
    const/16 v0, 0x270e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotificationId:I

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadRemoteViews:Landroid/widget/RemoteViews;

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadRemoteViews:Landroid/widget/RemoteViews;

    .line 52
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    .line 144
    const v0, 0x7f10032e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_upload_finished:I

    .line 145
    const v0, 0x7f10032f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_upload_total:I

    .line 146
    const v0, 0x7f10032d

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_upload_progress:I

    .line 147
    const v0, 0x7f100330

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_upload_cancel:I

    .line 148
    const v0, 0x7f10032c

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_upload_title:I

    .line 149
    const v0, 0x7f100329

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_download_finished:I

    .line 150
    const v0, 0x7f10032a

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_download_total:I

    .line 151
    const v0, 0x7f100328

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_download_progress:I

    .line 152
    const v0, 0x7f10032b

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_download_cancel:I

    .line 153
    const v0, 0x7f100327

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->id_download_title:I

    .line 168
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z

    .line 170
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z

    .line 172
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;

    .line 637
    return-void
.end method

.method private InitModelListener()V
    .locals 2

    .prologue
    .line 480
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 481
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->setOnDownloadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;)V

    .line 534
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->setOnUploadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;)V

    .line 579
    return-void
.end method

.method private InitNotification()V
    .locals 8

    .prologue
    const/high16 v7, 0x20000000

    const/16 v6, 0x14

    const/high16 v5, 0x8000000

    const/4 v4, 0x1

    .line 458
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 459
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;

    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Cloud open detail key"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 464
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04007e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadRemoteViews:Landroid/widget/RemoteViews;

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadRemoteViews:Landroid/widget/RemoteViews;

    const v1, 0x7f100330

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Cloud send stop upload action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadRemoteViews:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 469
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Cloud open detail key"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 474
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04007d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadRemoteViews:Landroid/widget/RemoteViews;

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadRemoteViews:Landroid/widget/RemoteViews;

    const v1, 0x7f10032b

    new-instance v2, Landroid/content/Intent;

    const-string v3, "Cloud send stop download action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadRemoteViews:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 477
    return-void
.end method

.method private InitReceiver()V
    .locals 3

    .prologue
    .line 440
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v0, "intFilter":Landroid/content/IntentFilter;
    const-string v1, "Cloud send create download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v1, "Cloud send pause download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v1, "Cloud send resume download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "Cloud send stop download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "Cloud send hide download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "Cloud send show download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "Cloud send create upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "Cloud send pause upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "Cloud send resume upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "Cloud send stop upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "Cloud send show upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "Cloud send hide upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitNotification()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mUpLoadNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_upload:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_upload:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_upload:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_upload:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->upload_time:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->upload_time:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowDownload:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mDownLoadNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_download:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_download:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_download:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_download:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->download_time:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->download_time:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mShowUpload:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_download:Ljava/lang/CharSequence;

    .line 422
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_download:Ljava/lang/CharSequence;

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_download:Ljava/lang/CharSequence;

    .line 424
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f024d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_download:Ljava/lang/CharSequence;

    .line 425
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_start_upload:Ljava/lang/CharSequence;

    .line 426
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_over_upload:Ljava/lang/CharSequence;

    .line 427
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_load_upload:Ljava/lang/CharSequence;

    .line 428
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_fail_upload:Ljava/lang/CharSequence;

    .line 429
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_no_picture:Ljava/lang/CharSequence;

    .line 430
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    if-nez v0, :cond_0

    .line 431
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitReceiver()V

    .line 434
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitNotification()V

    .line 435
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitModelListener()V

    .line 436
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 437
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x270e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 628
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 632
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mActionReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;

    .line 634
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 635
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 585
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "Cloud is upload or is download key"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 586
    .local v8, "key":I
    const/16 v11, 0x11

    if-ne v8, v11, :cond_4

    .line 587
    const-string v11, "Cloud upload list or download list key"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 588
    .local v0, "album_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    const/4 v5, 0x0

    .line 589
    .local v5, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 590
    .local v2, "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v11

    add-int/2addr v5, v11

    .line 591
    goto :goto_0

    .line 592
    .end local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    :cond_0
    const/4 v11, 0x1

    if-ge v5, v11, :cond_2

    .line 593
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->char_no_picture:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "album_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "count":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":I
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v11

    return v11

    .line 595
    .restart local v0    # "album_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "count":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "key":I
    :cond_2
    const/4 v11, 0x0

    :try_start_1
    sput-boolean v11, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedDownload:Z

    .line 596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    .line 597
    .restart local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmPhotosCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    .line 598
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v11

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->download(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 615
    .end local v0    # "album_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cloudAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    .end local v5    # "count":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":I
    :catch_0
    move-exception v6

    .line 616
    .local v6, "e":Ljava/lang/Exception;
    const-string v11, "WYJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CloudUpAndDownService e = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "key":I
    :cond_4
    const/16 v11, 0x12

    if-ne v8, v11, :cond_5

    .line 603
    :try_start_2
    sget-object v10, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSelectedPhotoList:Ljava/util/List;

    .line 604
    .local v10, "photo_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedDownload:Z

    .line 605
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 606
    .local v4, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->download(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    goto :goto_3

    .line 608
    .end local v4    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "photo_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :cond_5
    const/16 v11, 0x13

    if-ne v8, v11, :cond_1

    .line 609
    const-string v11, "Cloud upload list or download list key"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 610
    .local v9, "path_list":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mFinishedUpload:Z

    .line 611
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 612
    .local v3, "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->upload(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method
