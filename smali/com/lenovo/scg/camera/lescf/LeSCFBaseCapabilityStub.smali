.class public abstract Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;
.source "LeSCFBaseCapabilityStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;
    }
.end annotation


# static fields
.field private static final DEF_SPLIT_HIGH:Ljava/lang/String; = ","

.field private static final DEF_SPLIT_LOW:Ljava/lang/String; = ":"

.field protected static final KEY_CAPABILITY_BURST_MAX_LENGTH:Ljava/lang/String; = "nBurstLengthMax"

.field protected static final KEY_CAPABILITY_MODE_RESTART_PREVIEW:Ljava/lang/String; = "bModeRestartPreview"

.field protected static final KEY_CAPABILITY_NO_ZSD:Ljava/lang/String; = "bNoZSD"

.field protected static final KEY_CAPABILITY_PIP:Ljava/lang/String; = "b2PIP"

.field protected static final KEY_CAPABILITY_SNAP_WHEN_FOCUSING:Ljava/lang/String; = "bSnapWhenFocusing"

.field protected static final KEY_CAPABILITY_ZSD:Ljava/lang/String; = "bZSD"

.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFBaseCapabilityStub"


# instance fields
.field private bInited:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->bInited:Z

    .line 45
    return-void
.end method

.method private findCapability(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 116
    :goto_0
    return-object v1

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->isCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 116
    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 81
    .local v5, "param":Landroid/hardware/Camera$Parameters;
    if-nez v5, :cond_1

    .line 82
    const-string v8, "[lescf_app] LeSCFBaseCapabilityStub"

    const-string/jumbo v9, "param == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v8, "lenovo_hardware_ability"

    invoke-virtual {v5, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "strCapability":Ljava/lang/String;
    const-string v8, "[lescf_app] LeSCFBaseCapabilityStub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hardware Capability:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    .line 89
    const-string v8, "[lescf_app] LeSCFBaseCapabilityStub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "strCapability:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v7, :cond_0

    .line 93
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "params":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 96
    .local v4, "p":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 95
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->mList:Ljava/util/List;

    new-instance v9, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;

    const/4 v10, 0x0

    aget-object v10, v2, v10

    aget-object v11, v2, v12

    invoke-direct {v9, p0, v10, v11}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub$CapabilityItem;-><init>(Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v2    # "items":[Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/String;
    :cond_4
    iput-boolean v12, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->bInited:Z

    goto :goto_0
.end method


# virtual methods
.method protected getCapability(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->bInited:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->init()V

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;->findCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
