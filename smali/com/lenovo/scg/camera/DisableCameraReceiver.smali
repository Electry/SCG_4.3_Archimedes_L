.class public Lcom/lenovo/scg/camera/DisableCameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableCameraReceiver.java"


# static fields
.field private static final ACTIVITIES:[Ljava/lang/String;

.field private static final CHECK_BACK_CAMERA_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "DisableCameraReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lenovo.scg.camera.CameraLauncher"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "klass"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .local v0, "name":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 81
    return-void
.end method

.method private hasBackCamera()Z
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 62
    .local v2, "n":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 63
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 64
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 65
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 66
    const-string v3, "DisableCameraReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "back camera found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v3, 0x1

    .line 71
    :goto_1
    return v3

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "DisableCameraReceiver"

    const-string/jumbo v4, "no back camera"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasCamera()Z
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 56
    .local v0, "n":I
    const-string v1, "DisableCameraReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number of camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/camera/DisableCameraReceiver;->hasBackCamera()Z

    move-result v1

    .line 43
    .local v1, "needCameraActivity":Z
    if-nez v1, :cond_0

    .line 44
    const-string v2, "DisableCameraReceiver"

    const-string v3, "disable all camera activities"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lenovo/scg/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 46
    sget-object v2, Lcom/lenovo/scg/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/lenovo/scg/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    const-string v2, "com.lenovo.scg.camera.DisableCameraReceiver"

    invoke-direct {p0, p1, v2}, Lcom/lenovo/scg/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method
