.class final Lcom/lenovo/scg/camera/mode/CaptureMode$1;
.super Ljava/util/HashMap;
.source "CaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/CaptureMode;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 227
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "night_portrait"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "hdr"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string v1, "lowlit"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method
