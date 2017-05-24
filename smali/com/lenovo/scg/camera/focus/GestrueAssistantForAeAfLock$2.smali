.class final Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;
.super Ljava/util/HashMap;
.source "GestrueAssistantForAeAfLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
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

    .line 425
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 427
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    return-void
.end method
