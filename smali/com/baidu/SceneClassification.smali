.class public Lcom/baidu/SceneClassification;
.super Ljava/lang/Object;
.source "SceneClassification.java"


# static fields
.field private static final MEAN_PATH:Ljava/lang/String; = "mean/sdk.mean.data.64"

.field private static final MODE_PATH:Ljava/lang/String; = "model/sdk.64.1119.model.bin"


# instance fields
.field private mInitialized:Z

.field private mSupportedNeon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 29
    const-string/jumbo v1, "sceneclassify"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "IDLSDK"

    const-string v2, "load sceneclassify library error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    move v0, v1

    .line 40
    .local v0, "highSdkVersion":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/SceneClassification;->checkNeonSupport()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/SceneClassification;->mSupportedNeon:Z

    .line 42
    const-string v1, "IDLSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Is the device supports neon? -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/baidu/SceneClassification;->mSupportedNeon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .end local v0    # "highSdkVersion":Z
    :cond_0
    move v0, v2

    .line 39
    goto :goto_0

    .restart local v0    # "highSdkVersion":Z
    :cond_1
    move v1, v2

    .line 40
    goto :goto_1
.end method

.method private native cdnnScoreRGB([BI)[F
.end method

.method private native checkNeonSupport()I
.end method

.method private native sceneModelInit(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native sceneModelRelease()I
.end method


# virtual methods
.method public cdnnScoreRGB([B)[F
    .locals 2
    .param p1, "imageData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mSupportedNeon:Z

    if-nez v0, :cond_0

    .line 60
    const-string v0, "IDLSDK"

    const-string v1, "The device doesn\'t support neon."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The device doesn\'t support neon."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mInitialized:Z

    if-nez v0, :cond_1

    .line 64
    const-string v0, "IDLSDK"

    const-string v1, "The scene module has initialized failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The scene module has initialized failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    const/16 v0, 0x24c0

    invoke-direct {p0, p1, v0}, Lcom/baidu/SceneClassification;->cdnnScoreRGB([BI)[F

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mInitialized:Z

    return v0
.end method

.method public isSupportedNeon()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mSupportedNeon:Z

    return v0
.end method

.method public sceneModeInit(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mSupportedNeon:Z

    if-nez v0, :cond_0

    .line 47
    const-string v0, "IDLSDK"

    const-string v1, "The device doesn\'t support neon."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "IDLSDK"

    const-string v1, "Please don\'t initialize twice."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_1
    const-string/jumbo v0, "model/sdk.64.1119.model.bin"

    const-string/jumbo v1, "mean/sdk.mean.data.64"

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/SceneClassification;->sceneModelInit(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/SceneClassification;->mInitialized:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public sceneModeRelease()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/baidu/SceneClassification;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/baidu/SceneClassification;->sceneModelRelease()I

    .line 75
    :cond_0
    return-void
.end method
