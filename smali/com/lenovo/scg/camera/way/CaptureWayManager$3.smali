.class final Lcom/lenovo/scg/camera/way/CaptureWayManager$3;
.super Ljava/util/HashMap;
.source "CaptureWayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/CaptureWayManager;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 138
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method
