.class final Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;
.super Ljava/util/HashMap;
.source "CaptureWayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/lenovo/scg/camera/way/CaptureWay;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->EMPTY:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/SmileWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/TimerWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/TouchWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/VsignWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/WaveWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/BlinkWay;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-class v1, Lcom/lenovo/scg/camera/way/SmileAS;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
