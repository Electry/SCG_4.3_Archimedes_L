.class public Lcom/lenovo/scg/camera/CameraISP;
.super Ljava/lang/Object;
.source "CameraISP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraISP$1;,
        Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;,
        Lcom/lenovo/scg/camera/CameraISP$onISPListener;
    }
.end annotation


# static fields
.field private static final EXP_THRES_FLASH:F = 412.0f

.field private static final TAG:Ljava/lang/String; = "CameraISP"

.field private static sInstance:Lcom/lenovo/scg/camera/CameraISP;


# instance fields
.field private mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;

.field private mQ3aDataCallback:Ljava/lang/Object;

.field private mbEnableISP:Z

.field private mbFlashOnFlag:Z

.field private mbRuning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/CameraISP;->sInstance:Lcom/lenovo/scg/camera/CameraISP;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraISP;->mQ3aDataCallback:Ljava/lang/Object;

    .line 25
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    .line 27
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbEnableISP:Z

    .line 28
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbFlashOnFlag:Z

    .line 39
    const-string v0, "CameraISP"

    const-string v1, "CameraISP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method private OnQ3aDataCallback([B)Z
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    const-string v6, "CameraISP"

    const-string v7, "OnQ3aDataCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v4

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 110
    .local v2, "cameraISP":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "ISPtemp":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v6, v1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_0

    .line 115
    const/4 v6, 0x5

    aget-object v6, v1, v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "ISPData":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 120
    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 121
    .local v3, "fLux":F
    const/high16 v6, 0x43ce0000    # 412.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    .line 122
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/CameraISP;->mbFlashOnFlag:Z

    :goto_1
    move v4, v5

    .line 127
    goto :goto_0

    .line 124
    :cond_2
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/CameraISP;->mbFlashOnFlag:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/CameraISP;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraISP;
    .param p1, "x1"    # [B

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/CameraISP;->OnQ3aDataCallback([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/CameraISP;)Lcom/lenovo/scg/camera/CameraISP$onISPListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraISP;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    return-object v0
.end method

.method private enableISPDataCallback(Z)Z
    .locals 11
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "bRet":Z
    iget-object v8, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v8, :cond_0

    .line 199
    const-string v7, "CameraISP"

    const-string v8, "enableISPDataCallback mCamera is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 235
    :goto_0
    return v7

    .line 203
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/CameraISP;->mQ3aDataCallback:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 204
    const-string v7, "CameraISP"

    const-string v8, "enableISPDataCallback mQ3aDataCallback is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 205
    goto :goto_0

    .line 208
    :cond_1
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/CameraISP;->mbEnableISP:Z

    if-ne p1, v8, :cond_2

    .line 210
    const-string v8, "CameraISP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableISPDataCallback bEnable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ignore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_2
    const-string v7, "CameraISP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableISPDataCallback bEnable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 221
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 222
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "setQ3aDataCallback"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 223
    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v8

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p1, :cond_4

    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraISP;->mQ3aDataCallback:Ljava/lang/Object;

    :goto_2
    aput-object v7, v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/CameraISP;->mbEnableISP:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    :goto_3
    const-string v7, "CameraISP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableISPDataCallback bEnable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 235
    goto/16 :goto_0

    .line 223
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "methods":[Ljava/lang/reflect/Method;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 221
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CameraISP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableISPDataCallback method Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/CameraISP;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/lenovo/scg/camera/CameraISP;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraISP;->sInstance:Lcom/lenovo/scg/camera/CameraISP;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/CameraISP;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/CameraISP;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/CameraISP;->sInstance:Lcom/lenovo/scg/camera/CameraISP;

    .line 35
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraISP;->sInstance:Lcom/lenovo/scg/camera/CameraISP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initQ3aDataCallback()V
    .locals 9

    .prologue
    .line 177
    const-string v6, "CameraISP"

    const-string v7, "initQ3aDataCallback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v6, :cond_1

    .line 179
    const-string v6, "CameraISP"

    const-string v7, "initQ3aDataCallback  will return, because mCamera=null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 183
    .local v3, "innerClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 184
    .local v4, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Q3aDataCallback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 185
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/Class;

    .line 186
    .local v1, "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    aput-object v4, v1, v6

    .line 187
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/lenovo/scg/camera/CameraISP$ProxyQ3aDataCallback;-><init>(Lcom/lenovo/scg/camera/CameraISP;Lcom/lenovo/scg/camera/CameraISP$1;)V

    invoke-static {v6, v1, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/CameraISP;->mQ3aDataCallback:Ljava/lang/Object;

    .line 189
    const-string v6, "CameraISP"

    const-string v7, "initQ3aDataCallback ok"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v1    # "classArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public emptyCameraDevice()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 76
    return-void
.end method

.method public getFlashOpenStatus()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "CameraISP"

    const-string v1, "getFlashOpenStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    if-nez v0, :cond_0

    .line 133
    const-string v0, "CameraISP"

    const-string v1, "getFlashOpenStatus mbRuning error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbFlashOnFlag:Z

    goto :goto_0
.end method

.method public isRuning()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    return v0
.end method

.method public setCameraDevice(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 4
    .param p1, "camera"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 56
    const-string v1, "CameraISP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCameraDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraISP;->mCamera:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 58
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraISP;->initQ3aDataCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/CameraISP;->enableISPDataCallback(Z)Z

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setOnISPListener(Lcom/lenovo/scg/camera/CameraISP$onISPListener;)V
    .locals 2
    .param p1, "l"    # Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    .prologue
    .line 47
    const-string v0, "CameraISP"

    const-string/jumbo v1, "setOnISPListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    if-ne v0, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraISP;->mOnISPListener:Lcom/lenovo/scg/camera/CameraISP$onISPListener;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v0, "CameraISP"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    .line 100
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/CameraISP;->enableISPDataCallback(Z)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, "CameraISP"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraISP;->mbRuning:Z

    .line 89
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/CameraISP;->enableISPDataCallback(Z)Z

    goto :goto_0
.end method
