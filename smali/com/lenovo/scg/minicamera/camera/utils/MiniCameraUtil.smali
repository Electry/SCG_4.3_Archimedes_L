.class public Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;
.super Ljava/lang/Object;
.source "MiniCameraUtil.java"


# static fields
.field private static final ALIPAY_APK_NEW_VERSION:I = 0x2

.field public static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.mobile.scanx"

.field private static final ASSET_APK_NAME:Ljava/lang/String; = "alipayscan.apk"

.field private static final ASSET_APK_TO_PATH:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final INTENT_ACTION_START_MINICAMERA:Ljava/lang/String; = "com.lenovo.scg.minicamera.qrcode.start"

.field public static final INTENT_ACTION_START_MINICAMERA_BARCODE:Ljava/lang/String; = "com.lenovo.scg.minicamera.barcode.start"

.field public static final KEY_AUTO_FOCUS:Ljava/lang/String; = "preferences_auto_focus"

.field public static final KEY_DISABLE_CONTINUOUS_FOCUS:Ljava/lang/String; = "preferences_disable_continuous_focus"

.field public static final NEW_PHOTO_DIR_PATH:Ljava/lang/String;

.field public static final SHOW_BOOT_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "MiniCameraUtil"

.field private static mTypeface:Landroid/graphics/Typeface;

.field private static sCameraBootEndTime:J

.field private static sCameraBootStartTime:J


# instance fields
.field private clazz:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alipayscan.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->rootInstallApp(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method public static addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "croppedPhotoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 295
    const-string v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const-string/jumbo v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string/jumbo v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method public static addShortcut(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, "shortcut":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v2, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {v2, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 779
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 781
    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 782
    .local v0, "iconRes":Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 785
    return-void
.end method

.method public static canSilentIntall(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 741
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkSystemPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkInstallPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x1

    .line 744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkInstallPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 767
    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 769
    .local v0, "result":Z
    :goto_0
    return v0

    .line 767
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 150
    :cond_0
    return-object p0
.end method

.method public static checkRootSystem(Landroid/content/Context;ZZZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sync"    # Z
    .param p2, "needInstall"    # Z
    .param p3, "reInstall"    # Z

    .prologue
    .line 635
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkInstallPermission(Landroid/content/Context;)Z

    move-result v2

    .line 636
    .local v2, "haveInstallpremission":Z
    const-string v5, "MiniCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkRootSystem, haveInstallpackagepremission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez v2, :cond_1

    .line 639
    const-string v5, "MiniCameraUtil"

    const-string v6, "checkRootSystem, start normal install."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz p2, :cond_0

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->installApp(Landroid/content/Context;Landroid/net/Uri;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkSystemPermission(Landroid/content/Context;)Z

    move-result v3

    .line 647
    .local v3, "haveSystemPermission":Z
    const-string v5, "MiniCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkRootSystem, haveSystemPermission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz v3, :cond_2

    .line 650
    const-string v5, "MiniCameraUtil"

    const-string v6, "checkRootSystem, have System Permission, start slient install!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p2, :cond_0

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5, p3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->rootInstallApp(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 656
    :cond_2
    const-string v5, "MiniCameraUtil"

    const-string v6, "checkRootSystem, have no System Permission, try to root!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {p0}, Lledroid/nac/ShellCommand;->getNacShellCommandInstance(Landroid/content/Context;)Lledroid/nac/ShellCommand;

    move-result-object v4

    .line 661
    .local v4, "nac":Lledroid/nac/ShellCommand;
    const-string v5, "MiniCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkRootSystem, nac = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-eqz v4, :cond_4

    .line 663
    new-instance v5, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;

    invoke-direct {v5, p2, p0, p3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;-><init>(ZLandroid/content/Context;Z)V

    invoke-virtual {v4, v5}, Lledroid/nac/ShellCommand;->setResponseCallBack(Lledroid/nac/ShellCommand$ShellCommandResponse;)V

    .line 703
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "ps nac_server"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ls -l /system/bin/nac_server"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ls -l /data/"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lledroid/nac/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/nac/ShellCommand;

    .line 704
    if-eqz p1, :cond_3

    .line 705
    invoke-virtual {v4}, Lledroid/nac/ShellCommand;->syncExec()Lledroid/nac/ShellCommand;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 707
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lledroid/nac/ShellCommand;->exec()Lledroid/nac/ShellCommand;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lledroid/nac/ShellCommand;->waitResponse(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 713
    :cond_4
    const-string v5, "MiniCameraUtil"

    const-string v6, "checkRootSystem, Cannot get root permision, start normal installapp"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz p2, :cond_5

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->installApp(Landroid/content/Context;Landroid/net/Uri;)V

    .line 720
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/bin"

    const-string/jumbo v6, "nac_server"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 722
    const-string v5, "MiniCameraUtil"

    const-string v6, "=> System tools exist."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 725
    :cond_6
    const-string v5, "MiniCameraUtil"

    const-string v6, "=> System tools doesn\'t exist."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static checkSystemPermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    const/4 v3, 0x0

    .line 750
    .local v3, "packageinfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 751
    .local v4, "packagemanager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "packName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 754
    .local v5, "result":Z
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 758
    :goto_0
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 759
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 760
    const/4 v5, 0x1

    .line 763
    :cond_0
    return v5

    .line 755
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 127
    if-le p0, p2, :cond_0

    .line 129
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 128
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 129
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "updateapk"    # Z

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, "copyIsFinish":Z
    :try_start_0
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish00000000000000"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "file":Ljava/io/File;
    if-nez p3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 435
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish, file is exist, update is false, not copy, return!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p0, p2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 437
    .local v9, "versionCode":I
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getAlipayApkVersion()I

    move-result v7

    .line 438
    .local v7, "newVersioncode":I
    const-string v10, "MiniCameraUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyIsFinish, file is exist, update is false, versionCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newVersioncode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-ge v9, v7, :cond_2

    .line 440
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish, file is exist, update is false, but versioncode is smaller, file delete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 450
    .end local v7    # "newVersioncode":I
    .end local v9    # "versionCode":I
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 451
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish, file is exist\uff0c update is true, delete old apk!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 455
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 456
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish11111111111111"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 458
    .local v6, "is":Ljava/io/InputStream;
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish22222222222222"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 460
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v8, v10, [B

    .line 461
    .local v8, "temp":[B
    const/4 v5, 0x0

    .line 462
    .local v5, "i":I
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    .line 463
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "temp":[B
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 472
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    const-string v10, "MiniCameraUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyIsFinish = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 473
    .end local v0    # "copyIsFinish":Z
    .local v1, "copyIsFinish":I
    :goto_2
    return v1

    .line 444
    .end local v1    # "copyIsFinish":I
    .restart local v0    # "copyIsFinish":Z
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "newVersioncode":I
    .restart local v9    # "versionCode":I
    :cond_2
    :try_start_1
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish, file is exist, update is false, not copy, return!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x1

    move v1, v0

    .line 446
    .restart local v1    # "copyIsFinish":I
    goto :goto_2

    .line 465
    .end local v1    # "copyIsFinish":I
    .end local v7    # "newVersioncode":I
    .end local v9    # "versionCode":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "temp":[B
    :cond_3
    const-string v10, "MiniCameraUtil"

    const-string v11, "copyIsFinish33333333333333"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 467
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static delShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "shortcut":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v1, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 793
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 795
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 796
    return-void
.end method

.method public static varargs findSettableStringValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "MiniCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supported values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 161
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 162
    .local v1, "desiredValue":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    move-object v4, v1

    .line 168
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "desiredValue":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v5, "MiniCameraUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settable value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v4

    .line 161
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "desiredValue":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getAlipayApkVersion()I
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x2

    return v0
.end method

.method public static getBestSupportImageFormat(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/16 v0, 0x100

    const/16 v2, 0x11

    const/4 v1, 0x4

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCameraBootTime()J
    .locals 4

    .prologue
    .line 268
    sget-wide v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootEndTime:J

    sget-wide v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCameraDisplayOrientation(Landroid/app/Activity;I)I
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I

    .prologue
    .line 218
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 220
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 222
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 223
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 238
    :goto_0
    const-string v4, "MiniCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCameraDisplayOrientation, rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", degrees="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 242
    const-string v4, "MiniCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCameraDisplayOrientation, facing is CAMERA_FACING_FRONT, info.orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 244
    .local v2, "result":I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 250
    :goto_1
    const-string v4, "MiniCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCameraDisplayOrientation, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v2

    .line 225
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 226
    goto :goto_0

    .line 228
    :pswitch_1
    const/16 v0, 0x5a

    .line 229
    goto :goto_0

    .line 231
    :pswitch_2
    const/16 v0, 0xb4

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 246
    :cond_0
    const-string v4, "MiniCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCameraDisplayOrientation, facing is CAMERA_FACING_BACK, info.orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "result":I
    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCropPhotoDataIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromPhotoFileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lenovo.intent.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "crop"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    return-object v0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 203
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    return v1

    .line 207
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 209
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 211
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v1, ""

    .line 499
    .local v1, "pName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 500
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 501
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 504
    :cond_0
    const-string v3, "MiniCameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageName, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v1
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "code":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 512
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 514
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 515
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 519
    :goto_0
    const-string v3, "MiniCameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageVersionCode, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", versionCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return v0

    .line 517
    :cond_0
    const-string v3, "MiniCameraUtil"

    const-string v4, "getPackageVersionCode, info = null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initTypeface(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    if-nez p0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 526
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "language":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_4

    if-eqz p0, :cond_4

    .line 528
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/FZY1JF.TTF"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 531
    :cond_3
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 535
    :cond_4
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 536
    :cond_5
    sget-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v2, v3, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/FZY1JF.TTF"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 540
    :cond_6
    sget-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v2, v3, :cond_0

    .line 541
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static installAlipayFromAssets(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 388
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAppFromAsset, toPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v2, "com.alipay.mobile.scanx"

    invoke-static {p0, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 393
    .local v1, "versionCode":I
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAppFromAsset, alipay apk versionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 395
    const-string v2, "MiniCameraUtil"

    const-string v3, "installAppFromAsset, packageName = com.alipay.mobile.scanx, to install."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "alipayscan.apk"

    sget-object v3, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-static {p0, v2, v3, v6}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAppFromAsset, installapp, toPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p0, v5, v5, v6}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkRootSystem(Landroid/content/Context;ZZZ)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getAlipayApkVersion()I

    move-result v0

    .line 404
    .local v0, "newVersioncode":I
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAppFromAsset, packageName = com.alipay.mobile.scanx, is installed. newVersioncode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-ge v1, v0, :cond_0

    .line 406
    const-string v2, "MiniCameraUtil"

    const-string v3, "installAppFromAsset, need update!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v2, "alipayscan.apk"

    sget-object v3, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-static {p0, v2, v3, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAppFromAsset, udpate, installapp, toPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p0, v5, v5, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkRootSystem(Landroid/content/Context;ZZZ)V

    goto :goto_0
.end method

.method public static installApp(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Landroid/net/Uri;

    .prologue
    .line 365
    const-string v3, "MiniCameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "normal, installApp, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v2, "application/vnd.android.package-archive"

    .line 371
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    :goto_0
    return v2

    .line 482
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 488
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v1, :cond_1

    .line 489
    const-string v3, "MiniCameraUtil"

    const-string v4, "isAppInstalled, alipayscan.apk is not installed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 486
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 492
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "MiniCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppInstalled, alipayscan.apk is installed!! versionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShortcutInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 800
    const/4 v8, 0x0

    .line 802
    .local v8, "isInstalled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "com.android.launcher.settings"

    .line 804
    .local v6, "AUTHORITY":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/favorites?notify=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 805
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v2, v5

    const-string v3, "iconResource"

    aput-object v3, v2, v4

    const-string/jumbo v3, "title=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 806
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 807
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    const/4 v8, 0x1

    .line 810
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_1
    return v8
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 154
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;,
            Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraDisabledException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v1, "MiniCameraUtil"

    const-string/jumbo v2, "openCamera."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->open(I)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHardwareException;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "openCamera failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :cond_0
    throw v0
.end method

.method public static pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "delete"    # Z

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v1, "f":Ljava/io/File;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const-string v2, "MiniCameraUtil"

    const-string v3, "background file is exist, delete it!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 316
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "MiniCameraUtil"

    const-string v3, "File is exist, delete it!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 331
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 112
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 115
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 116
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    return-void

    :cond_0
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 122
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 123
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 124
    return-void
.end method

.method private static rootInstallApp(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "reInstall"    # Z

    .prologue
    .line 556
    const-string v1, "MiniCameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rootInstallApp, start slient install, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reInstall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;

    invoke-direct {v0}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;-><init>()V

    .line 561
    .local v0, "pmHelper":Lcom/lenovo/leexinterface/SCGPackageManagerHelper;
    if-eqz p2, :cond_0

    .line 562
    const-string v1, "com.alipay.mobile.scanx"

    invoke-virtual {v0, p0, p1, v1}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;->reInstallPackage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    const-string v1, "com.alipay.mobile.scanx"

    invoke-virtual {v0, p0, p1, v1}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;->installPackage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "sFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 336
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return v4

    .line 340
    :cond_0
    const/4 v2, 0x0

    .line 343
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 350
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 346
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 346
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setCameraBootEndTime()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootEndTime:J

    .line 263
    const-string v0, "MiniCameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStartTime, sCameraBootEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public static setCameraBootStartTime()V
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootStartTime:J

    .line 257
    const-string v0, "MiniCameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStartTime, sCameraBootStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->sCameraBootStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public static setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mView"    # Landroid/widget/TextView;

    .prologue
    .line 548
    invoke-static {p0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->initTypeface(Landroid/content/Context;)V

    .line 549
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 552
    :cond_0
    return-void
.end method
