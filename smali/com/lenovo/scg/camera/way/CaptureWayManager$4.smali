.class final Lcom/lenovo/scg/camera/way/CaptureWayManager$4;
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
        "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 151
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method
