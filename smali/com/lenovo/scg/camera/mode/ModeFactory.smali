.class public Lcom/lenovo/scg/camera/mode/ModeFactory;
.super Ljava/lang/Object;
.source "ModeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeFactory"

.field private static mMapMode2Class:Ljava/util/HashMap;
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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/lenovo/scg/camera/mode/ModeFactory$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/mode/ModeFactory$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory;->mMapMode2Class:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static createMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)Lcom/lenovo/scg/camera/mode/CaptureMode;
    .locals 7
    .param p0, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 116
    const-string v4, "ModeFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "captureMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory;->mMapMode2Class:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 120
    .local v3, "kClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/camera/mode/CaptureMode;>;"
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-object v1, v0

    .line 121
    check-cast p1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .end local p1    # "para":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setModeController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    .line 122
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 123
    invoke-static {p0}, Lcom/lenovo/scg/camera/mode/ModeFactory;->isSmartMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setIsSmart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    if-nez v1, :cond_0

    .line 130
    const-string v4, "ModeFactory.createMode error,mode=null"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrPrintStackTraces()V

    .line 133
    :cond_0
    return-object v1

    .line 124
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ModeFactory.createMode"

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static isSmartMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z
    .locals 1
    .param p0, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 137
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p0, v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
