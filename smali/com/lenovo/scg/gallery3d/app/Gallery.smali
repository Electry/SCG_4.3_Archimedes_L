.class public final Lcom/lenovo/scg/gallery3d/app/Gallery;
.super Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_RECODER:Ljava/lang/String; = "com.lenovo.scg.action.video"

.field public static final ACTION_FILTER_ALBUM:Ljava/lang/String; = "com.lenovo.scg.FILTERALBUM"

.field public static final ACTION_GET_ALBUM:Ljava/lang/String; = "com.lenovo.scg.GETALBUM"

.field public static final ACTION_MULTI_PHOTO:Ljava/lang/String; = "com.lenovo.scg.action.multi.photo"

.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final CLOUD_GUIDE_SHOW:I = 0x2

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field private static final FIRST_INIT:Ljava/lang/String; = "FIRST_INIT"

.field private static final FIRST_INIT_CLOUD:Ljava/lang/String; = "FIRST_INIT_CLOUD"

.field public static final KEY_ACTION_VIEW:Ljava/lang/String; = "action-view"

.field public static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "dismiss-keyguard"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field public static final K_MULTI_PHOTO:Ljava/lang/String; = "get-multi-photo"

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field public static final USER_GUIDE_SHOW:I = 0x1


# instance fields
.field private firstPressTime:J

.field private mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

.field private mExitCounter:I

.field private mIsFirstInit:Z

.field private mIsRecordVideo:Z

.field private mLeGaVersionCheckDialog:Landroid/app/Dialog;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStatusBarUnify:Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

.field private mVersionCheckDialog:Landroid/app/Dialog;

.field private mbStartScreenShot:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsRecordVideo:Z

    .line 130
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    .line 139
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mExitCounter:I

    .line 142
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    .line 152
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mbStartScreenShot:Z

    .line 157
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStatusBarUnify:Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

    .line 921
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->firstPressTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/Gallery;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/Gallery;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/Gallery;)Lcom/lenovo/scg/common/ui/DetectDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/Gallery;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    return-object v0
.end method

.method private addCloudGuideView(Z)V
    .locals 2
    .param p1, "isFirstInit"    # Z

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/app/CloudGuideMainView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1071
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FIRST_INIT_SHOW_CLOUD_GUIDE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1073
    return-void
.end method

.method private addUserGuideView(Z)V
    .locals 0
    .param p1, "isFirstInit"    # Z

    .prologue
    .line 1067
    return-void
.end method

.method private checkLeGaJIVersion()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method private checkLeGaVersion()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x1

    return v0
.end method

.method private getContentMediaUriByContentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1206
    move-object v12, p1

    .line 1207
    .local v12, "value":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1209
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1210
    .local v8, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1211
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1213
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get downlaod image file path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    if-eqz v6, :cond_0

    .line 1236
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1240
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 1217
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1219
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const-string v3, "_data=(?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1221
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1222
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1223
    .local v10, "id":J
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1224
    .local v9, "imagesUri":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1225
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1235
    .end local v9    # "imagesUri":Ljava/lang/String;
    .end local v10    # "id":J
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 1236
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    move-object p1, v12

    .line 1240
    goto :goto_0

    .line 1227
    :cond_4
    :try_start_4
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:fail to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1231
    :catch_0
    move-exception v7

    .line 1232
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "Gallery"

    const-string v1, "getContentMeidiaUirByContentDownloadUri exception "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1235
    if-eqz v6, :cond_3

    .line 1236
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1238
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1234
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1235
    if-eqz v6, :cond_5

    .line 1236
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1238
    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 657
    const-string v3, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "image/jpeg"

    .line 665
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 660
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 662
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Gallery"

    const-string v4, "get type fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeByIntent()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 466
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "action":Ljava/lang/String;
    const-string v7, "Gallery"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initializeByIntent, action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 471
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 472
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    .line 473
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStartByThirdApp:Z

    .line 562
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.lenovo.scg.intent.action.PICK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 481
    :cond_1
    const-string v7, "Gallery"

    const-string v10, "action PICK is not supported"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v7, "vnd.android.cursor.dir/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 484
    const-string v7, "/image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "image/*"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    :cond_2
    const-string v7, "/video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "video/*"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :cond_3
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    .line 489
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    .line 492
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStartByThirdApp:Z

    goto :goto_0

    .line 494
    .end local v6    # "type":Ljava/lang/String;
    :cond_4
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.android.camera.action.REVIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "lenovo.intent.action.SuperGallery"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 499
    :cond_5
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    .line 501
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    goto :goto_0

    .line 505
    :cond_6
    const-string v7, "com.lenovo.scg.GETALBUM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 506
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startGetAlbum(Landroid/content/Intent;)V

    .line 507
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    goto :goto_0

    .line 511
    :cond_7
    const-string v7, "com.lenovo.scg.action.video"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 512
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    .line 513
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startPhotopage(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 517
    :cond_8
    const-string v7, "com.lenovo.scg.FILTERALBUM"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 518
    const-string v7, "Gallery"

    const-string v9, "get the action ACTION_FILTER_ALBUM"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showFolderFilterViewFromSetting(Z)V

    goto/16 :goto_0

    .line 525
    :cond_9
    const-string v7, "lenovo.intent.action.START_SCREENSHOT_FOLDER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 528
    const/4 v3, 0x0

    .line 529
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 530
    const-string/jumbo v7, "media-path"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/local/all/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "dirPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v7, "media-path"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v10, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v4

    .line 542
    .local v4, "inAlbum":Z
    const-string v10, "cluster-menu"

    if-nez v4, :cond_b

    move v7, v8

    :goto_1
    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    const-string/jumbo v7, "parent-media-path"

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mbStartScreenShot:Z

    .line 547
    const-string/jumbo v7, "start-screen-shot-folder"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    const-class v8, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v7, v8, v9, v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    move v7, v9

    .line 542
    goto :goto_1

    .line 552
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "dirPath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "inAlbum":Z
    :cond_c
    const-string v7, "com.lenovo.scg.action.multi.photo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 553
    const-string v7, "Gallery"

    const-string v8, "ACTION_MULTI_PHOTO"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startGetMultiPhoto(Landroid/content/Intent;)V

    .line 555
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    goto/16 :goto_0

    .line 559
    :cond_d
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test10"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0
.end method

.method private isDownloadsContent(Landroid/net/Uri;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1246
    const/4 v2, 0x0

    .line 1247
    .local v2, "flag":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 1261
    .end local v2    # "flag":Z
    .local v3, "flag":I
    :goto_0
    return v3

    .line 1251
    .end local v3    # "flag":I
    .restart local v2    # "flag":Z
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1253
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "authority":Ljava/lang/String;
    const-string v5, "downloads"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1255
    const/4 v2, 0x1

    .end local v0    # "authority":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_1
    move v3, v2

    .line 1261
    .restart local v3    # "flag":I
    goto :goto_0

    .line 1258
    .end local v3    # "flag":I
    :catch_0
    move-exception v1

    .line 1259
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Gallery"

    const-string/jumbo v6, "parse Download Content uri exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isThreePartyIntent()Z
    .locals 2

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lenovo.intent.action.SuperGallery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.scg.GETALBUM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.scg.GETALBUM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lenovo.scg.action.video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1148
    :cond_0
    const/4 v1, 0x1

    .line 1150
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDetectDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 342
    .local v6, "time1":J
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 343
    .local v3, "modelType":Ljava/lang/String;
    const-string v5, "lnliu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "modelType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v5, "Lenovo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 345
    const-string/jumbo v5, "ro.product.cpu.abi"

    const-string v10, ""

    invoke-static {v5, v10}, Lcom/lenovo/scg/gallery3d/util/SysProp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "cpuApi":Ljava/lang/String;
    const-string v5, "lnliu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cpuApi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v5, "arm"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v10, "com.lenovo.scg"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 350
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v5, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0f0a56

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "apkNativeCode":Ljava/lang/String;
    const-string v5, "lnliu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apkNativeCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 355
    .local v8, "time2":J
    const-string v5, "lnliu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time2-time1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v8, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string/jumbo v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    new-instance v5, Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 360
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Gallery$3;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$3;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 438
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v1    # "cpuApi":Ljava/lang/String;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "time2":J
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    .restart local v1    # "cpuApi":Ljava/lang/String;
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "time2":J
    :cond_1
    const-string v5, "arm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v5

    if-eq v5, v14, :cond_0

    .line 368
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0, v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->isProProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 369
    new-instance v5, Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 370
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Gallery$4;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$4;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 377
    :cond_2
    const-string v5, "lnliu"

    const-string v10, "arm - arm , success!"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "time2":J
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    const-string v5, "lnliu"

    const-string v10, "local runned, nothing to do!"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string/jumbo v5, "x86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    :try_start_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v10, "com.lenovo.scg"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 393
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v5, :cond_7

    .line 394
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0f0a56

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    const-string v5, "lnliu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apkNativeCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v5, "arm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 397
    new-instance v5, Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 398
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Gallery$5;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$5;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 423
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 425
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 405
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_3
    const-string/jumbo v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v5

    if-eq v5, v14, :cond_0

    .line 406
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0, v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->isProProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 407
    new-instance v5, Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 408
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Gallery$6;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$6;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 415
    :cond_6
    const-string v5, "lnliu"

    const-string/jumbo v10, "x86 - x86, success!"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    :cond_7
    const-string v5, "lnliu"

    const-string v10, "local runned , nothing to do!"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 428
    .end local v1    # "cpuApi":Ljava/lang/String;
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v5

    if-eq v5, v14, :cond_0

    .line 430
    new-instance v5, Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v5, v10, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 431
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Gallery$7;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$7;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    invoke-virtual {v5, v10, v13}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private startGetAlbum(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 626
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 627
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v0, "data":Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-album"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    const-string/jumbo v2, "media-path"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 631
    return-void

    .line 627
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 617
    .local v0, "data":Landroid/os/Bundle;
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 619
    .local v1, "typeBits":I
    const-string/jumbo v2, "type-bits"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    const-string/jumbo v2, "media-path"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 622
    return-void

    .line 616
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "typeBits":I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private startPhotopage(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 637
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 638
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    .local v0, "data":Landroid/os/Bundle;
    :goto_0
    const-string v4, "Path"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "path":Ljava/lang/String;
    const-string v4, "SetPath"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "setPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 643
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsRecordVideo:Z

    .line 644
    const-string v4, "is-record-video"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    const-string/jumbo v4, "media-set-path"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string/jumbo v4, "media-item-path"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v4, v5, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 650
    return-void

    .line 638
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "setPath":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 671
    const-string/jumbo v3, "slideshow"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 673
    .local v23, "slideshow":Ljava/lang/Boolean;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v17

    .line 676
    .local v17, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v20

    .line 678
    .local v20, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz v20, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 680
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v20

    .line 683
    :cond_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v12, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "media-set-path"

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string/jumbo v3, "random-order"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    const-string/jumbo v3, "repeat"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 687
    const-string v3, "dream"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 688
    const-string v3, "dream"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 690
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v3, v4, v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 834
    .end local v17    # "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v20    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_0
    return-void

    .line 693
    .end local v12    # "data":Landroid/os/Bundle;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 694
    .local v15, "extras":Landroid/os/Bundle;
    if-nez v15, :cond_4

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 696
    .restart local v12    # "data":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v13

    .line 697
    .local v13, "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 698
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, "contentType":Ljava/lang/String;
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startViewAction, contentType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-nez v11, :cond_5

    .line 703
    const v3, 0x7f0f0671

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V

    goto :goto_0

    .line 694
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v11    # "contentType":Ljava/lang/String;
    .end local v12    # "data":Landroid/os/Bundle;
    .end local v13    # "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    :cond_4
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 709
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v11    # "contentType":Ljava/lang/String;
    .restart local v12    # "data":Landroid/os/Bundle;
    .restart local v13    # "dm":Lcom/lenovo/scg/gallery3d/data/DataManager;
    :cond_5
    const-string v3, "Gallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startViewAction, uri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-nez v5, :cond_6

    .line 712
    invoke-static/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v24

    .line 713
    .local v24, "typeBits":I
    const-string v3, "action-view"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 714
    const-string/jumbo v3, "type-bits"

    move/from16 v0, v24

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    const-string/jumbo v3, "media-path"

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, v4, v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 719
    .end local v24    # "typeBits":I
    :cond_6
    const-string/jumbo v3, "vnd.android.cursor.dir"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 721
    const-string/jumbo v3, "mediaTypes"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 722
    .local v19, "mediaType":I
    if-eqz v19, :cond_7

    .line 723
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "mediaTypes"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 728
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v13, v5, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v21

    .line 729
    .local v21, "setPath":Lcom/lenovo/scg/gallery3d/data/Path;
    const/16 v18, 0x0

    .line 730
    .local v18, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v21, :cond_8

    .line 731
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v18

    .end local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    check-cast v18, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 733
    .restart local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_8
    if-eqz v18, :cond_a

    .line 734
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 735
    const-string/jumbo v3, "media-path"

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string/jumbo v3, "parent-media-path"

    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v3, v4, v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 741
    :cond_9
    const-string/jumbo v3, "media-path"

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, v4, v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 746
    :cond_a
    const-string v3, "Gallery"

    const-string/jumbo v4, "startViewAction, startDefaultPage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->startDefaultPage()V

    goto/16 :goto_0

    .line 758
    .end local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v19    # "mediaType":I
    .end local v21    # "setPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->tryContentMediaUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 763
    if-nez v5, :cond_c

    .line 764
    const v3, 0x7f0f0671

    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 824
    :catch_0
    move-exception v14

    .line 825
    .local v14, "e":Ljava/lang/NullPointerException;
    const v3, 0x7f0f0671

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V

    goto/16 :goto_0

    .line 770
    .end local v14    # "e":Ljava/lang/NullPointerException;
    :cond_c
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v5, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    .line 771
    .local v16, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v10

    .line 774
    .local v10, "albumPath":Lcom/lenovo/scg/gallery3d/data/Path;
    const-string v3, "SingleItemOnly"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 776
    .local v22, "singleItemOnly":Z
    if-nez v22, :cond_d

    if-eqz v10, :cond_d

    .line 777
    const-string/jumbo v3, "media-set-path"

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_d
    const-string/jumbo v3, "media-item-path"

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string/jumbo v3, "treat-back-as-up"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 784
    const-string/jumbo v3, "treat-back-as-up"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    :cond_e
    const-string v3, "from_widget"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 789
    const-string v3, "from_widget"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 793
    :cond_f
    const-string v3, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 794
    const-string v3, "content_image"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 800
    :cond_10
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/Gallery$8;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/app/Gallery$8;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;Landroid/content/ContentResolver;)V

    .line 818
    .local v2, "queryHandler":Landroid/content/AsyncQueryHandler;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;

    invoke-virtual {v3, v4, v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private tryContentMediaUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1157
    if-nez p1, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-object v0

    .line 1159
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 1160
    .local v11, "scheme":Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1161
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->isDownloadsContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentMediaUriByContentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1164
    goto :goto_0

    .line 1173
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1174
    .local v10, "path":Ljava/lang/String;
    const-string v1, "Gallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryContextMediaUri:for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    const/4 v6, 0x0

    .line 1183
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const-string v3, "_data=(?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1185
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1186
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1187
    .local v8, "id":J
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1188
    .local v7, "imagesUri":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1189
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    .end local v7    # "imagesUri":Ljava/lang/String;
    .end local v8    # "id":J
    :goto_1
    if-eqz v6, :cond_4

    .line 1195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1196
    const/4 v6, 0x0

    :cond_4
    move-object v0, p1

    .line 1200
    goto/16 :goto_0

    .line 1191
    :cond_5
    :try_start_1
    const-string v0, "Gallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:fail to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1194
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1196
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method private updateVersionWithSUS()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "sAction":Ljava/lang/String;
    const-string v4, "Gallery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    .line 447
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    .line 449
    :cond_0
    const/4 v1, 0x1

    .line 451
    .local v1, "isNewVersionToRemind":Z
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "NEW_VERSION_REMIND"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    new-instance v3, Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/common/utils/SCGUtils;-><init>(Landroid/content/Context;)V

    .line 457
    .local v3, "scgUtils":Lcom/lenovo/scg/common/utils/SCGUtils;
    invoke-virtual {v3, v1, v8, v7, v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->updateVersionWithSUS(ZZZI)V

    .line 460
    .end local v1    # "isNewVersionToRemind":Z
    .end local v3    # "scgUtils":Lcom/lenovo/scg/common/utils/SCGUtils;
    :cond_1
    return-void

    .line 452
    .restart local v1    # "isNewVersionToRemind":Z
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "updateVersionWithSUS error:%s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0xc8

    .line 1078
    packed-switch p1, :pswitch_data_0

    .line 1120
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1121
    return-void

    .line 1080
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 1082
    :pswitch_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isUserGuideShowWeibo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/Gallery$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$9;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1098
    :pswitch_2
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 1099
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/Gallery$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$10;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1080
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 926
    iget-boolean v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mbStartScreenShot:Z

    if-eqz v12, :cond_0

    .line 927
    iput-boolean v11, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mbStartScreenShot:Z

    .line 928
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V

    .line 930
    const-string/jumbo v10, "mbStartScreenShot, Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1039
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-boolean v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mFolderFilterViewFromSetting:Z

    if-nez v12, :cond_1

    iget-boolean v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mFolderFilterViewFromMain:Z

    if-eqz v12, :cond_2

    .line 938
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->clickFolderFilterCancelButton()V

    .line 939
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFolderFilterViewFromSetting || mFolderFilterViewFromMain, Gallery onBackPressed will return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mFolderFilterViewFromMain:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->isGoldBoxVisible()Z

    move-result v12

    if-ne v12, v10, :cond_3

    .line 946
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->onBackPressedToGoldBoxView()V

    .line 948
    const-string v10, "isGoldBoxVisible() == true, Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_3
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v12, :cond_4

    .line 954
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->hideGroupMenu()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 956
    const-string v10, "mWeiboList.hideGroupMenu(), Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->isTimeTagListViewVisible()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 963
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->removeLocalTimeTagListView()V

    .line 965
    const-string v10, "Gallery"

    const-string v11, "isTimeTagListViewVisible = true, Gallery onBackPressed will return"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v10, "isTimeTagListViewVisible = true, Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getPhotoPageInstance()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 972
    .local v9, "photoPage":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getAlbumSetPageInstance()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    .line 973
    .local v2, "albumSetPage":Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    const/4 v8, 0x0

    .line 974
    .local v8, "isShowPanoView":Z
    const/4 v6, 0x0

    .line 975
    .local v6, "isLeftPanelShow":Z
    const/4 v7, 0x0

    .line 976
    .local v7, "isPhotoPageStartFromOtherApp":Z
    const/4 v4, 0x0

    .line 977
    .local v4, "isAlbumSetPageGetContent":Z
    const/4 v3, 0x0

    .line 978
    .local v3, "isAlbumSetPageGetAlbum":Z
    const/4 v5, 0x0

    .line 980
    .local v5, "isAlbumSetPageGetMultiContent":Z
    iget-boolean v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsRecordVideo:Z

    if-eqz v12, :cond_6

    .line 981
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 989
    :cond_6
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    if-eqz v12, :cond_7

    .line 990
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mSlidingDrawer:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->isClosed()Z

    move-result v12

    if-nez v12, :cond_c

    move v6, v10

    .line 994
    :cond_7
    :goto_1
    if-eqz v9, :cond_8

    .line 995
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isOpenFromOtherApp()Z

    move-result v7

    .line 998
    :cond_8
    if-eqz v2, :cond_9

    .line 999
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->isGetContent()Z

    move-result v4

    .line 1000
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->isGetAlbum()Z

    move-result v3

    .line 1001
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->isGetMultiContent()Z

    move-result v5

    .line 1004
    :cond_9
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v1

    .line 1005
    .local v1, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    .line 1006
    .local v0, "StateCount":I
    if-eq v0, v10, :cond_a

    instance-of v10, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    if-nez v10, :cond_a

    instance-of v10, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    if-eqz v10, :cond_d

    :cond_a
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->inSelectAllMode()Z

    move-result v10

    if-nez v10, :cond_d

    if-nez v8, :cond_d

    if-nez v6, :cond_d

    if-nez v7, :cond_d

    if-nez v4, :cond_d

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    instance-of v10, v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-nez v10, :cond_d

    .line 1009
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/StateManager;->isHasSwitch()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1010
    iput v11, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mExitCounter:I

    .line 1011
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/StateManager;->setHasSwitch(Z)V

    .line 1023
    :cond_b
    iput-boolean v11, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStartByThirdApp:Z

    .line 1025
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->onPause()V

    .line 1026
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V

    .line 1029
    const-string/jumbo v10, "ok  , moveTaskToBack(false), Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "StateCount":I
    .end local v1    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_c
    move v6, v11

    .line 990
    goto :goto_1

    .line 1033
    .restart local v0    # "StateCount":I
    .restart local v1    # "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_d
    iput v11, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mExitCounter:I

    .line 1034
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    .line 1037
    const-string v10, "else, super.onBackPressed(), Gallery onBackPressed will return"

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 918
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0f0899

    const/4 v9, 0x0

    .line 163
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "l1":J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->initConfig(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    new-instance v8, Lcom/lenovo/scg/gallery3d/app/Gallery$1;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$1;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->setOnPersonCenterToggleListener(Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;)V

    .line 208
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mSettingFilterDB:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;

    .line 221
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/app/Gallery;->requestWindowFeature(I)Z

    .line 223
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStatusBarUnify:Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

    .line 224
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStatusBarUnify:Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

    if-eqz v7, :cond_0

    .line 225
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mStatusBarUnify:Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;

    invoke-virtual {v7, p0}, Lcom/lenovo/scg/gallery3d/util/StatusBarUnify;->setStatusBarUnify(Landroid/app/Activity;)V

    .line 229
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    .line 231
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "dismiss-keyguard"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 239
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->initSettings()V

    .line 241
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const v7, 0x7f0400f6

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/app/Gallery;->setContentView(I)V

    .line 243
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->initGalleryView()V

    .line 246
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->setGalleryFlag()V

    .line 252
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 256
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->getInstance()Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->init(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->initCameraBucketId(Landroid/content/Context;)V

    .line 261
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test4"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p1, :cond_9

    .line 263
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->restoreFromState(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showMainMenu(Z)V

    .line 269
    const-string v7, "enter here,if default is landscape or portraint ,will restart"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDefaultPage()I

    .line 275
    :goto_0
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate test5"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->checkLeGaVersion()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->checkLeGaJIVersion()Z

    move-result v7

    if-nez v7, :cond_6

    .line 278
    :cond_2
    const-string v6, ""

    .line 279
    .local v6, "title":Ljava/lang/String;
    const-string v1, ""

    .line 280
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->checkLeGaVersion()Z

    move-result v7

    if-nez v7, :cond_3

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f0896

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f0897

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getConfigCLeGaVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->checkLeGaJIVersion()Z

    move-result v7

    if-nez v7, :cond_5

    .line 288
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f089a

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f089b

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getConfigCLeGaJIVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0f0653

    new-instance v9, Lcom/lenovo/scg/gallery3d/app/Gallery$2;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/app/Gallery$2;-><init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    .line 312
    .end local v1    # "message":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getIsBGDataEnable()Z

    move-result v0

    .line 313
    .local v0, "isBGDataEnable":Z
    const-string v7, "Gallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBGDataEnable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isSUSupdateSupported()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isCarrieroperatorDemanded()Z

    move-result v7

    if-nez v7, :cond_7

    .line 317
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->updateVersionWithSUS()V

    .line 322
    :cond_7
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->initSignType(Landroid/content/Context;)V

    .line 325
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v7

    if-nez v7, :cond_8

    .line 326
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showDetectDialog()V

    .line 329
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 330
    .local v4, "l2":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gallery.onCreate cost time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v7, "wwf5"

    const-string/jumbo v8, "onCreate end"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 273
    .end local v0    # "isBGDataEnable":Z
    .end local v4    # "l2":J
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->initializeByIntent()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1269
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 1271
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPsCenterUnloginLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100715

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1274
    .local v3, "llUnlogin":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1275
    .local v1, "bmpBkg":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 1276
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1277
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1283
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPsCenterLoginedLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100703

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1284
    .local v2, "llLogin":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "bmpBkg":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1285
    .restart local v1    # "bmpBkg":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 1286
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1287
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1288
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1293
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 1294
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 1296
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->finish()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    .line 1126
    .local v9, "isTouchPad":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v10

    .line 1128
    .local v10, "maxX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v11

    .line 1129
    .local v11, "maxY":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1130
    .local v8, "decor":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v12, v0, v10

    .line 1131
    .local v12, "scaleX":F
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v13, v0, v11

    .line 1132
    .local v13, "scaleY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float v5, v0, v12

    .line 1134
    .local v5, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    mul-float v6, v0, v13

    .line 1136
    .local v6, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 1137
    .local v14, "touchEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v14}, Lcom/lenovo/scg/gallery3d/app/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1139
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v8    # "decor":Landroid/view/View;
    .end local v10    # "maxX":F
    .end local v11    # "maxY":F
    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    .end local v14    # "touchEvent":Landroid/view/MotionEvent;
    :goto_1
    return v0

    .line 1125
    .end local v9    # "isTouchPad":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1139
    .restart local v9    # "isTouchPad":Z
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 899
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 900
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 904
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->getInstance()Lcom/lenovo/scg/gallery3d/ui/BackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BackgroundView;->destory()V

    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 911
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 839
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 841
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->isThreePartyIntent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 842
    sput-boolean v7, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mLaunchGalleryFromExternal:Z

    .line 849
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isWeiboSupported()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mLaunchGalleryFromExternal:Z

    if-nez v1, :cond_1

    .line 850
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showManual(Z)V

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 855
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 858
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 859
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 863
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isGalleryUserGuideSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 864
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 865
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "FIRST_INIT_CLOUD"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    .line 870
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->isThreePartyIntent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 895
    :cond_4
    :goto_2
    return-void

    .line 844
    :cond_5
    sput-boolean v6, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mLaunchGalleryFromExternal:Z

    .line 845
    invoke-static {p0}, Lcom/lenovo/scg/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 846
    const v1, 0x7f0f095a

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 867
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "FIRST_INIT"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    goto :goto_1

    .line 874
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "show_new_feature"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 875
    .local v0, "isReplay":Z
    const-string v1, "jiaxiaowei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gallery---------addUserGuideView  mIsFirstInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isReplay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    if-nez v1, :cond_8

    if-eqz v0, :cond_4

    .line 877
    :cond_8
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 878
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->addCloudGuideView(Z)V

    .line 882
    :goto_3
    if-eqz v0, :cond_9

    .line 883
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_new_feature"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    :cond_9
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 886
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FIRST_INIT_CLOUD"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 880
    :cond_a
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mIsFirstInit:Z

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/app/Gallery;->addUserGuideView(Z)V

    goto :goto_3

    .line 888
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FIRST_INIT"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2
.end method

.method public startDefaultPage()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 581
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "FIRST_INIT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/Gallery;->showManual(Z)V

    .line 584
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->showSignInReminder(Landroid/app/Activity;)V

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDefaultPage()I

    move-result v1

    .line 587
    .local v1, "nDefaultPage":I
    const-string v2, "enter startDefaultPage,default page is: %d "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    packed-switch v1, :pswitch_data_0

    .line 608
    :goto_0
    :pswitch_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    .line 609
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 613
    :cond_1
    return-void

    .line 597
    :pswitch_1
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/time"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 602
    :pswitch_2
    const-string/jumbo v2, "media-path"

    const-string v3, "/local/all"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 604
    const v2, 0x7f10084b

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/Gallery;->updateMenuItem(I)V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
