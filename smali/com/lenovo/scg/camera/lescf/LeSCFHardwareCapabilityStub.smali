.class public Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;
.super Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;
.source "LeSCFHardwareCapabilityStub.java"


# static fields
.field public static final KEY_MODE_ALL:Ljava/lang/String; = "all"

.field public static final KEY_MODE_BURST:Ljava/lang/String; = "burst"

.field public static final KEY_MODE_CONTINUOUS:Ljava/lang/String; = "continous"

.field public static final KEY_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final KEY_MODE_LOWLIGHT:Ljava/lang/String; = "lowlit"

.field public static final KEY_MODE_ONCE:Ljava/lang/String; = "once"

.field public static final KEY_MODE_PANORAMA:Ljava/lang/String; = "panorama"

.field private static final TAG:Ljava/lang/String; = "[lescf_app] LeSCFZsdCapabilityStub"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseCapabilityStub;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBurstLengthMax()I
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v1, "nBurstLengthMax"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "m":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getPIPSupport()Z
    .locals 2

    .prologue
    .line 57
    const-string v1, "b2PIP"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "cap":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSnapWhenFocusingSupport()Z
    .locals 2

    .prologue
    .line 74
    const-string v1, "bSnapWhenFocusing"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "cap":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSupportZSDbyMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, "bZSD"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "cap":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    .line 41
    :cond_1
    const-string v1, "bNoZSD"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFHardwareCapabilityStub;->getCapability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v1

    goto :goto_0
.end method
