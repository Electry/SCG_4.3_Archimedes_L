.class final Lcom/lenovo/scg/camera/mode/ModeFactory$1;
.super Ljava/util/HashMap;
.source "ModeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ModeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/lenovo/scg/camera/mode/CaptureMode;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/NormalMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/HDRMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/HDRMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/NightMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/NightMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/RewindMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/QrcodeMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/Panorama360Mode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/PanoramaMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/LongExposureMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/GuidMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/FrontCameraMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/SmartMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/PortraitMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/LandScapeMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/ImageCaptureMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/HDRMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/RealNightMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-class v1, Lcom/lenovo/scg/camera/mode/DynamicNightMode;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
